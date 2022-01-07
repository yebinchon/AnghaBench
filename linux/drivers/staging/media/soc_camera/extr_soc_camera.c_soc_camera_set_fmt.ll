; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*)* }

@.str = private unnamed_addr constant [24 x i8] c"S_FMT(%c%c%c%c, %ux%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Host driver hasn't set up current format correctly!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"set width: %d height: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @soc_camera_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %11)
  store %struct.soc_camera_host* %12, %struct.soc_camera_host** %6, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %7, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pixfmtstr(i64 %21)
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %32 = call i32 @soc_camera_try_fmt(%struct.soc_camera_device* %30, %struct.v4l2_format* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %123

37:                                               ; preds = %2
  %38 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %39 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_format*)** %41, align 8
  %43 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %45 = call i32 %42(%struct.soc_camera_device* %43, %struct.v4l2_format* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %123

50:                                               ; preds = %37
  %51 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %52 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %51, i32 0, i32 7
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %57 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %56, i32 0, i32 7
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %55, %50
  %68 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %69 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %123

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %80 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %85 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %90 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %95 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %100 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %105 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %107 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %110 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %113 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %117 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %119, align 8
  %121 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %122 = call i32 %120(%struct.soc_camera_device* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %75, %67, %48, %35
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @pixfmtstr(i64) #1

declare dso_local i32 @soc_camera_try_fmt(%struct.soc_camera_device*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
