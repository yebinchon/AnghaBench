; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_account_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_account_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.TYPE_9__*, %struct.dasd_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dasd_device = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*)* @dasd_3990_erp_account_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_account_error(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 1
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pathmask_to_pos(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %93

25:                                               ; preds = %1
  %26 = call i64 (...) @get_tod_clock()
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %27, %35
  %37 = call i32 @tod_to_ns(i64 %36)
  %38 = load i32, i32* @NSEC_PER_SEC, align 4
  %39 = sdiv i32 %37, %38
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %25
  %45 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %44, %25
  %61 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %71 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 %69, i64* %76, align 8
  %77 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %78 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = call i64 @atomic_read(i32* %83)
  %85 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %86 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %60
  %90 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @dasd_3990_erp_disable_path(%struct.dasd_device* %90, i32 %91)
  br label %93

93:                                               ; preds = %24, %89, %60
  ret void
}

declare dso_local i32 @pathmask_to_pos(i32) #1

declare dso_local i64 @get_tod_clock(...) #1

declare dso_local i32 @tod_to_ns(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dasd_3990_erp_disable_path(%struct.dasd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
