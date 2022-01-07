; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_process_cqr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_process_cqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_ccw_req = type { i32, i32, i32 (%struct.dasd_ccw_req*, i32)* }

@ERRORLENGTH = common dso_local global i32 0, align 4
@DASD_CQR_DONE = common dso_local global i32 0, align 4
@DASD_CQR_NEED_ERP = common dso_local global i32 0, align 4
@DASD_CQR_TERMINATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"12 %p %x02\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*)* @__dasd_process_cqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dasd_process_cqr(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %4, align 8
  %7 = load i32, i32* @ERRORLENGTH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %18
    i32 130, label %22
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @DASD_CQR_DONE, align 4
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* @DASD_CQR_NEED_ERP, align 4
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* @DASD_CQR_TERMINATED, align 4
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %25 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @ERRORLENGTH, align 4
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snprintf(i8* %10, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %28, i32 %31)
  %33 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %26, %22, %18, %14
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 2
  %42 = load i32 (%struct.dasd_ccw_req*, i32)*, i32 (%struct.dasd_ccw_req*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.dasd_ccw_req*, i32)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 2
  %47 = load i32 (%struct.dasd_ccw_req*, i32)*, i32 (%struct.dasd_ccw_req*, i32)** %46, align 8
  %48 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %47(%struct.dasd_ccw_req* %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.dasd_ccw_req*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i8*) #2

declare dso_local i32 @BUG(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
