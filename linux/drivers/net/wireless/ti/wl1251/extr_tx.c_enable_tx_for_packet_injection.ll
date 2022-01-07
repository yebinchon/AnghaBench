; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_enable_tx_for_packet_injection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_enable_tx_for_packet_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32, i32, i32 }

@BSS_TYPE_STA_BSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"join failed\00", align 1
@JOIN_EVENT_COMPLETE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"join timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @enable_tx_for_packet_injection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_tx_for_packet_injection(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = load i32, i32* @BSS_TYPE_STA_BSS, align 4
  %6 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %13 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wl1251_cmd_join(%struct.wl1251* %4, i32 %5, i32 %8, i32 %11, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @wl1251_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %22 = load i32, i32* @JOIN_EVENT_COMPLETE_ID, align 4
  %23 = call i32 @wl1251_event_wait(%struct.wl1251* %21, i32 %22, i32 100)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @wl1251_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %26, %18
  ret void
}

declare dso_local i32 @wl1251_cmd_join(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @wl1251_event_wait(%struct.wl1251*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
