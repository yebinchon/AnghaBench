; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_TOTAL_SIZE_WITH_ALL_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vnt_alloc_bufs fail...\0A\00", align 1
@DEVICE_FLAGS_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c" init register fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @vnt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  store %struct.vnt_private* %8, %struct.vnt_private** %5, align 8
  %9 = load i32, i32* @MAX_TOTAL_SIZE_WITH_ALL_HEADERS, align 4
  %10 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %13 = call i32 @vnt_alloc_bufs(%struct.vnt_private* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %69

22:                                               ; preds = %1
  %23 = load i32, i32* @DEVICE_FLAGS_DISCONNECTED, align 4
  %24 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 3
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %28 = call i32 @vnt_init_registers(%struct.vnt_private* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %54

37:                                               ; preds = %22
  %38 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %39 = call i32 @vnt_key_init_table(%struct.vnt_private* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %54

43:                                               ; preds = %37
  %44 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %47 = call i32 @vnt_int_start_interrupt(%struct.vnt_private* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %52)
  store i32 0, i32* %2, align 4
  br label %71

54:                                               ; preds = %50, %42, %31
  %55 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %56 = call i32 @vnt_free_rx_bufs(%struct.vnt_private* %55)
  %57 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %58 = call i32 @vnt_free_tx_bufs(%struct.vnt_private* %57)
  %59 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %60 = call i32 @vnt_free_int_bufs(%struct.vnt_private* %59)
  %61 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %62 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_kill_urb(i32 %63)
  %65 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_free_urb(i32 %67)
  br label %69

69:                                               ; preds = %54, %16
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %51
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @vnt_alloc_bufs(%struct.vnt_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vnt_init_registers(%struct.vnt_private*) #1

declare dso_local i32 @vnt_key_init_table(%struct.vnt_private*) #1

declare dso_local i32 @vnt_int_start_interrupt(%struct.vnt_private*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @vnt_free_rx_bufs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_free_tx_bufs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_free_int_bufs(%struct.vnt_private*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
