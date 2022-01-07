; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { i32, i32, i32 }

@ST_SUSPENDED = common dso_local global i32 0, align 4
@ST_POWERED = common dso_local global i32 0, align 4
@ST_STREAMING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @mipi_csis_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_pm_resume(%struct.device* %0, i32 %1) #0 {
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
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %19 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ST_SUSPENDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %65

25:                                               ; preds = %17, %2
  %26 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %27 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ST_POWERED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %25
  %33 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %34 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_enable(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %65

40:                                               ; preds = %32
  %41 = load i32, i32* @ST_POWERED, align 4
  %42 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %43 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %47 = call i32 @mipi_csis_clk_enable(%struct.csi_state* %46)
  br label %48

48:                                               ; preds = %40, %25
  %49 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %50 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ST_STREAMING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %57 = call i32 @mipi_csis_start_stream(%struct.csi_state* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* @ST_SUSPENDED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %62 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %39, %24
  %66 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %67 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  br label %75

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  ret i32 %76
}

declare dso_local %struct.v4l2_subdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mipi_csis_clk_enable(%struct.csi_state*) #1

declare dso_local i32 @mipi_csis_start_stream(%struct.csi_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
