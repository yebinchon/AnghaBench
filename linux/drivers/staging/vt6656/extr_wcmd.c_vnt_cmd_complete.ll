; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_wcmd.c_vnt_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_wcmd.c_vnt_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32, i32, i32*, i64, i32 }

@WLAN_CMD_IDLE = common dso_local global i32 0, align 4
@CMD_Q_SIZE = common dso_local global i64 0, align 8
@WLAN_CMD_INIT_MAC80211_START = common dso_local global i32 0, align 4
@WLAN_CMD_TBTT_WAKEUP_START = common dso_local global i32 0, align 4
@WLAN_CMD_BECON_SEND_START = common dso_local global i32 0, align 4
@WLAN_CMD_SETPOWER_START = common dso_local global i32 0, align 4
@WLAN_CMD_CHANGE_ANTENNA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @vnt_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_cmd_complete(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %4 = load i32, i32* @WLAN_CMD_IDLE, align 4
  %5 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 8
  %7 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CMD_Q_SIZE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  store i32 1, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CMD_Q_SIZE, align 8
  %30 = call i32 @ADD_ONE_WITH_WRAP_AROUND(i64 %28, i64 %29)
  %31 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %60 [
    i32 130, label %40
    i32 128, label %44
    i32 132, label %48
    i32 129, label %52
    i32 131, label %56
  ]

40:                                               ; preds = %15
  %41 = load i32, i32* @WLAN_CMD_INIT_MAC80211_START, align 4
  %42 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  br label %61

44:                                               ; preds = %15
  %45 = load i32, i32* @WLAN_CMD_TBTT_WAKEUP_START, align 4
  %46 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %61

48:                                               ; preds = %15
  %49 = load i32, i32* @WLAN_CMD_BECON_SEND_START, align 4
  %50 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  br label %61

52:                                               ; preds = %15
  %53 = load i32, i32* @WLAN_CMD_SETPOWER_START, align 4
  %54 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  br label %61

56:                                               ; preds = %15
  %57 = load i32, i32* @WLAN_CMD_CHANGE_ANTENNA_START, align 4
  %58 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %59 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  br label %61

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60, %56, %52, %48, %44, %40
  %62 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %63 = call i32 @vnt_cmd_timer_wait(%struct.vnt_private* %62, i32 0)
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ADD_ONE_WITH_WRAP_AROUND(i64, i64) #1

declare dso_local i32 @vnt_cmd_timer_wait(%struct.vnt_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
