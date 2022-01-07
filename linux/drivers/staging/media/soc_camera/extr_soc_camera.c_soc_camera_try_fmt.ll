; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i8*, i32, i8*, i32 }
%struct.soc_camera_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* }
%struct.soc_camera_format_xlate = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"TRY_FMT(%c%c%c%c, %ux%u)\0A\00", align 1
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@SOCAM_HOST_CAP_STRIDE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @soc_camera_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_try_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %11 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %12)
  store %struct.soc_camera_host* %13, %struct.soc_camera_host** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %8, align 8
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pixfmtstr(i64 %22)
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %38 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SOCAM_HOST_CAP_STRIDE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 3
  store i8* null, i8** %45, align 8
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %36, %2
  %49 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %50 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_format*)** %52, align 8
  %54 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %56 = call i32 %53(%struct.soc_camera_device* %54, %struct.v4l2_format* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %116

61:                                               ; preds = %48
  %62 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %62, i64 %65)
  store %struct.soc_camera_format_xlate* %66, %struct.soc_camera_format_xlate** %7, align 8
  %67 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %68 = icmp ne %struct.soc_camera_format_xlate* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %116

72:                                               ; preds = %61
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %77 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @soc_mbus_bytes_per_line(i32 %75, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %116

84:                                               ; preds = %72
  %85 = load i32, i32* @u32, align 4
  %86 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @max_t(i32 %85, i8* %88, i32 %89)
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %94 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @soc_mbus_image_size(i32 %95, i8* %98, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %84
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %116

107:                                              ; preds = %84
  %108 = load i32, i32* @u32, align 4
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i8* @max_t(i32 %108, i8* %111, i32 %112)
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %107, %105, %82, %69, %59
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pixfmtstr(i64) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i64) #1

declare dso_local i32 @soc_mbus_bytes_per_line(i32, i32) #1

declare dso_local i8* @max_t(i32, i8*, i32) #1

declare dso_local i32 @soc_mbus_image_size(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
