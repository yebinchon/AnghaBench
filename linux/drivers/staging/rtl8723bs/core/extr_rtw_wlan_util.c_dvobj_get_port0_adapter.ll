; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_dvobj_get_port0_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_dvobj_get_port0_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { %struct.adapter* }

@i = common dso_local global i64 0, align 8
@IFACE_PORT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.adapter* @dvobj_get_port0_adapter(%struct.dvobj_priv* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %3, align 8
  %4 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %5 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %4, i32 0, i32 0
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  %7 = load i64, i64* @i, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i64 %7
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @get_iface_type(i32 %10)
  %12 = load i64, i64* @IFACE_PORT0, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.adapter* null, %struct.adapter** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %2, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  ret %struct.adapter* %20
}

declare dso_local i64 @get_iface_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
