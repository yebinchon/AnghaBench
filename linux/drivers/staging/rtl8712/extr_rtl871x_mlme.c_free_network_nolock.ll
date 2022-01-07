; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_free_network_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_free_network_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.wlan_network = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlme_priv*, %struct.wlan_network*)* @free_network_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_network_nolock(%struct.mlme_priv* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.wlan_network*, align 8
  %5 = alloca %struct.__queue*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %3, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %4, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %6, i32 0, i32 1
  store %struct.__queue* %7, %struct.__queue** %5, align 8
  %8 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %9 = icmp ne %struct.wlan_network* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %13 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %19 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %18, i32 0, i32 0
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %21, i32 0, i32 0
  %23 = load %struct.__queue*, %struct.__queue** %5, align 8
  %24 = getelementptr inbounds %struct.__queue, %struct.__queue* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
