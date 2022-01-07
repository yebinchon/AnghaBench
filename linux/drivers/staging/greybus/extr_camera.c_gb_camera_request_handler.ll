; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.gb_message*, i32, i32 }
%struct.gb_message = type { i32, %struct.gb_camera_metadata_request* }
%struct.gb_camera_metadata_request = type { i32, i32, i32 }
%struct.gb_camera = type { i32 }

@GB_CAMERA_TYPE_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unsupported unsolicited event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Wrong event size received (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"received metadata for request %u, frame %u, stream %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_camera_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_camera*, align 8
  %5 = alloca %struct.gb_camera_metadata_request*, align 8
  %6 = alloca %struct.gb_message*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %7 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %8 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gb_camera* @gb_connection_get_data(i32 %9)
  store %struct.gb_camera* %10, %struct.gb_camera** %4, align 8
  %11 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %12 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GB_CAMERA_TYPE_METADATA, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %18 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %19 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.gb_camera*, i8*, i32, ...) @gcam_err(%struct.gb_camera* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %26 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %25, i32 0, i32 0
  %27 = load %struct.gb_message*, %struct.gb_message** %26, align 8
  store %struct.gb_message* %27, %struct.gb_message** %6, align 8
  %28 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %29 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 12
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %35 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %36 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.gb_camera*, i8*, i32, ...) @gcam_err(%struct.gb_camera* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 12)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %24
  %42 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %43 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %42, i32 0, i32 1
  %44 = load %struct.gb_camera_metadata_request*, %struct.gb_camera_metadata_request** %43, align 8
  store %struct.gb_camera_metadata_request* %44, %struct.gb_camera_metadata_request** %5, align 8
  %45 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %46 = load %struct.gb_camera_metadata_request*, %struct.gb_camera_metadata_request** %5, align 8
  %47 = getelementptr inbounds %struct.gb_camera_metadata_request, %struct.gb_camera_metadata_request* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gb_camera_metadata_request*, %struct.gb_camera_metadata_request** %5, align 8
  %50 = getelementptr inbounds %struct.gb_camera_metadata_request, %struct.gb_camera_metadata_request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gb_camera_metadata_request*, %struct.gb_camera_metadata_request** %5, align 8
  %53 = getelementptr inbounds %struct.gb_camera_metadata_request, %struct.gb_camera_metadata_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gcam_dbg(%struct.gb_camera* %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %33, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.gb_camera* @gb_connection_get_data(i32) #1

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*, i32, ...) #1

declare dso_local i32 @gcam_dbg(%struct.gb_camera*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
