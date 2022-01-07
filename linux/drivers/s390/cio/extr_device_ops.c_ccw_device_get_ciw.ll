; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_ops.c_ccw_device_get_ciw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_ops.c_ccw_device_get_ciw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciw = type { i64 }
%struct.ccw_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ciw* }
%struct.TYPE_5__ = type { i64 }

@MAX_CIWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ciw* @ccw_device_get_ciw(%struct.ccw_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ciw*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.ciw* null, %struct.ciw** %3, align 8
  br label %53

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %49, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_CIWS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.ciw*, %struct.ciw** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ciw, %struct.ciw* %28, i64 %30
  %32 = getelementptr inbounds %struct.ciw, %struct.ciw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %20
  %37 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.ciw*, %struct.ciw** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ciw, %struct.ciw* %44, i64 %46
  store %struct.ciw* %47, %struct.ciw** %3, align 8
  br label %53

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %16

52:                                               ; preds = %16
  store %struct.ciw* null, %struct.ciw** %3, align 8
  br label %53

53:                                               ; preds = %52, %36, %14
  %54 = load %struct.ciw*, %struct.ciw** %3, align 8
  ret %struct.ciw* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
