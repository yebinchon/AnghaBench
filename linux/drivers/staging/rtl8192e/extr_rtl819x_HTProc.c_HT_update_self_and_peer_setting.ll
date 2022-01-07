; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HT_update_self_and_peer_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HT_update_self_and_peer_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i32, i64 }
%struct.rtllib_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ht_info_ele = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HT_update_self_and_peer_setting(%struct.rtllib_device* %0, %struct.rtllib_network* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.rtllib_network*, align 8
  %5 = alloca %struct.rt_hi_throughput*, align 8
  %6 = alloca %struct.ht_info_ele*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store %struct.rtllib_network* %1, %struct.rtllib_network** %4, align 8
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %8, align 8
  store %struct.rt_hi_throughput* %9, %struct.rt_hi_throughput** %5, align 8
  %10 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %11 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ht_info_ele*
  store %struct.ht_info_ele* %14, %struct.ht_info_ele** %6, align 8
  %15 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %16 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.ht_info_ele*, %struct.ht_info_ele** %6, align 8
  %27 = getelementptr inbounds %struct.ht_info_ele, %struct.ht_info_ele* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %30 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
