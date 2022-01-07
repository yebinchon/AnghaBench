; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_configure_streams_validate_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_configure_streams_validate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i32 }
%struct.gb_camera_configure_streams_response = type { i32, %struct.gb_camera_stream_config_response*, i64* }
%struct.gb_camera_stream_config_response = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"response padding != 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"got #streams %u > request %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"stream #%u padding != 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, %struct.gb_camera_configure_streams_response*, i32)* @gb_camera_configure_streams_validate_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_configure_streams_validate_response(%struct.gb_camera* %0, %struct.gb_camera_configure_streams_response* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_camera*, align 8
  %6 = alloca %struct.gb_camera_configure_streams_response*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_camera_stream_config_response*, align 8
  store %struct.gb_camera* %0, %struct.gb_camera** %5, align 8
  store %struct.gb_camera_configure_streams_response* %1, %struct.gb_camera_configure_streams_response** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %11 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %18 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16, %3
  %24 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %25 = call i32 (%struct.gb_camera*, i8*, ...) @gcam_err(%struct.gb_camera* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %72

28:                                               ; preds = %16
  %29 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %30 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %36 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %37 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (%struct.gb_camera*, i8*, ...) @gcam_err(%struct.gb_camera* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %72

43:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %47 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %52 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %51, i32 0, i32 1
  %53 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %53, i64 %55
  store %struct.gb_camera_stream_config_response* %56, %struct.gb_camera_stream_config_response** %9, align 8
  %57 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %9, align 8
  %58 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.gb_camera*, i8*, ...) @gcam_err(%struct.gb_camera* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %44

71:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %61, %34, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
