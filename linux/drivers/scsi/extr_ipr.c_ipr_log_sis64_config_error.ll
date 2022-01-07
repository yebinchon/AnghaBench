; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_sis64_config_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_sis64_config_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_hostrcb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ipr_hostrcb_type_23_error }
%struct.ipr_hostrcb_type_23_error = type { %struct.ipr_hostrcb64_device_data_entry_enhanced*, i32, i32 }
%struct.ipr_hostrcb64_device_data_entry_enhanced = type { i32, i32, i32, i32, i32 }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Device Errors Detected/Logged: %d/%d\0A\00", align 1
@ipr_err_separator = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Device %d : %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-----New Device Information-----\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cache Directory Card Information:\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Adapter Card Information:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*)* @ipr_log_sis64_config_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_sis64_config_error(%struct.ipr_ioa_cfg* %0, %struct.ipr_hostrcb* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_hostrcb64_device_data_entry_enhanced*, align 8
  %8 = alloca %struct.ipr_hostrcb_type_23_error*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_hostrcb* %1, %struct.ipr_hostrcb** %4, align 8
  %11 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.ipr_hostrcb_type_23_error* %20, %struct.ipr_hostrcb_type_23_error** %8, align 8
  %21 = load %struct.ipr_hostrcb_type_23_error*, %struct.ipr_hostrcb_type_23_error** %8, align 8
  %22 = getelementptr inbounds %struct.ipr_hostrcb_type_23_error, %struct.ipr_hostrcb_type_23_error* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ipr_hostrcb_type_23_error*, %struct.ipr_hostrcb_type_23_error** %8, align 8
  %26 = getelementptr inbounds %struct.ipr_hostrcb_type_23_error, %struct.ipr_hostrcb_type_23_error* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.ipr_hostrcb_type_23_error*, %struct.ipr_hostrcb_type_23_error** %8, align 8
  %32 = getelementptr inbounds %struct.ipr_hostrcb_type_23_error, %struct.ipr_hostrcb_type_23_error* %31, i32 0, i32 0
  %33 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %32, align 8
  store %struct.ipr_hostrcb64_device_data_entry_enhanced* %33, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %63, %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i32, i32* @ipr_err_separator, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %43 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = trunc i64 %12 to i32
  %46 = call i32 @__ipr_format_res_path(i32 %44, i8* %14, i32 %45)
  %47 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %49 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %48, i32 0, i32 3
  %50 = call i32 @ipr_log_ext_vpd(i32* %49)
  %51 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %53 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %52, i32 0, i32 2
  %54 = call i32 @ipr_log_ext_vpd(i32* %53)
  %55 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %57 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %56, i32 0, i32 1
  %58 = call i32 @ipr_log_ext_vpd(i32* %57)
  %59 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %61 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %60, i32 0, i32 0
  %62 = call i32 @ipr_log_ext_vpd(i32* %61)
  br label %63

63:                                               ; preds = %38
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ipr_hostrcb64_device_data_entry_enhanced*, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  %67 = getelementptr inbounds %struct.ipr_hostrcb64_device_data_entry_enhanced, %struct.ipr_hostrcb64_device_data_entry_enhanced* %66, i32 1
  store %struct.ipr_hostrcb64_device_data_entry_enhanced* %67, %struct.ipr_hostrcb64_device_data_entry_enhanced** %7, align 8
  br label %34

68:                                               ; preds = %34
  %69 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @ipr_err(i8*, ...) #2

declare dso_local i32 @__ipr_format_res_path(i32, i8*, i32) #2

declare dso_local i32 @ipr_log_ext_vpd(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
