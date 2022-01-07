; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_host_access_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_host_access_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_psf_query_host_access = type { i64 }
%struct.dasd_ckd_path_group_entry = type { i32 }
%struct.dasd_ckd_host_information = type { i32, i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate access buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DASD_ECKD_PG_GROUPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_host_access_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_host_access_count(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_psf_query_host_access*, align 8
  %5 = alloca %struct.dasd_ckd_path_group_entry*, align 8
  %6 = alloca %struct.dasd_ckd_host_information*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.dasd_psf_query_host_access* @kzalloc(i32 8, i32 %10)
  store %struct.dasd_psf_query_host_access* %11, %struct.dasd_psf_query_host_access** %4, align 8
  %12 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %4, align 8
  %13 = icmp ne %struct.dasd_psf_query_host_access* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @DBF_WARNING, align 4
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DBF_EVENT_DEVID(i32 %15, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %4, align 8
  %25 = call i32 @dasd_eckd_query_host_access(%struct.dasd_device* %23, %struct.dasd_psf_query_host_access* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %4, align 8
  %30 = call i32 @kfree(%struct.dasd_psf_query_host_access* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %72

32:                                               ; preds = %22
  %33 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %4, align 8
  %34 = getelementptr inbounds %struct.dasd_psf_query_host_access, %struct.dasd_psf_query_host_access* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.dasd_ckd_host_information*
  store %struct.dasd_ckd_host_information* %36, %struct.dasd_ckd_host_information** %6, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %65, %32
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %6, align 8
  %40 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %6, align 8
  %45 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.dasd_ckd_host_information*, %struct.dasd_ckd_host_information** %6, align 8
  %49 = getelementptr inbounds %struct.dasd_ckd_host_information, %struct.dasd_ckd_host_information* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %46, %52
  %54 = inttoptr i64 %53 to %struct.dasd_ckd_path_group_entry*
  store %struct.dasd_ckd_path_group_entry* %54, %struct.dasd_ckd_path_group_entry** %5, align 8
  %55 = load %struct.dasd_ckd_path_group_entry*, %struct.dasd_ckd_path_group_entry** %5, align 8
  %56 = getelementptr inbounds %struct.dasd_ckd_path_group_entry, %struct.dasd_ckd_path_group_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DASD_ECKD_PG_GROUPED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load %struct.dasd_psf_query_host_access*, %struct.dasd_psf_query_host_access** %4, align 8
  %70 = call i32 @kfree(%struct.dasd_psf_query_host_access* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %28, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.dasd_psf_query_host_access* @kzalloc(i32, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i8*) #1

declare dso_local i32 @dasd_eckd_query_host_access(%struct.dasd_device*, %struct.dasd_psf_query_host_access*) #1

declare dso_local i32 @kfree(%struct.dasd_psf_query_host_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
