; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_setload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_setload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sp805_wdt = type { i32, i32, i32 }

@LOAD_MAX = common dso_local global i32 0, align 4
@LOAD_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @wdt_setload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_setload(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sp805_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.sp805_wdt* %9, %struct.sp805_wdt** %5, align 8
  %10 = load %struct.sp805_wdt*, %struct.sp805_wdt** %5, align 8
  %11 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @div_u64(i32 %13, i32 2)
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %14, %15
  %17 = sub i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LOAD_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @LOAD_MAX, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LOAD_MIN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @LOAD_MIN, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sp805_wdt*, %struct.sp805_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %36, i32 0, i32 2
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sp805_wdt*, %struct.sp805_wdt** %5, align 8
  %41 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %43, 2
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @div_u64(i32 %47, i32 %48)
  %50 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %51 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sp805_wdt*, %struct.sp805_wdt** %5, align 8
  %53 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  ret i32 0
}

declare dso_local %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
