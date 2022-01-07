; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i64, i64, %struct.file*, i32, i32 }
%struct.v4l2_selection = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.soc_camera_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @soc_camera_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  %9 = alloca %struct.soc_camera_host*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.soc_camera_device*, %struct.soc_camera_device** %12, align 8
  store %struct.soc_camera_device* %13, %struct.soc_camera_device** %8, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %16)
  store %struct.soc_camera_host* %17, %struct.soc_camera_host** %9, align 8
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %154

38:                                               ; preds = %29, %23
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 3
  %47 = call i64 @vb2_is_streaming(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %51 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %60 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %49
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %154

70:                                               ; preds = %58, %44
  %71 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %72 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %71, i32 0, i32 2
  %73 = load %struct.file*, %struct.file** %72, align 8
  %74 = icmp ne %struct.file* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %77 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %76, i32 0, i32 2
  %78 = load %struct.file*, %struct.file** %77, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = icmp ne %struct.file* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %154

84:                                               ; preds = %75, %70
  br label %85

85:                                               ; preds = %84, %38
  %86 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %93 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %92, i32 0, i32 3
  %94 = call i64 @vb2_is_streaming(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %98 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)** %100, align 8
  %102 = icmp ne i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %105 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)** %107, align 8
  %109 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %110 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %111 = call i32 %108(%struct.soc_camera_device* %109, %struct.v4l2_selection* %110)
  store i32 %111, i32* %10, align 4
  br label %121

112:                                              ; preds = %96, %91, %85
  %113 = load %struct.soc_camera_host*, %struct.soc_camera_host** %9, align 8
  %114 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_selection*)** %116, align 8
  %118 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %119 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %120 = call i32 %117(%struct.soc_camera_device* %118, %struct.v4l2_selection* %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %112, %103
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %152, label %124

124:                                              ; preds = %121
  %125 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %126 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %132 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %136 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %142 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %144 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %143, i32 0, i32 2
  %145 = load %struct.file*, %struct.file** %144, align 8
  %146 = icmp ne %struct.file* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %130
  %148 = load %struct.file*, %struct.file** %5, align 8
  %149 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %150 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %149, i32 0, i32 2
  store %struct.file* %148, %struct.file** %150, align 8
  br label %151

151:                                              ; preds = %147, %130
  br label %152

152:                                              ; preds = %151, %124, %121
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %81, %67, %35
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
