; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_handle_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_handle_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32*)* }

@WILC_BUS_ACQUIRE_AND_WAKEUP = common dso_local global i32 0, align 4
@DATA_INT_EXT = common dso_local global i32 0, align 4
@ALL_INT_EXT = common dso_local global i32 0, align 4
@WILC_BUS_RELEASE_ALLOW_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_handle_isr(%struct.wilc* %0) #0 {
  %2 = alloca %struct.wilc*, align 8
  %3 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %2, align 8
  %4 = load %struct.wilc*, %struct.wilc** %2, align 8
  %5 = load i32, i32* @WILC_BUS_ACQUIRE_AND_WAKEUP, align 4
  %6 = call i32 @acquire_bus(%struct.wilc* %4, i32 %5)
  %7 = load %struct.wilc*, %struct.wilc** %2, align 8
  %8 = getelementptr inbounds %struct.wilc, %struct.wilc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.wilc*, i32*)*, i32 (%struct.wilc*, i32*)** %10, align 8
  %12 = load %struct.wilc*, %struct.wilc** %2, align 8
  %13 = call i32 %11(%struct.wilc* %12, i32* %3)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DATA_INT_EXT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.wilc*, %struct.wilc** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @wilc_wlan_handle_isr_ext(%struct.wilc* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ALL_INT_EXT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.wilc*, %struct.wilc** %2, align 8
  %29 = call i32 @wilc_unknown_isr_ext(%struct.wilc* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.wilc*, %struct.wilc** %2, align 8
  %32 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %33 = call i32 @release_bus(%struct.wilc* %31, i32 %32)
  ret void
}

declare dso_local i32 @acquire_bus(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_wlan_handle_isr_ext(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_unknown_isr_ext(%struct.wilc*) #1

declare dso_local i32 @release_bus(%struct.wilc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
