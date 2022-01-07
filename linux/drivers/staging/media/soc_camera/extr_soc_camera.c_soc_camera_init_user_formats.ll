; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_init_user_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_init_user_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)* }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Found %d supported formats.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_init_user_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_init_user_formats(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.soc_camera_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %12 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %14 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 2
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %20, i32* %19, align 4
  br label %21

21:                                               ; preds = %28, %1
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load i32, i32* @pad, align 4
  %24 = load i32, i32* @enum_mbus_code, align 4
  %25 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %22, i32 %23, i32 %24, i32* null, %struct.v4l2_subdev_mbus_code_enum* %10)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %36 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)** %38, align 8
  %40 = icmp ne i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %7, align 4
  br label %69

43:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %50 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)** %52, align 8
  %54 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %53(%struct.soc_camera_device* %54, i32 %55, %struct.TYPE_7__* null)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %185

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %44

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %185

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @array_size(i32 %76, i32 4)
  %78 = call %struct.TYPE_7__* @vmalloc(i32 %77)
  %79 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %80 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %79, i32 0, i32 1
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %80, align 8
  %81 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %82 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %185

88:                                               ; preds = %75
  %89 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %90 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %166, %88
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %169

98:                                               ; preds = %94
  %99 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %100 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)** %102, align 8
  %104 = icmp ne i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)* %103, null
  br i1 %104, label %143, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %109 = load i32, i32* @pad, align 4
  %110 = load i32, i32* @enum_mbus_code, align 4
  %111 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %108, i32 %109, i32 %110, i32* null, %struct.v4l2_subdev_mbus_code_enum* %10)
  %112 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @soc_mbus_get_fmtdesc(i32 %113)
  %115 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %116 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i64 %114, i64* %121, align 8
  %122 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %123 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %105
  %132 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %135 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %133, i32* %141, align 8
  br label %142

142:                                              ; preds = %131, %105
  br label %165

143:                                              ; preds = %98
  %144 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %145 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_7__*)** %147, align 8
  %149 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %152 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = call i32 %148(%struct.soc_camera_device* %149, i32 %150, %struct.TYPE_7__* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %179

161:                                              ; preds = %143
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %161, %142
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %94

169:                                              ; preds = %94
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %172 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %174 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 0
  %177 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %178 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %177, i32 0, i32 2
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %178, align 8
  store i32 0, i32* %2, align 4
  br label %185

179:                                              ; preds = %160
  %180 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %181 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = call i32 @vfree(%struct.TYPE_7__* %182)
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %179, %169, %85, %72, %59
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local %struct.TYPE_7__* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @soc_mbus_get_fmtdesc(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
