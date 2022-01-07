; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c___raw3270_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c___raw3270_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i64, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@TW_KR = common dso_local global i32 0, align 4
@TC_EWRITEA = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@raw3270_reset_device_cb = common dso_local global i32 0, align 4
@RAW3270_STATE_INIT = common dso_local global i64 0, align 8
@RAW3270_STATE_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*)* @__raw3270_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__raw3270_reset_device(%struct.raw3270* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %3, align 8
  %5 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %6 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load i32, i32* @TW_KR, align 4
  %15 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %16 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @TC_EWRITEA, align 4
  %20 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %21 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @CCW_FLAG_SLI, align 4
  %25 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %26 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %30 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %34 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @__pa(i32* %35)
  %37 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %38 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 %36, i64* %40, align 8
  %41 = load i32, i32* @raw3270_reset_device_cb, align 4
  %42 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %43 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %46 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %47 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %46, i32 0, i32 2
  %48 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %49 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %48, i32 0, i32 1
  %50 = call i32 @__raw3270_start(%struct.raw3270* %45, i32* %47, %struct.TYPE_4__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %13
  %54 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %55 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RAW3270_STATE_INIT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @RAW3270_STATE_RESET, align 8
  %61 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %62 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53, %13
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @__raw3270_start(%struct.raw3270*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
