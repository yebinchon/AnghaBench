; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_disassociate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i64, i32, i32, i32 (i32)* }

@IEEE_SOFTMAC_TX_QUEUE = common dso_local global i32 0, align 4
@RTLLIB_NOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_disassociate(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %3 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %4 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netif_carrier_off(i32 %5)
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE_SOFTMAC_TX_QUEUE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %15 = call i32 @rtllib_reset_queue(%struct.rtllib_device* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %18 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %17, i32 0, i32 6
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %23 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %22, i32 0, i32 6
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %31 = call i64 @IS_DOT11D_ENABLE(%struct.rtllib_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %35 = call i32 @dot11d_reset(%struct.rtllib_device* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @RTLLIB_NOLINK, align 4
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 2
  %46 = call i32 @schedule_delayed_work(i32* %45, i32 0)
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %48 = call i32 @notify_wx_assoc_event(%struct.rtllib_device* %47)
  ret void
}

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @rtllib_reset_queue(%struct.rtllib_device*) #1

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.rtllib_device*) #1

declare dso_local i32 @dot11d_reset(%struct.rtllib_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
