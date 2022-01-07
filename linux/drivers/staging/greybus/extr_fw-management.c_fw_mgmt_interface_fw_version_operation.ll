; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_interface_fw_version_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_interface_fw_version_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_mgmt = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.fw_mgmt_ioc_get_intf_version = type { i8*, i8*, i8* }
%struct.gb_fw_mgmt_interface_fw_version_response = type { i32, i32, i32 }

@GB_FW_MGMT_TYPE_INTERFACE_FW_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to get interface firmware version (%d)\0A\00", align 1
@GB_FIRMWARE_TAG_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"fw-version: firmware-tag is not NULL terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_mgmt*, %struct.fw_mgmt_ioc_get_intf_version*)* @fw_mgmt_interface_fw_version_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_mgmt_interface_fw_version_operation(%struct.fw_mgmt* %0, %struct.fw_mgmt_ioc_get_intf_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_mgmt*, align 8
  %5 = alloca %struct.fw_mgmt_ioc_get_intf_version*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_fw_mgmt_interface_fw_version_response, align 4
  %8 = alloca i32, align 4
  store %struct.fw_mgmt* %0, %struct.fw_mgmt** %4, align 8
  store %struct.fw_mgmt_ioc_get_intf_version* %1, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %9 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %10 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %9, i32 0, i32 1
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %6, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %13 = load i32, i32* @GB_FW_MGMT_TYPE_INTERFACE_FW_VERSION, align 4
  %14 = call i32 @gb_operation_sync(%struct.gb_connection* %12, i32 %13, i32* null, i32 0, %struct.gb_fw_mgmt_interface_fw_version_response* %7, i32 12)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %19 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.gb_fw_mgmt_interface_fw_version_response, %struct.gb_fw_mgmt_interface_fw_version_response* %7, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = load %struct.fw_mgmt_ioc_get_intf_version*, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %29 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, %struct.fw_mgmt_ioc_get_intf_version* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.gb_fw_mgmt_interface_fw_version_response, %struct.gb_fw_mgmt_interface_fw_version_response* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = load %struct.fw_mgmt_ioc_get_intf_version*, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %34 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, %struct.fw_mgmt_ioc_get_intf_version* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.fw_mgmt_ioc_get_intf_version*, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %36 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, %struct.fw_mgmt_ioc_get_intf_version* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.gb_fw_mgmt_interface_fw_version_response, %struct.gb_fw_mgmt_interface_fw_version_response* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %41 = call i32 @strncpy(i8* %37, i32 %39, i32 %40)
  %42 = load %struct.fw_mgmt_ioc_get_intf_version*, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %43 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, %struct.fw_mgmt_ioc_get_intf_version* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %24
  %53 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %54 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.fw_mgmt_ioc_get_intf_version*, %struct.fw_mgmt_ioc_get_intf_version** %5, align 8
  %58 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, %struct.fw_mgmt_ioc_get_intf_version* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %52, %24
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, %struct.gb_fw_mgmt_interface_fw_version_response*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
