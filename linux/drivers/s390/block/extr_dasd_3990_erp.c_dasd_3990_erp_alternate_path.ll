; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_alternate_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_alternate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, %struct.TYPE_10__, %struct.dasd_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dasd_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"try alternate lpm=%x (lpum=%x / opm=%x)\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"The DASD cannot be reached on any path (lpum=%x/opm=%x)\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*)* @dasd_3990_erp_alternate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = call i32 @get_ccwdev_lock(%struct.TYPE_11__* %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = call i32 @ccw_device_get_path_mask(%struct.TYPE_11__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call i32 @get_ccwdev_lock(%struct.TYPE_11__* %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %31 = call i32 @dasd_path_get_opm(%struct.dasd_device* %30)
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %31, %39
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %42 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %56

43:                                               ; preds = %1
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %45 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %53 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %43, %29
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load i32, i32* @DBF_WARNING, align 4
  %65 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @DBF_DEV_EVENT(i32 %64, %struct.dasd_device* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %75, i32 %76)
  %78 = load i32, i32* @DASD_CQR_FILLED, align 4
  %79 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %80 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %82 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %81, i32 0, i32 1
  store i32 10, i32* %82, align 4
  br label %100

83:                                               ; preds = %56
  %84 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %85 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %89 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @DASD_CQR_FAILED, align 4
  %98 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %99 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %83, %63
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @ccw_device_get_path_mask(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
