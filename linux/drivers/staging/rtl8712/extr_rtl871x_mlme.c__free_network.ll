; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__free_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__free_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.wlan_network = type { i32, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SCANQUEUE_LIFETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlme_priv*, %struct.wlan_network*)* @_free_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_free_network(%struct.mlme_priv* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.wlan_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.__queue*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %3, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %4, align 8
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %9, i32 0, i32 1
  store %struct.__queue* %10, %struct.__queue** %8, align 8
  %11 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %12 = icmp ne %struct.wlan_network* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %16 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %55

20:                                               ; preds = %14
  %21 = load i32, i32* @jiffies, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %24 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %22, %26
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SCANQUEUE_LIFETIME, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %55

34:                                               ; preds = %20
  %35 = load %struct.__queue*, %struct.__queue** %8, align 8
  %36 = getelementptr inbounds %struct.__queue, %struct.__queue* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %40 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %39, i32 0, i32 0
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %43 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %42, i32 0, i32 0
  %44 = load %struct.__queue*, %struct.__queue** %8, align 8
  %45 = getelementptr inbounds %struct.__queue, %struct.__queue* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.__queue*, %struct.__queue** %8, align 8
  %52 = getelementptr inbounds %struct.__queue, %struct.__queue* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %34, %33, %19, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
