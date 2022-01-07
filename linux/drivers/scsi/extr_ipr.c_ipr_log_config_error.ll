; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_config_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_config_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_hostrcb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ipr_hostrcb_type_03_error }
%struct.ipr_hostrcb_type_03_error = type { %struct.ipr_hostrcb_device_data_entry*, i32, i32 }
%struct.ipr_hostrcb_device_data_entry = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Device Errors Detected/Logged: %d/%d\0A\00", align 1
@ipr_err_separator = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Device %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-----New Device Information-----\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cache Directory Card Information:\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Adapter Card Information:\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Additional IOA Data: %08X %08X %08X %08X %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*)* @ipr_log_config_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_config_error(%struct.ipr_ioa_cfg* %0, %struct.ipr_hostrcb* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_hostrcb_device_data_entry*, align 8
  %8 = alloca %struct.ipr_hostrcb_type_03_error*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_hostrcb* %1, %struct.ipr_hostrcb** %4, align 8
  %9 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.ipr_hostrcb_type_03_error* %14, %struct.ipr_hostrcb_type_03_error** %8, align 8
  %15 = load %struct.ipr_hostrcb_type_03_error*, %struct.ipr_hostrcb_type_03_error** %8, align 8
  %16 = getelementptr inbounds %struct.ipr_hostrcb_type_03_error, %struct.ipr_hostrcb_type_03_error* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ipr_hostrcb_type_03_error*, %struct.ipr_hostrcb_type_03_error** %8, align 8
  %20 = getelementptr inbounds %struct.ipr_hostrcb_type_03_error, %struct.ipr_hostrcb_type_03_error* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.ipr_hostrcb_type_03_error*, %struct.ipr_hostrcb_type_03_error** %8, align 8
  %26 = getelementptr inbounds %struct.ipr_hostrcb_type_03_error, %struct.ipr_hostrcb_type_03_error* %25, i32 0, i32 0
  %27 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %26, align 8
  store %struct.ipr_hostrcb_device_data_entry* %27, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %87, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %28
  %33 = load i32, i32* @ipr_err_separator, align 4
  %34 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %35 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @ipr_phys_res_err(%struct.ipr_ioa_cfg* %34, i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %42 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %41, i32 0, i32 4
  %43 = call i32 @ipr_log_vpd(i32* %42)
  %44 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %46 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %45, i32 0, i32 3
  %47 = call i32 @ipr_log_vpd(i32* %46)
  %48 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %50 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %49, i32 0, i32 2
  %51 = call i32 @ipr_log_vpd(i32* %50)
  %52 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %54 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %53, i32 0, i32 1
  %55 = call i32 @ipr_log_vpd(i32* %54)
  %56 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %57 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %63 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %69 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %75 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %81 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be32_to_cpu(i32 %84)
  %86 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 %67, i32 %73, i32 %79, i32 %85)
  br label %87

87:                                               ; preds = %32
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load %struct.ipr_hostrcb_device_data_entry*, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  %91 = getelementptr inbounds %struct.ipr_hostrcb_device_data_entry, %struct.ipr_hostrcb_device_data_entry* %90, i32 1
  store %struct.ipr_hostrcb_device_data_entry* %91, %struct.ipr_hostrcb_device_data_entry** %7, align 8
  br label %28

92:                                               ; preds = %28
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ipr_err(i8*, ...) #1

declare dso_local i32 @ipr_phys_res_err(%struct.ipr_ioa_cfg*, i32, i8*, i32) #1

declare dso_local i32 @ipr_log_vpd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
