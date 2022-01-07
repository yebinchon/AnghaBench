; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_stop_sta_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_stop_sta_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.sta_priv }
%struct.xmit_priv = type { i32 }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { %struct.sta_xmit_priv, i32, i32 }
%struct.sta_xmit_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@WIFI_SLEEP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_sta_xmit(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.sta_xmit_priv*, align 8
  %7 = alloca %struct.sta_priv*, align 8
  %8 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.sta_priv* %10, %struct.sta_priv** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.xmit_priv* %12, %struct.xmit_priv** %8, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  store %struct.sta_xmit_priv* %14, %struct.sta_xmit_priv** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %15)
  store %struct.sta_info* %16, %struct.sta_info** %5, align 8
  %17 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %18 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load i32, i32* @WIFI_SLEEP_STATE, align 4
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %30 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %35 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %36 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter* %33, %struct.sta_info* %34, i32* %37)
  %39 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %40 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %45 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %46 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter* %43, %struct.sta_info* %44, i32* %47)
  %49 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %50 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @list_del_init(i32* %51)
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %56 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = call i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter* %53, %struct.sta_info* %54, i32* %57)
  %59 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %60 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @list_del_init(i32* %61)
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %65 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %66 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = call i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter* %63, %struct.sta_info* %64, i32* %67)
  %69 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %70 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @list_del_init(i32* %71)
  %73 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 0
  store %struct.sta_xmit_priv* %74, %struct.sta_xmit_priv** %6, align 8
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %77 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %78 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = call i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter* %75, %struct.sta_info* %76, i32* %79)
  %81 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %6, align 8
  %82 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @list_del_init(i32* %83)
  %85 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %86 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dequeue_xmitframes_to_sleeping_queue(%struct.adapter*, %struct.sta_info*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
