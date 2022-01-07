; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wusbhc.c_wusbhc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wusbhc.c_wusbhc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, i32, i32, i64, i32 }

@WUSB_TRUST_TIMEOUT_MS = common dso_local global i32 0, align 4
@UWB_PHY_RATE_INVALID = common dso_local global i64 0, align 8
@WUSB_RETRY_COUNT_INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_create(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @WUSB_TRUST_TIMEOUT_MS, align 4
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  %8 = load i64, i64* @UWB_PHY_RATE_INVALID, align 8
  %9 = sub nsw i64 %8, 1
  %10 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %11 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  %16 = load i32, i32* @WUSB_RETRY_COUNT_INFINITE, align 4
  %17 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %18 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %20 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %23 = call i32 @wusbhc_mmcie_create(%struct.wusbhc* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %55

27:                                               ; preds = %1
  %28 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %29 = call i32 @wusbhc_devconnect_create(%struct.wusbhc* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %35 = call i32 @wusbhc_rh_create(%struct.wusbhc* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %49

39:                                               ; preds = %33
  %40 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %41 = call i32 @wusbhc_sec_create(%struct.wusbhc* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %57

46:                                               ; preds = %44
  %47 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %48 = call i32 @wusbhc_rh_destroy(%struct.wusbhc* %47)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %51 = call i32 @wusbhc_devconnect_destroy(%struct.wusbhc* %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %54 = call i32 @wusbhc_mmcie_destroy(%struct.wusbhc* %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @wusbhc_mmcie_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rh_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rh_destroy(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_destroy(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_mmcie_destroy(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
