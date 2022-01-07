; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ST_SUSPENDED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ST_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mipi_csis_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csi_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %8)
  store %struct.csi_state* %9, %struct.csi_state** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %14 = call i32 @mipi_csis_clear_counters(%struct.csi_state* %13)
  %15 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %16 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_get_sync(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %24 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_put_noidle(i32* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %12
  %30 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %31 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @core, align 4
  %34 = load i32, i32* @s_power, align 4
  %35 = call i32 @v4l2_subdev_call(i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %121

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %43 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %49 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ST_SUSPENDED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %107

57:                                               ; preds = %47
  %58 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %59 = call i32 @mipi_csis_start_stream(%struct.csi_state* %58)
  %60 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %61 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @video, align 4
  %64 = load i32, i32* @s_stream, align 4
  %65 = call i32 @v4l2_subdev_call(i32 %62, i32 %63, i32 %64, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %107

69:                                               ; preds = %57
  %70 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %71 = call i32 @mipi_csis_log_counters(%struct.csi_state* %70, i32 1)
  %72 = load i32, i32* @ST_STREAMING, align 4
  %73 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %74 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %106

77:                                               ; preds = %41
  %78 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %79 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @video, align 4
  %82 = load i32, i32* @s_stream, align 4
  %83 = call i32 @v4l2_subdev_call(i32 %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %85 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @core, align 4
  %88 = load i32, i32* @s_power, align 4
  %89 = call i32 @v4l2_subdev_call(i32 %86, i32 %87, i32 %88, i32 1)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %91 = call i32 @mipi_csis_stop_stream(%struct.csi_state* %90)
  %92 = load i32, i32* @ST_STREAMING, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %95 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %99 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %77
  %103 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %104 = call i32 @mipi_csis_log_counters(%struct.csi_state* %103, i32 1)
  br label %105

105:                                              ; preds = %102, %77
  br label %106

106:                                              ; preds = %105, %69
  br label %107

107:                                              ; preds = %106, %68, %54
  %108 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %109 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %108, i32 0, i32 2
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %115 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @pm_runtime_put(i32* %117)
  br label %119

119:                                              ; preds = %113, %107
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %38, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mipi_csis_clear_counters(%struct.csi_state*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mipi_csis_start_stream(%struct.csi_state*) #1

declare dso_local i32 @mipi_csis_log_counters(%struct.csi_state*, i32) #1

declare dso_local i32 @mipi_csis_stop_stream(%struct.csi_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
