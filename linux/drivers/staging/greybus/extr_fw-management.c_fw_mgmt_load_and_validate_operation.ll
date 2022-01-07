; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_load_and_validate_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_fw_mgmt_load_and_validate_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_mgmt = type { i32, i32, i32, i32, i32 }
%struct.gb_fw_mgmt_load_and_validate_fw_request = type { i8*, i32, i64 }

@GB_FW_LOAD_METHOD_UNIPRO = common dso_local global i64 0, align 8
@GB_FW_LOAD_METHOD_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid load-method (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_FIRMWARE_TAG_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"load-and-validate: firmware-tag is not NULL terminated\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to allocate request id (%d)\0A\00", align 1
@GB_FW_MGMT_TYPE_LOAD_AND_VALIDATE_FW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"load and validate firmware request failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_mgmt*, i64, i8*)* @fw_mgmt_load_and_validate_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_mgmt_load_and_validate_operation(%struct.fw_mgmt* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gb_fw_mgmt_load_and_validate_fw_request, align 8
  %9 = alloca i32, align 4
  store %struct.fw_mgmt* %0, %struct.fw_mgmt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @GB_FW_LOAD_METHOD_UNIPRO, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @GB_FW_LOAD_METHOD_INTERNAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %19 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %94

25:                                               ; preds = %13, %3
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, %struct.gb_fw_mgmt_load_and_validate_fw_request* %8, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, %struct.gb_fw_mgmt_load_and_validate_fw_request* %8, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %32 = call i32 @strncpy(i8* %29, i8* %30, i32 %31)
  %33 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, %struct.gb_fw_mgmt_load_and_validate_fw_request* %8, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @GB_FIRMWARE_TAG_MAX_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %44 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %25
  %50 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %51 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %50, i32 0, i32 3
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @ida_simple_get(i32* %51, i32 1, i32 256, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %58 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %94

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %66 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %68 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, %struct.gb_fw_mgmt_load_and_validate_fw_request* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GB_FW_MGMT_TYPE_LOAD_AND_VALIDATE_FW, align 4
  %75 = call i32 @gb_operation_sync(i32 %73, i32 %74, %struct.gb_fw_mgmt_load_and_validate_fw_request* %8, i32 24, i32* null, i32 0)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %63
  %79 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %80 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %79, i32 0, i32 3
  %81 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %82 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ida_simple_remove(i32* %80, i32 %83)
  %85 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %86 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.fw_mgmt*, %struct.fw_mgmt** %5, align 8
  %88 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %78, %56, %42, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_fw_mgmt_load_and_validate_fw_request*, i32, i32*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
