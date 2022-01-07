; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, {}* }

@DASD_CQR_NEED_ERP = common dso_local global i64 0, align 8
@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_compound(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 1
  %7 = bitcast {}** %6 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  %8 = load %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)*, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %7, align 8
  %9 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* %8, @dasd_3990_erp_compound_retry
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.dasd_ccw_req* @dasd_3990_erp_compound_path(%struct.dasd_ccw_req* %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %10, %2
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  %24 = load %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)*, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %23, align 8
  %25 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* %24, @dasd_3990_erp_compound_path
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %28 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.dasd_ccw_req* @dasd_3990_erp_compound_code(%struct.dasd_ccw_req* %33, i8* %34)
  store %struct.dasd_ccw_req* %35, %struct.dasd_ccw_req** %3, align 8
  br label %36

36:                                               ; preds = %32, %26, %20
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  %40 = load %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)*, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %39, align 8
  %41 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* %40, @dasd_3990_erp_compound_code
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @dasd_3990_erp_compound_config(%struct.dasd_ccw_req* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %42, %36
  %53 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %54 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* @DASD_CQR_FAILED, align 8
  %60 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %61 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %63
}

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_compound_retry(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_compound_path(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_compound_code(%struct.dasd_ccw_req*, i8*) #1

declare dso_local i32 @dasd_3990_erp_compound_config(%struct.dasd_ccw_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
