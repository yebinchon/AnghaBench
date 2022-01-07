; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_hwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_hwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@BW_OPMODE_5G = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_1SS = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_2SS = common dso_local global i32 0, align 4
@BW_OPMODE = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RATR0 = common dso_local global i32 0, align 4
@UFWP = common dso_local global i32 0, align 4
@RRSR = common dso_local global i32 0, align 4
@RETRY_LIMIT = common dso_local global i32 0, align 4
@RETRY_LIMIT_SHORT_SHIFT = common dso_local global i32 0, align 4
@RETRY_LIMIT_LONG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_hwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_hwconfig(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %66 [
    i32 131, label %16
    i32 133, label %20
    i32 130, label %26
    i32 132, label %34
    i32 129, label %46
    i32 128, label %58
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %1
  %21 = load i32, i32* @BW_OPMODE_5G, align 4
  %22 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RATE_ALL_CCK, align 4
  %29 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @RATE_ALL_CCK, align 4
  %32 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %1
  %35 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @RATE_ALL_CCK, align 4
  %37 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @RATE_ALL_CCK, align 4
  %44 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %66

46:                                               ; preds = %1
  %47 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @RATE_ALL_CCK, align 4
  %49 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @RATE_ALL_CCK, align 4
  %56 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %1
  %59 = load i32, i32* @BW_OPMODE_5G, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %61 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %1, %58, %46, %34, %26, %20, %16
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load i32, i32* @BW_OPMODE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @write_nic_byte(%struct.net_device* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RF_1T2R, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = load i32, i32* @RATR0, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @write_nic_dword(%struct.net_device* %83, i32 %84, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @UFWP, align 4
  %89 = call i32 @write_nic_byte(%struct.net_device* %87, i32 %88, i32 1)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @read_nic_byte(%struct.net_device* %90, i32 787, i32* %6)
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 %92, 24
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 16777215
  %96 = or i32 %93, %95
  store i32 %96, i32* %4, align 4
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @RRSR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @write_nic_dword(%struct.net_device* %97, i32 %98, i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @RETRY_LIMIT, align 4
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RETRY_LIMIT_SHORT_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RETRY_LIMIT_LONG_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %107, %112
  %114 = call i32 @write_nic_word(%struct.net_device* %101, i32 %102, i32 %113)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
