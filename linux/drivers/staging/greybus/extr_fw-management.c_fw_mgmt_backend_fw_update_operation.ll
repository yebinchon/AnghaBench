; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_backend_fw_update_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_backend_fw_update_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_mgmt = type { i32, i32, i32, i32 }
%struct.gb_fw_mgmt_backend_fw_update_request = type { i8*, i32 }

@GB_FIRMWARE_TAG_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"backend-update: firmware-tag is not NULL terminated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to allocate request id (%d)\0A\00", align 1
@GB_FW_MGMT_TYPE_BACKEND_FW_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"backend %s firmware update request failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_mgmt*, i8*)* @fw_mgmt_backend_fw_update_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_mgmt_backend_fw_update_operation(%struct.fw_mgmt* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_mgmt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gb_fw_mgmt_backend_fw_update_request, align 8
  %7 = alloca i32, align 4
  store %struct.fw_mgmt* %0, %struct.fw_mgmt** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_update_request, %struct.gb_fw_mgmt_backend_fw_update_request* %6, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %12 = call i32 @strncpy(i8* %9, i8* %10, i32 %11)
  %13 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_update_request, %struct.gb_fw_mgmt_backend_fw_update_request* %6, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %24 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %2
  %30 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %31 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %30, i32 0, i32 2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @ida_simple_get(i32* %31, i32 1, i32 256, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %38 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %46 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_update_request, %struct.gb_fw_mgmt_backend_fw_update_request* %6, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %50 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GB_FW_MGMT_TYPE_BACKEND_FW_UPDATE, align 4
  %53 = call i32 @gb_operation_sync(i32 %51, i32 %52, %struct.gb_fw_mgmt_backend_fw_update_request* %6, i32 16, i32* null, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %58 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %57, i32 0, i32 2
  %59 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %60 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ida_simple_remove(i32* %58, i32 %61)
  %63 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %64 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %66 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %56, %36, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_fw_mgmt_backend_fw_update_request*, i32, i32*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
