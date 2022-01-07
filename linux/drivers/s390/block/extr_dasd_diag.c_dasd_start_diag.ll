; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_start_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_start_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, i32, i8*, i32, i8*, %struct.dasd_diag_req*, %struct.dasd_device* }
%struct.dasd_diag_req = type { i32, i32 }
%struct.dasd_device = type { %struct.dasd_diag_private* }
%struct.dasd_diag_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DIAG start_IO: request %p - no retry left)\00", align 1
@DASD_CQR_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DASD_DIAG_RWFLAG_ASYNC = common dso_local global i32 0, align 4
@DASD_DIAG_FLAGA_DEFAULT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RW_BIO = common dso_local global i32 0, align 4
@DASD_CQR_SUCCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DASD_CQR_IN_IO = common dso_local global i32 0, align 4
@DASD_CQR_QUEUED = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dia250 returned rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @dasd_start_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_start_diag(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_diag_private*, align 8
  %6 = alloca %struct.dasd_diag_req*, align 8
  %7 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 7
  %10 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  store %struct.dasd_device* %10, %struct.dasd_device** %4, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @DBF_ERR, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %19 = call i32 (i32, %struct.dasd_device*, i8*, ...) @DBF_DEV_EVENT(i32 %16, %struct.dasd_device* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %18)
  %20 = load i32, i32* @DASD_CQR_ERROR, align 4
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %112

25:                                               ; preds = %1
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %27, align 8
  store %struct.dasd_diag_private* %28, %struct.dasd_diag_private** %5, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 6
  %31 = load %struct.dasd_diag_req*, %struct.dasd_diag_req** %30, align 8
  store %struct.dasd_diag_req* %31, %struct.dasd_diag_req** %6, align 8
  %32 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %33 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %37 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 8
  %39 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %40 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @DASD_DIAG_RWFLAG_ASYNC, align 4
  %43 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %44 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load %struct.dasd_diag_req*, %struct.dasd_diag_req** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_diag_req, %struct.dasd_diag_req* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %53 = ptrtoint %struct.dasd_ccw_req* %52 to i64
  %54 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %55 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.dasd_diag_req*, %struct.dasd_diag_req** %6, align 8
  %58 = getelementptr inbounds %struct.dasd_diag_req, %struct.dasd_diag_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %61 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @DASD_DIAG_FLAGA_DEFAULT, align 4
  %64 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %65 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = call i8* (...) @get_tod_clock()
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %69 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %72 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %74 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %78 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %77, i32 0, i32 0
  %79 = load i32, i32* @RW_BIO, align 4
  %80 = call i32 @dia250(%struct.TYPE_4__* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %95 [
    i32 0, label %82
    i32 8, label %91
  ]

82:                                               ; preds = %25
  %83 = call i8* (...) @get_tod_clock()
  %84 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %85 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @DASD_CQR_SUCCESS, align 4
  %87 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %88 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %107

91:                                               ; preds = %25
  %92 = load i32, i32* @DASD_CQR_IN_IO, align 4
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %7, align 4
  br label %107

95:                                               ; preds = %25
  %96 = load i32, i32* @DASD_CQR_QUEUED, align 4
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %98 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DBF_WARNING, align 4
  %100 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, %struct.dasd_device*, i8*, ...) @DBF_DEV_EVENT(i32 %99, %struct.dasd_device* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %104 = call i32 @dasd_diag_erp(%struct.dasd_device* %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %95, %91, %82
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %110 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, ...) #1

declare dso_local i8* @get_tod_clock(...) #1

declare dso_local i32 @dia250(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dasd_diag_erp(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
