; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_process_wmmps_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_process_wmmps_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i32 }
%struct.sta_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@WIFI_SLEEP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_wmmps_data(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.sta_priv*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %9 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %10 = bitcast %union.recv_frame* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.rx_pkt_attrib* %12, %struct.rx_pkt_attrib** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.sta_priv* %14, %struct.sta_priv** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  %15 = load %struct.sta_priv*, %struct.sta_priv** %6, align 8
  %16 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %17 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %15, i32 %18)
  store %struct.sta_info* %19, %struct.sta_info** %7, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %21 = icmp ne %struct.sta_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %95

29:                                               ; preds = %23
  %30 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 15
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %95

36:                                               ; preds = %29
  %37 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WIFI_SLEEP_STATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %95

43:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %66 [
    i32 1, label %47
    i32 2, label %47
    i32 4, label %53
    i32 5, label %53
    i32 6, label %59
    i32 7, label %59
    i32 0, label %65
    i32 3, label %65
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @BIT(i32 1)
  %52 = and i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %72

53:                                               ; preds = %43, %43
  %54 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BIT(i32 1)
  %58 = and i32 %56, %57
  store i32 %58, i32* %8, align 4
  br label %72

59:                                               ; preds = %43, %43
  %60 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BIT(i32 1)
  %64 = and i32 %62, %63
  store i32 %64, i32* %8, align 4
  br label %72

65:                                               ; preds = %43, %43
  br label %66

66:                                               ; preds = %43, %65
  %67 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BIT(i32 1)
  %71 = and i32 %69, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %59, %53, %47
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %83 = call i32 @xmit_delivery_enabled_frames(%struct.adapter* %81, %struct.sta_info* %82)
  br label %93

84:                                               ; preds = %75
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %90 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @issue_qos_nulldata(%struct.adapter* %85, i32 %88, i32 %91, i32 0, i32 0)
  br label %93

93:                                               ; preds = %84, %80
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %22, %28, %35, %94, %36
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xmit_delivery_enabled_frames(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @issue_qos_nulldata(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
