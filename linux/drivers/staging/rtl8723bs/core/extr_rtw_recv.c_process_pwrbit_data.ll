; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_process_pwrbit_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_process_pwrbit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_pkt_attrib, i32* }
%struct.rx_pkt_attrib = type { i32 }
%struct.sta_info = type { i32 }

@WIFI_SLEEP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_pwrbit_data(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.sta_priv*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %10 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %16 = bitcast %union.recv_frame* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.rx_pkt_attrib* %18, %struct.rx_pkt_attrib** %7, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.sta_priv* %20, %struct.sta_priv** %8, align 8
  store %struct.sta_info* null, %struct.sta_info** %9, align 8
  %21 = load %struct.sta_priv*, %struct.sta_priv** %8, align 8
  %22 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %23 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %21, i32 %24)
  store %struct.sta_info* %25, %struct.sta_info** %9, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call zeroext i8 @GetPwrMgt(i32* %26)
  store i8 %27, i8* %5, align 1
  %28 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %29 = icmp ne %struct.sta_info* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load i8, i8* %5, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WIFI_SLEEP_STATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %43 = call i32 @stop_sta_xmit(%struct.adapter* %41, %struct.sta_info* %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %57

45:                                               ; preds = %30
  %46 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WIFI_SLEEP_STATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %55 = call i32 @wakeup_sta_to_xmit(%struct.adapter* %53, %struct.sta_info* %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local zeroext i8 @GetPwrMgt(i32*) #1

declare dso_local i32 @stop_sta_xmit(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @wakeup_sta_to_xmit(%struct.adapter*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
