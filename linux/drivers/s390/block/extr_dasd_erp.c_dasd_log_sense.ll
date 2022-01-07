; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_log_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* }
%struct.TYPE_4__ = type { i32 }
%struct.irb = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"A timeout error occurred for cqr %p\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"A transport error occurred for cqr %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_log_sense(%struct.dasd_ccw_req* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 1
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ETIMEDOUT, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %20)
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ENOLINK, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %34)
  br label %58

36:                                               ; preds = %22
  %37 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)*, i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)** %45, align 8
  %47 = icmp ne i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)*, i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)** %52, align 8
  %54 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %56 = load %struct.irb*, %struct.irb** %4, align 8
  %57 = call i32 %53(%struct.dasd_device* %54, %struct.dasd_ccw_req* %55, %struct.irb* %56)
  br label %58

58:                                               ; preds = %15, %29, %48, %41, %36
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, %struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
