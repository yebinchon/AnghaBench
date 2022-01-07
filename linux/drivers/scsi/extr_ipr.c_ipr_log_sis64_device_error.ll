; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_sis64_device_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_sis64_device_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_hostrcb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ipr_hostrcb_type_21_error }
%struct.ipr_hostrcb_type_21_error = type { i8*, i8*, i32, i32, i32, i32, i32, i32* }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"-----Failing Device Information-----\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"World Wide Unique ID: %08X%08X%08X%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Device Resource Path: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Primary Problem Description: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Secondary Problem Description:  %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SCSI Sense Data:\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"SCSI Command Descriptor Block: \0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Additional IOA Data:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*)* @ipr_log_sis64_device_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_sis64_device_error(%struct.ipr_ioa_cfg* %0, %struct.ipr_hostrcb* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  %5 = alloca %struct.ipr_hostrcb_type_21_error*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_hostrcb* %1, %struct.ipr_hostrcb** %4, align 8
  %8 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %13 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.ipr_hostrcb_type_21_error* %17, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %18 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %20 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %26 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %32 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %38 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %30, i32 %36, i32 %42)
  %44 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %45 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = trunc i64 %9 to i32
  %48 = call i32 @__ipr_format_res_path(i32 %46, i8* %11, i32 %47)
  %49 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %51 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  store i8 0, i8* %53, align 1
  %54 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %55 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8 0, i8* %57, align 1
  %58 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %59 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %63 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %68 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %69 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg* %67, i32 %70, i32 4)
  %72 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %74 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %75 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg* %73, i32 %76, i32 4)
  %78 = call i32 (i8*, ...) @ipr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %80 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %81 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ipr_hostrcb_type_21_error*, %struct.ipr_hostrcb_type_21_error** %5, align 8
  %84 = getelementptr inbounds %struct.ipr_hostrcb_type_21_error, %struct.ipr_hostrcb_type_21_error* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = call i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg* %79, i32 %82, i32 %86)
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ipr_err(i8*, ...) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @__ipr_format_res_path(i32, i8*, i32) #2

declare dso_local i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
