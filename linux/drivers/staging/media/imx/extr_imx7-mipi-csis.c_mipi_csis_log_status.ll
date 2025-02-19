; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { i32, i32, i64 }

@ST_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @mipi_csis_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.csi_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %4)
  store %struct.csi_state* %5, %struct.csi_state** %3, align 8
  %6 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %7 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %10 = call i32 @mipi_csis_log_counters(%struct.csi_state* %9, i32 1)
  %11 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %12 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %17 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ST_POWERED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %24 = call i32 @mipi_csis_dump_regs(%struct.csi_state* %23)
  br label %25

25:                                               ; preds = %22, %15, %1
  %26 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %27 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  ret i32 0
}

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mipi_csis_log_counters(%struct.csi_state*, i32) #1

declare dso_local i32 @mipi_csis_dump_regs(%struct.csi_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
