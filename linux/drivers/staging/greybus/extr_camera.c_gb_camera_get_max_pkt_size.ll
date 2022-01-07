; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_get_max_pkt_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_get_max_pkt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i32 }
%struct.gb_camera_configure_streams_response = type { i32, %struct.gb_camera_stream_config_response* }
%struct.gb_camera_stream_config_response = type { i32, i32, i32 }
%struct.gb_camera_fmt_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"unsupported greybus image format: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Stream %u: invalid zero maximum packet size\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Stream %u: maximum packet size mismatch (%u/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, %struct.gb_camera_configure_streams_response*)* @gb_camera_get_max_pkt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_get_max_pkt_size(%struct.gb_camera* %0, %struct.gb_camera_configure_streams_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_camera*, align 8
  %5 = alloca %struct.gb_camera_configure_streams_response*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_camera_stream_config_response*, align 8
  %9 = alloca %struct.gb_camera_fmt_info*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %4, align 8
  store %struct.gb_camera_configure_streams_response* %1, %struct.gb_camera_configure_streams_response** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %88, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %5, align 8
  %14 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %91

17:                                               ; preds = %11
  %18 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %5, align 8
  %19 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %18, i32 0, i32 1
  %20 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %20, i64 %22
  store %struct.gb_camera_stream_config_response* %23, %struct.gb_camera_stream_config_response** %8, align 8
  %24 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %25 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.gb_camera_fmt_info* @gb_camera_get_format_info(i32 %26)
  store %struct.gb_camera_fmt_info* %27, %struct.gb_camera_fmt_info** %9, align 8
  %28 = load %struct.gb_camera_fmt_info*, %struct.gb_camera_fmt_info** %9, align 8
  %29 = icmp ne %struct.gb_camera_fmt_info* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %17
  %31 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %32 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %33 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.gb_camera*, i8*, i32, ...) @gcam_err(%struct.gb_camera* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %93

38:                                               ; preds = %17
  %39 = load %struct.gb_camera_fmt_info*, %struct.gb_camera_fmt_info** %9, align 8
  %40 = getelementptr inbounds %struct.gb_camera_fmt_info, %struct.gb_camera_fmt_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %45 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.gb_camera*, i8*, i32, ...) @gcam_err(%struct.gb_camera* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %43
  br label %84

57:                                               ; preds = %38
  %58 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %59 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load %struct.gb_camera_fmt_info*, %struct.gb_camera_fmt_info** %9, align 8
  %63 = getelementptr inbounds %struct.gb_camera_fmt_info, %struct.gb_camera_fmt_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = sdiv i32 %65, 8
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %69 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %57
  %74 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %8, align 8
  %78 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.gb_camera*, i8*, i32, ...) @gcam_err(%struct.gb_camera* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76, i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %93

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83, %56
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @max(i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %11

91:                                               ; preds = %11
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %73, %50, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.gb_camera_fmt_info* @gb_camera_get_format_info(i32) #1

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
