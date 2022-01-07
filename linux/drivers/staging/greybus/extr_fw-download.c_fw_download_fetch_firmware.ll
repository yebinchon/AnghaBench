; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_fetch_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_fetch_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.gb_connection* }
%struct.TYPE_4__ = type { %struct.gb_fw_download_fetch_firmware_response* }
%struct.gb_fw_download_fetch_firmware_response = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.gb_fw_download_fetch_firmware_request* }
%struct.gb_fw_download_fetch_firmware_request = type { i32, i32, i32 }
%struct.gb_connection = type { i32 }
%struct.fw_download = type { i32 }
%struct.fw_request = type { i32, %struct.firmware*, i64 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"Illegal size of fetch firmware request (%zu %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"firmware not available for id: %02u\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"bad fetch firmware request (offs = %u, size = %u)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"error allocating fetch firmware response\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"responding with firmware (offs = %u, size = %u)\0A\00", align 1
@NEXT_REQ_TIMEOUT_J = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @fw_download_fetch_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_download_fetch_firmware(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.fw_download*, align 8
  %6 = alloca %struct.gb_fw_download_fetch_firmware_request*, align 8
  %7 = alloca %struct.gb_fw_download_fetch_firmware_response*, align 8
  %8 = alloca %struct.fw_request*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %14 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 2
  %16 = load %struct.gb_connection*, %struct.gb_connection** %15, align 8
  store %struct.gb_connection* %16, %struct.gb_connection** %4, align 8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %18 = call %struct.fw_download* @gb_connection_get_data(%struct.gb_connection* %17)
  store %struct.fw_download* %18, %struct.fw_download** %5, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %20 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 12
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %28 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %31 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i64 12)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %158

38:                                               ; preds = %1
  %39 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %40 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.gb_fw_download_fetch_firmware_request*, %struct.gb_fw_download_fetch_firmware_request** %42, align 8
  store %struct.gb_fw_download_fetch_firmware_request* %43, %struct.gb_fw_download_fetch_firmware_request** %6, align 8
  %44 = load %struct.gb_fw_download_fetch_firmware_request*, %struct.gb_fw_download_fetch_firmware_request** %6, align 8
  %45 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_request, %struct.gb_fw_download_fetch_firmware_request* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.gb_fw_download_fetch_firmware_request*, %struct.gb_fw_download_fetch_firmware_request** %6, align 8
  %49 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_request, %struct.gb_fw_download_fetch_firmware_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.gb_fw_download_fetch_firmware_request*, %struct.gb_fw_download_fetch_firmware_request** %6, align 8
  %53 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_request, %struct.gb_fw_download_fetch_firmware_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.fw_request* @get_fw_req(%struct.fw_download* %55, i32 %56)
  store %struct.fw_request* %57, %struct.fw_request** %8, align 8
  %58 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %59 = icmp ne %struct.fw_request* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %38
  %61 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %62 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %158

68:                                               ; preds = %38
  %69 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %70 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %69, i32 0, i32 0
  %71 = call i32 @cancel_delayed_work_sync(i32* %70)
  %72 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %73 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %154

79:                                               ; preds = %68
  %80 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %81 = call i32 @exceeds_release_timeout(%struct.fw_request* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %154

85:                                               ; preds = %79
  %86 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %87 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %86, i32 0, i32 1
  %88 = load %struct.firmware*, %struct.firmware** %87, align 8
  store %struct.firmware* %88, %struct.firmware** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.firmware*, %struct.firmware** %9, align 8
  %91 = getelementptr inbounds %struct.firmware, %struct.firmware* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.firmware*, %struct.firmware** %9, align 8
  %97 = getelementptr inbounds %struct.firmware, %struct.firmware* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sub i32 %98, %99
  %101 = icmp ugt i32 %95, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %94, %85
  %103 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %104 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %154

111:                                              ; preds = %94
  %112 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = add i64 4, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %112, i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %111
  %121 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %122 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %13, align 4
  br label %154

127:                                              ; preds = %111
  %128 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %129 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.gb_fw_download_fetch_firmware_response*, %struct.gb_fw_download_fetch_firmware_response** %131, align 8
  store %struct.gb_fw_download_fetch_firmware_response* %132, %struct.gb_fw_download_fetch_firmware_response** %7, align 8
  %133 = load %struct.gb_fw_download_fetch_firmware_response*, %struct.gb_fw_download_fetch_firmware_response** %7, align 8
  %134 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_response, %struct.gb_fw_download_fetch_firmware_response* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.firmware*, %struct.firmware** %9, align 8
  %137 = getelementptr inbounds %struct.firmware, %struct.firmware* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @memcpy(i32 %135, i64 %141, i32 %142)
  %144 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %145 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @dev_dbg(i32 %146, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %151 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %150, i32 0, i32 0
  %152 = load i32, i32* @NEXT_REQ_TIMEOUT_J, align 4
  %153 = call i32 @schedule_delayed_work(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %127, %120, %102, %84, %76
  %155 = load %struct.fw_request*, %struct.fw_request** %8, align 8
  %156 = call i32 @put_fw_req(%struct.fw_request* %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %60, %26
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.fw_download* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.fw_request* @get_fw_req(%struct.fw_download*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @exceeds_release_timeout(%struct.fw_request*) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @put_fw_req(%struct.fw_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
