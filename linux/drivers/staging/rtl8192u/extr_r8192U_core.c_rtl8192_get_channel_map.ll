; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_get_channel_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_get_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@COUNTRY_CODE_GLOBAL_DOMAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"rtl8180_init: Error channel plan! Set to default.\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Channel plan is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_get_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_get_channel_map(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @COUNTRY_CODE_GLOBAL_DOMAIN, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netdev_err(%struct.net_device* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @COMP_INIT, align 4
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @RT_TRACE(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = call i32 @rtl819x_set_channel_map(i64 %24, %struct.r8192_priv* %25)
  ret i16 0
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @rtl819x_set_channel_map(i64, %struct.r8192_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
