; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { i32, i32, i32 }

@ST_POWERED = common dso_local global i32 0, align 4
@ST_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @mipi_csis_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_pm_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.csi_state*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.v4l2_subdev* @dev_get_drvdata(%struct.device* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %10)
  store %struct.csi_state* %11, %struct.csi_state** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %13 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %16 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ST_POWERED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %23 = call i32 @mipi_csis_stop_stream(%struct.csi_state* %22)
  %24 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %25 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_disable(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %33 = call i32 @mipi_csis_clk_disable(%struct.csi_state* %32)
  %34 = load i32, i32* @ST_POWERED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %37 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ST_SUSPENDED, align 4
  %44 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %45 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %31
  br label %49

49:                                               ; preds = %48, %2
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %52 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  ret i32 %61
}

declare dso_local %struct.v4l2_subdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mipi_csis_stop_stream(%struct.csi_state*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mipi_csis_clk_disable(%struct.csi_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
