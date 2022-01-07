; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_ps_tx_ack_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_ps_tx_ack_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32, i32, i32, i32 (i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ps_tx_ack(%struct.ieee80211_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i16, i16* %4, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 6
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %23(i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %18, %15
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i16, i16* %4, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 2
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %49 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %48, i32 0)
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 2
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %43, %40, %35
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 1
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
