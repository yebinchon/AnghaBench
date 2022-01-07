; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_release_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_fw_download_release_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__*, %struct.gb_connection* }
%struct.TYPE_2__ = type { i32, %struct.gb_fw_download_release_firmware_request* }
%struct.gb_fw_download_release_firmware_request = type { i32 }
%struct.gb_connection = type { i32 }
%struct.fw_download = type { i32 }
%struct.fw_request = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Illegal size of release firmware request (%zu %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"firmware not available for id: %02u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"release firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @fw_download_release_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_download_release_firmware(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.fw_download*, align 8
  %6 = alloca %struct.gb_fw_download_release_firmware_request*, align 8
  %7 = alloca %struct.fw_request*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %9 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %10 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %9, i32 0, i32 1
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %13 = call %struct.fw_download* @gb_connection_get_data(%struct.gb_connection* %12)
  store %struct.fw_download* %13, %struct.fw_download** %5, align 8
  %14 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 4
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %23 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %26 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29, i64 4)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.gb_fw_download_release_firmware_request*, %struct.gb_fw_download_release_firmware_request** %37, align 8
  store %struct.gb_fw_download_release_firmware_request* %38, %struct.gb_fw_download_release_firmware_request** %6, align 8
  %39 = load %struct.gb_fw_download_release_firmware_request*, %struct.gb_fw_download_release_firmware_request** %6, align 8
  %40 = getelementptr inbounds %struct.gb_fw_download_release_firmware_request, %struct.gb_fw_download_release_firmware_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.fw_request* @get_fw_req(%struct.fw_download* %42, i32 %43)
  store %struct.fw_request* %44, %struct.fw_request** %7, align 8
  %45 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %46 = icmp ne %struct.fw_request* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %49 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %68

55:                                               ; preds = %33
  %56 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %57 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %56, i32 0, i32 0
  %58 = call i32 @cancel_delayed_work_sync(i32* %57)
  %59 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %60 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %61 = call i32 @free_firmware(%struct.fw_download* %59, %struct.fw_request* %60)
  %62 = load %struct.fw_request*, %struct.fw_request** %7, align 8
  %63 = call i32 @put_fw_req(%struct.fw_request* %62)
  %64 = load %struct.fw_download*, %struct.fw_download** %5, align 8
  %65 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %55, %47, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.fw_download* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.fw_request* @get_fw_req(%struct.fw_download*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_firmware(%struct.fw_download*, %struct.fw_request*) #1

declare dso_local i32 @put_fw_req(%struct.fw_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
