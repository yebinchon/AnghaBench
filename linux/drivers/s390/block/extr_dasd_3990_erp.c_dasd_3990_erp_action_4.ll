; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i8*, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"dasd_3990_erp_action_4: first time retry\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"waiting for state change pending interrupt, %d retries left\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"busy - redriving request later, %d retries left\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"redriving request immediately, %d retries left\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_action_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 3
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)*
  %13 = icmp ne %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* %12, @dasd_3990_erp_action_4
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @DBF_INFO, align 4
  %16 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %17 = call i32 @DBF_DEV_EVENT(i32 %15, %struct.dasd_device* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %18, i32 0, i32 1
  store i8* inttoptr (i64 256 to i8*), i8** %19, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 0
  store i64 ptrtoint (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_action_4 to i64), i64* %21, align 8
  br label %73

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 25
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32, i32* @DBF_INFO, align 4
  %33 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @DBF_DEV_EVENT(i32 %32, %struct.dasd_device* %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 30, %39
  %41 = call i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req* %38, i32 %40)
  br label %72

42:                                               ; preds = %25, %22
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 25
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 30
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* @DBF_INFO, align 4
  %53 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @DBF_DEV_EVENT(i32 %52, %struct.dasd_device* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %59 = load i32, i32* @HZ, align 4
  %60 = call i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req* %58, i32 %59)
  br label %71

61:                                               ; preds = %45, %42
  %62 = load i32, i32* @DBF_INFO, align 4
  %63 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %64 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %65 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @DBF_DEV_EVENT(i32 %62, %struct.dasd_device* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @DASD_CQR_FILLED, align 4
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %61, %51
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72, %14
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %74
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
