; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTIOTActDetermineRaFunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTIOTActDetermineRaFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i64, i32, i32 }

@HT_IOT_RAFUNC_DISABLE_ALL = common dso_local global i32 0, align 4
@HT_IOT_PEER_RALINK = common dso_local global i64 0, align 8
@HT_IOT_RAFUNC_PEER_1R = common dso_local global i32 0, align 4
@HT_IOT_ACT_AMSDU_ENABLE = common dso_local global i32 0, align 4
@HT_IOT_RAFUNC_TX_AMSDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i32)* @HTIOTActDetermineRaFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HTIOTActDetermineRaFunc(%struct.rtllib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_hi_throughput*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %7 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %6, i32 0, i32 0
  %8 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  store %struct.rt_hi_throughput* %8, %struct.rt_hi_throughput** %5, align 8
  %9 = load i32, i32* @HT_IOT_RAFUNC_DISABLE_ALL, align 4
  %10 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %11 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %15 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HT_IOT_PEER_RALINK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @HT_IOT_RAFUNC_PEER_1R, align 4
  %24 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %25 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %19, %2
  %29 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %30 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HT_IOT_ACT_AMSDU_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @HT_IOT_RAFUNC_TX_AMSDU, align 4
  %37 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %5, align 8
  %38 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
