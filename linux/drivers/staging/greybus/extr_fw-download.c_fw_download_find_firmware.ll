; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_find_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_find_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.gb_connection* }
%struct.TYPE_5__ = type { %struct.gb_fw_download_find_firmware_response* }
%struct.gb_fw_download_find_firmware_response = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.gb_fw_download_find_firmware_request* }
%struct.gb_fw_download_find_firmware_request = type { i64 }
%struct.gb_connection = type { i32 }
%struct.fw_download = type { i32 }
%struct.fw_request = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"illegal size of find firmware request (%zu != %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_FIRMWARE_TAG_MAX_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"firmware-tag is not null-terminated\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error allocating response\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"firmware size is %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @fw_download_find_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_download_find_firmware(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.fw_download*, align 8
  %6 = alloca %struct.gb_fw_download_find_firmware_request*, align 8
  %7 = alloca %struct.gb_fw_download_find_firmware_response*, align 8
  %8 = alloca %struct.fw_request*, align 8
  %9 = alloca i8*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %10 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %11 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %10, i32 0, i32 2
  %12 = load %struct.gb_connection*, %struct.gb_connection** %11, align 8
  store %struct.gb_connection* %12, %struct.gb_connection** %4, align 8
  %13 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %14 = call %struct.fw_download* @gb_connection_get_data(%struct.gb_connection* %13)
  store %struct.fw_download* %14, %struct.fw_download** %5, align 8
  %15 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %16 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %24 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %27 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i64 8)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %109

34:                                               ; preds = %1
  %35 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %36 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.gb_fw_download_find_firmware_request*, %struct.gb_fw_download_find_firmware_request** %38, align 8
  store %struct.gb_fw_download_find_firmware_request* %39, %struct.gb_fw_download_find_firmware_request** %6, align 8
  %40 = load %struct.gb_fw_download_find_firmware_request*, %struct.gb_fw_download_find_firmware_request** %6, align 8
  %41 = getelementptr inbounds %struct.gb_fw_download_find_firmware_request, %struct.gb_fw_download_find_firmware_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* @GB_FIRMWARE_TAG_MAX_SIZE, align 8
  %46 = call i64 @strnlen(i8* %44, i64 %45)
  %47 = load i64, i64* @GB_FIRMWARE_TAG_MAX_SIZE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %51 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %109

56:                                               ; preds = %34
  %57 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call %struct.fw_request* @find_firmware(%struct.fw_download* %57, i8* %58)
  store %struct.fw_request* %59, %struct.fw_request** %8, align 8
  %60 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %61 = call i64 @IS_ERR(%struct.fw_request* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %65 = call i32 @PTR_ERR(%struct.fw_request* %64)
  store i32 %65, i32* %2, align 4
  br label %109

66:                                               ; preds = %56
  %67 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %67, i32 8, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %73 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %77 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %78 = call i32 @free_firmware(%struct.fw_download* %76, %struct.fw_request* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %109

81:                                               ; preds = %66
  %82 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %83 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.gb_fw_download_find_firmware_response*, %struct.gb_fw_download_find_firmware_response** %85, align 8
  store %struct.gb_fw_download_find_firmware_response* %86, %struct.gb_fw_download_find_firmware_response** %7, align 8
  %87 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %88 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gb_fw_download_find_firmware_response*, %struct.gb_fw_download_find_firmware_response** %7, align 8
  %91 = getelementptr inbounds %struct.gb_fw_download_find_firmware_response, %struct.gb_fw_download_find_firmware_response* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %93 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load %struct.gb_fw_download_find_firmware_response*, %struct.gb_fw_download_find_firmware_response** %7, align 8
  %99 = getelementptr inbounds %struct.gb_fw_download_find_firmware_response, %struct.gb_fw_download_find_firmware_response* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %101 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %104 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %81, %71, %63, %49, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.fw_download* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local %struct.fw_request* @find_firmware(%struct.fw_download*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.fw_request*) #1

declare dso_local i32 @PTR_ERR(%struct.fw_request*) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i32, i32) #1

declare dso_local i32 @free_firmware(%struct.fw_download*, %struct.fw_request*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
