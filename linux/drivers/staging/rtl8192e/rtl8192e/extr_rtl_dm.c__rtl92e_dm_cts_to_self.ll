; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_cts_to_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_cts_to_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i64, i32 }

@_rtl92e_dm_cts_to_self.lastTxOkCnt = internal global i64 0, align 8
@_rtl92e_dm_cts_to_self.lastRxOkCnt = internal global i64 0, align 8
@HT_IOT_ACT_FORCED_CTS2SELF = common dso_local global i32 0, align 4
@HT_IOT_PEER_BROADCOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_cts_to_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_cts_to_self(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rt_hi_throughput*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %3, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %12, align 8
  store %struct.rt_hi_throughput* %13, %struct.rt_hi_throughput** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @HT_IOT_ACT_FORCED_CTS2SELF, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %24 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %72

27:                                               ; preds = %1
  %28 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %29 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HT_IOT_PEER_BROADCOM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @_rtl92e_dm_cts_to_self.lastTxOkCnt, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %5, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @_rtl92e_dm_cts_to_self.lastRxOkCnt, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 4, %47
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load i32, i32* @HT_IOT_ACT_FORCED_CTS2SELF, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %54 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %63

57:                                               ; preds = %33
  %58 = load i32, i32* @HT_IOT_ACT_FORCED_CTS2SELF, align 4
  %59 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %60 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* @_rtl92e_dm_cts_to_self.lastTxOkCnt, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @_rtl92e_dm_cts_to_self.lastRxOkCnt, align 8
  br label %72

72:                                               ; preds = %20, %63, %27
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
