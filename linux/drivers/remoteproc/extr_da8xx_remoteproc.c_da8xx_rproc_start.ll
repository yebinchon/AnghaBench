; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.da8xx_rproc = type { i32, %struct.reset_control*, %struct.clk* }
%struct.reset_control = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid boot address: must be aligned to 1KB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"clk_prepare_enable() failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"reset_control_deassert() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @da8xx_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da8xx_rproc*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.reset_control*, align 8
  %8 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %9 = load %struct.rproc*, %struct.rproc** %3, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.rproc*, %struct.rproc** %3, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.da8xx_rproc*
  store %struct.da8xx_rproc* %16, %struct.da8xx_rproc** %5, align 8
  %17 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %18 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %17, i32 0, i32 2
  %19 = load %struct.clk*, %struct.clk** %18, align 8
  store %struct.clk* %19, %struct.clk** %6, align 8
  %20 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %21 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %20, i32 0, i32 1
  %22 = load %struct.reset_control*, %struct.reset_control** %21, align 8
  store %struct.reset_control* %22, %struct.reset_control** %7, align 8
  %23 = load %struct.rproc*, %struct.rproc** %3, align 8
  %24 = getelementptr inbounds %struct.rproc, %struct.rproc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1023
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %1
  %34 = load %struct.rproc*, %struct.rproc** %3, align 8
  %35 = getelementptr inbounds %struct.rproc, %struct.rproc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %38 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @writel(i32 %36, i32 %39)
  %41 = load %struct.clk*, %struct.clk** %6, align 8
  %42 = call i32 @clk_prepare_enable(%struct.clk* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %33
  %51 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %52 = call i32 @reset_control_deassert(%struct.reset_control* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.clk*, %struct.clk** %6, align 8
  %60 = call i32 @clk_disable_unprepare(%struct.clk* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %55, %45, %28
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
