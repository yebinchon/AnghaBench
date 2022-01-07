; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_host = type { i32 }
%struct.soc_camera_device = type { i32, i32*, i32 }
%struct.soc_camera_desc = type { %struct.soc_camera_host_desc }
%struct.soc_camera_host_desc = type { i32 (%struct.soc_camera_device.0*)*, i32 (%struct.soc_camera_device.1*)*, i64, i64 }
%struct.soc_camera_device.0 = type opaque
%struct.soc_camera_device.1 = type opaque
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Probing %s\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_host*, %struct.soc_camera_device*)* @soc_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_probe(%struct.soc_camera_host* %0, %struct.soc_camera_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca %struct.soc_camera_desc*, align 8
  %7 = alloca %struct.soc_camera_host_desc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.soc_camera_host* %0, %struct.soc_camera_host** %4, align 8
  store %struct.soc_camera_device* %1, %struct.soc_camera_device** %5, align 8
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %11 = call %struct.soc_camera_desc* @to_soc_camera_desc(%struct.soc_camera_device* %10)
  store %struct.soc_camera_desc* %11, %struct.soc_camera_desc** %6, align 8
  %12 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %6, align 8
  %13 = getelementptr inbounds %struct.soc_camera_desc, %struct.soc_camera_desc* %12, i32 0, i32 0
  store %struct.soc_camera_host_desc* %13, %struct.soc_camera_host_desc** %7, align 8
  store %struct.device* null, %struct.device** %8, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_name(i32 %19)
  %21 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %23 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %22, i32 0, i32 0
  %24 = call i32 @v4l2_ctrl_handler_init(i32* %23, i32 16)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %182

29:                                               ; preds = %2
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %31 = call i32 @video_dev_create(%struct.soc_camera_device* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %177

35:                                               ; preds = %29
  %36 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %37 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %42 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %6, align 8
  %43 = call i32 @soc_camera_i2c_init(%struct.soc_camera_device* %41, %struct.soc_camera_desc* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %164

52:                                               ; preds = %46, %40
  br label %125

53:                                               ; preds = %35
  %54 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %55 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %54, i32 0, i32 0
  %56 = load i32 (%struct.soc_camera_device.0*)*, i32 (%struct.soc_camera_device.0*)** %55, align 8
  %57 = icmp ne i32 (%struct.soc_camera_device.0*)* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %60 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %59, i32 0, i32 1
  %61 = load i32 (%struct.soc_camera_device.1*)*, i32 (%struct.soc_camera_device.1*)** %60, align 8
  %62 = icmp ne i32 (%struct.soc_camera_device.1*)* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %164

66:                                               ; preds = %58
  %67 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %68 = call i32 @soc_camera_clock_start(%struct.soc_camera_host* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %164

72:                                               ; preds = %66
  %73 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %74 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %79 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @request_module(i64 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %84 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %83, i32 0, i32 0
  %85 = load i32 (%struct.soc_camera_device.0*)*, i32 (%struct.soc_camera_device.0*)** %84, align 8
  %86 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %87 = bitcast %struct.soc_camera_device* %86 to %struct.soc_camera_device.0*
  %88 = call i32 %85(%struct.soc_camera_device.0* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %160

92:                                               ; preds = %82
  %93 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %94 = call %struct.device* @to_soc_camera_control(%struct.soc_camera_device* %93)
  store %struct.device* %94, %struct.device** %8, align 8
  %95 = load %struct.device*, %struct.device** %8, align 8
  %96 = icmp ne %struct.device* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %8, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = icmp ne %struct.TYPE_2__* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = call i32 @dev_get_drvdata(%struct.device* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @try_module_get(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %106, %102, %97, %92
  %115 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %116 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %115, i32 0, i32 1
  %117 = load i32 (%struct.soc_camera_device.1*)*, i32 (%struct.soc_camera_device.1*)** %116, align 8
  %118 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %119 = bitcast %struct.soc_camera_device* %118 to %struct.soc_camera_device.1*
  %120 = call i32 %117(%struct.soc_camera_device.1* %119)
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %159

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %52
  %126 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %127 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %126, i32 0, i32 0
  %128 = call i32 @mutex_lock(i32* %127)
  %129 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %130 = call i32 @soc_camera_probe_finish(%struct.soc_camera_device* %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %132 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %138

137:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %182

138:                                              ; preds = %136
  %139 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %140 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %145 = call i32 @soc_camera_i2c_free(%struct.soc_camera_device* %144)
  br label %163

146:                                              ; preds = %138
  %147 = load %struct.soc_camera_host_desc*, %struct.soc_camera_host_desc** %7, align 8
  %148 = getelementptr inbounds %struct.soc_camera_host_desc, %struct.soc_camera_host_desc* %147, i32 0, i32 1
  %149 = load i32 (%struct.soc_camera_device.1*)*, i32 (%struct.soc_camera_device.1*)** %148, align 8
  %150 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %151 = bitcast %struct.soc_camera_device* %150 to %struct.soc_camera_device.1*
  %152 = call i32 %149(%struct.soc_camera_device.1* %151)
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = getelementptr inbounds %struct.device, %struct.device* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @module_put(i32 %157)
  br label %159

159:                                              ; preds = %146, %114
  br label %160

160:                                              ; preds = %159, %91
  %161 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %162 = call i32 @soc_camera_clock_stop(%struct.soc_camera_host* %161)
  br label %163

163:                                              ; preds = %160, %143
  br label %164

164:                                              ; preds = %163, %71, %63, %51
  %165 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %166 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %171 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @video_device_release(i32* %172)
  %174 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %175 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %174, i32 0, i32 1
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %169, %164
  br label %177

177:                                              ; preds = %176, %34
  %178 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %179 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %178, i32 0, i32 0
  %180 = call i32 @v4l2_ctrl_handler_free(i32* %179)
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %177, %137, %27
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.soc_camera_desc* @to_soc_camera_desc(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @video_dev_create(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_i2c_init(%struct.soc_camera_device*, %struct.soc_camera_desc*) #1

declare dso_local i32 @soc_camera_clock_start(%struct.soc_camera_host*) #1

declare dso_local i32 @request_module(i64) #1

declare dso_local %struct.device* @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc_camera_probe_finish(%struct.soc_camera_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @soc_camera_i2c_free(%struct.soc_camera_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @soc_camera_clock_stop(%struct.soc_camera_host*) #1

declare dso_local i32 @video_device_release(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
