; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_ps_tx_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_ps_tx_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@LPS_WAIT_NULL_DATA_SEND = common dso_local global i64 0, align 8
@LPS_IS_SLEEP = common dso_local global i64 0, align 8
@LPS_IS_WAKE = common dso_local global i64 0, align 8
@HT_IOT_ACT_NULL_DATA_POWER_SAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_ps_tx_ack(%struct.rtllib_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LPS_WAIT_NULL_DATA_SEND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load i16, i16* %4, align 2
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i64, i64* @LPS_IS_SLEEP, align 8
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 6
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %25(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %19, %16
  br label %68

34:                                               ; preds = %2
  %35 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %36 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LPS_IS_WAKE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load i16, i16* %4, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 2
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HT_IOT_ACT_NULL_DATA_POWER_SAVING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %58 = call i32 @rtllib_sta_ps_send_null_frame(%struct.rtllib_device* %57, i32 0)
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %61 = call i32 @rtllib_sta_ps_send_pspoll_frame(%struct.rtllib_device* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %64 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %63, i32 0, i32 2
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %40, %34
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 1
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtllib_sta_ps_send_null_frame(%struct.rtllib_device*, i32) #1

declare dso_local i32 @rtllib_sta_ps_send_pspoll_frame(%struct.rtllib_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
