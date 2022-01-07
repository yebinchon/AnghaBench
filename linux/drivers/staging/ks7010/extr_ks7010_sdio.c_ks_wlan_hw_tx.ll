; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_wlan_hw_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64* }
%struct.sk_buff = type { i32 }
%struct.hostif_hdr = type { i32 }

@HIF_DATA_REQ = common dso_local global i64 0, align 8
@HIF_REQ_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown event=%04X\0A\00", align 1
@SME_EVENT_BUFF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ks_wlan_hw_tx(%struct.ks_wlan_private* %0, i8* %1, i64 %2, void (%struct.ks_wlan_private*, %struct.sk_buff*)* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ks_wlan_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (%struct.ks_wlan_private*, %struct.sk_buff*)*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostif_hdr*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store void (%struct.ks_wlan_private*, %struct.sk_buff*)* %3, void (%struct.ks_wlan_private*, %struct.sk_buff*)** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.hostif_hdr*
  store %struct.hostif_hdr* %15, %struct.hostif_hdr** %13, align 8
  %16 = load %struct.hostif_hdr*, %struct.hostif_hdr** %13, align 8
  %17 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = load i64, i64* @HIF_DATA_REQ, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.hostif_hdr*, %struct.hostif_hdr** %13, align 8
  %24 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = load i64, i64* @HIF_REQ_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22, %5
  %30 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %31 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hostif_hdr*, %struct.hostif_hdr** %13, align 8
  %34 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %6, align 4
  br label %88

37:                                               ; preds = %22
  %38 = load %struct.hostif_hdr*, %struct.hostif_hdr** %13, align 8
  %39 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %43 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %47 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  store i64 %41, i64* %50, align 8
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = load i32, i32* @SME_EVENT_BUFF_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = urem i64 %55, %57
  %59 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %60 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %63 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load void (%struct.ks_wlan_private*, %struct.sk_buff*)*, void (%struct.ks_wlan_private*, %struct.sk_buff*)** %10, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i32 @enqueue_txdev(%struct.ks_wlan_private* %66, i8* %67, i64 %68, void (%struct.ks_wlan_private*, %struct.sk_buff*)* %69, %struct.sk_buff* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %73 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %77 = call i64 @txq_has_space(%struct.ks_wlan_private* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %37
  %80 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %81 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %7, align 8
  %84 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %83, i32 0, i32 0
  %85 = call i32 @queue_delayed_work(i32 %82, i32* %84, i32 0)
  br label %86

86:                                               ; preds = %79, %37
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %29
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @enqueue_txdev(%struct.ks_wlan_private*, i8*, i64, void (%struct.ks_wlan_private*, %struct.sk_buff*)*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @txq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
