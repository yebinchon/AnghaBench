; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_hosts_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_hosts_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.seq_file = type { i32 }
%struct.dasd_psf_query_host_access = type { i64 }
%struct.dasd_ckd_path_group_entry = type { i64, i64, i64, i32, i32 }
%struct.dasd_ckd_host_information = type { i32, i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate access buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pgid %*phN\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"status_flags %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sysplex_name %8s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"supported_cylinder %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"timestamp %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.seq_file*)* @dasd_hosts_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_hosts_print(%struct.dasd_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.dasd_psf_query_host_access*, align 8
  %7 = alloca %struct.dasd_ckd_path_group_entry*, align 8
  %8 = alloca %struct.dasd_ckd_host_information*, align 8
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %12 = bitcast [9 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 9, i1 false)
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call %struct.dasd_psf_query_host_access* @kzalloc(i32 8, i32 %13)
  store %struct.dasd_psf_query_host_access* %14, %struct.dasd_psf_query_host_access** %6, align 8
  %15 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %6, align 8
  %16 = icmp ne %struct.dasd_psf_query_host_access* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @DBF_WARNING, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DBF_EVENT_DEVID(i32 %18, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %6, align 8
  %28 = call i32 @dasd_eckd_query_host_access(%struct.dasd_device* %26, %struct.dasd_psf_query_host_access* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %6, align 8
  %33 = call i32 @kfree(%struct.dasd_psf_query_host_access* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %93

35:                                               ; preds = %25
  %36 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %6, align 8
  %37 = getelementptr inbounds %struct.dasd_psf_query_host_access, %struct.dasd_psf_query_host_access* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.dasd_ckd_host_information*
  store %struct.dasd_ckd_host_information* %39, %struct.dasd_ckd_host_information** %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %87, %35
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %8, align 8
  %43 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %8, align 8
  %48 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %8, align 8
  %52 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = inttoptr i64 %56 to %struct.dasd_ckd_path_group_entry*
  store %struct.dasd_ckd_path_group_entry* %57, %struct.dasd_ckd_path_group_entry** %7, align 8
  %58 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %59 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %7, align 8
  %60 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11, i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %64 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %7, align 8
  %65 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = bitcast [9 x i8]* %9 to i8**
  %69 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %7, align 8
  %70 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %69, i32 0, i32 3
  %71 = call i32 @memcpy(i8** %68, i32* %70, i32 8)
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %73 = call i32 @EBCASC(i8* %72, i32 9)
  %74 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %75 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %78 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %7, align 8
  %79 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %83 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %7, align 8
  %84 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %46
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %6, align 8
  %92 = call i32 @kfree(%struct.dasd_psf_query_host_access* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %31, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dasd_psf_query_host_access* @kzalloc(i32, i32) #2

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i8*) #2

declare dso_local i32 @dasd_eckd_query_host_access(%struct.dasd_device*, %struct.dasd_psf_query_host_access*) #2

declare dso_local i32 @kfree(%struct.dasd_psf_query_host_access*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

declare dso_local i32 @memcpy(i8**, i32*, i32) #2

declare dso_local i32 @EBCASC(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
