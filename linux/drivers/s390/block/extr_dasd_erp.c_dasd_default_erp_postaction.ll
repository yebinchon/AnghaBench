; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_postaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_postaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i64, i64, %struct.dasd_device*, i32, i32, %struct.dasd_ccw_req*, i32* }
%struct.dasd_device = type { i32 }

@DASD_CQR_DONE = common dso_local global i64 0, align 8
@DASD_CQR_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_default_erp_postaction(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 6
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %11 = icmp eq %struct.dasd_ccw_req* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DASD_CQR_DONE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %28 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 3
  %35 = load %struct.dasd_device*, %struct.dasd_device** %34, align 8
  store %struct.dasd_device* %35, %struct.dasd_device** %6, align 8
  br label %36

36:                                               ; preds = %41, %17
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 6
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %38, align 8
  %40 = icmp ne %struct.dasd_ccw_req* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 6
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %43, align 8
  store %struct.dasd_ccw_req* %44, %struct.dasd_ccw_req** %7, align 8
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 5
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dasd_free_erp_request(%struct.dasd_ccw_req* %48, i32 %51)
  %53 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  store %struct.dasd_ccw_req* %53, %struct.dasd_ccw_req** %2, align 8
  br label %36

54:                                               ; preds = %36
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %57 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %60 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %63 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %62, i32 0, i32 3
  store %struct.dasd_device* %61, %struct.dasd_device** %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i64, i64* @DASD_CQR_DONE, align 8
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %69 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %77

70:                                               ; preds = %54
  %71 = load i64, i64* @DASD_CQR_FAILED, align 8
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %73 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = call i64 (...) @get_tod_clock()
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %76 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %66
  %78 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dasd_free_erp_request(%struct.dasd_ccw_req*, i32) #1

declare dso_local i64 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
