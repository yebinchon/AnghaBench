; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_MgntQuery_MgntFrameTxRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_MgntQuery_MgntFrameTxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i32, i32 }

@HT_IOT_ACT_MGNT_USE_CCK_6M = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i64 0, align 8
@IEEE_N_5G = common dso_local global i64 0, align 8
@IEEE_N_24G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*)* @MgntQuery_MgntFrameTxRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MgntQuery_MgntFrameTxRate(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.rt_hi_throughput*, align 8
  %4 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 2
  %7 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %6, align 8
  store %struct.rt_hi_throughput* %7, %struct.rt_hi_throughput** %3, align 8
  %8 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %9 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HT_IOT_ACT_MGNT_USE_CCK_6M, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 12, i32* %4, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 127
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE_A, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %23
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %31 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE_N_5G, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE_N_24G, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %43 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %29, %23
  store i32 12, i32* %4, align 4
  br label %48

47:                                               ; preds = %41, %35
  store i32 2, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
