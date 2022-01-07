; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_diu_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_UNDRUN = common dso_local global i32 0, align 4
@CONFIG_NOT_COHERENT_CACHE = common dso_local global i32 0, align 4
@INT_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_diu_data*)* @fsl_diu_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_diu_enable_interrupts(%struct.fsl_diu_data* %0) #0 {
  %2 = alloca %struct.fsl_diu_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_diu_data* %0, %struct.fsl_diu_data** %2, align 8
  %4 = load i32, i32* @INT_UNDRUN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @CONFIG_NOT_COHERENT_CACHE, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @INT_VSYNC, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @clrbits32(i32* %16, i32 %17)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @clrbits32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
