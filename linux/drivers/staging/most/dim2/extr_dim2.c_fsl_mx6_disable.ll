; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_fsl_mx6_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_fsl_mx6_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dim2_hdm = type { i64, i32, i32 }

@CLK_2048FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @fsl_mx6_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mx6_disable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dim2_hdm*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dim2_hdm* %5, %struct.dim2_hdm** %3, align 8
  %6 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %7 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CLK_2048FS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %13 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %18 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  ret void
}

declare dso_local %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
