; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_update_ratr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_update_ratr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@MIMO_PS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RATR0 = common dso_local global i64 0, align 8
@UFWP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_update_ratr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_update_ratr_table(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  store %struct.ieee80211_device* %12, %struct.ieee80211_device** %4, align 8
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @rtl8192_config_rate(%struct.net_device* %16, i32* %6)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 12
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %60 [
    i32 132, label %26
    i32 131, label %29
    i32 130, label %32
    i32 129, label %35
    i32 128, label %35
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 4080
  store i32 %28, i32* %6, align 4
  br label %61

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  br label %61

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 4087
  store i32 %34, i32* %6, align 4
  br label %61

35:                                               ; preds = %1, %1
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MIMO_PS_STATIC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 520199
  store i32 %45, i32* %6, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RF_1T2R, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 1044487
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 260173831
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %43
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %59, %32, %29, %26
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 268435455
  store i32 %63, i32* %6, align 4
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, -2147483648
  store i32 %79, i32* %6, align 4
  br label %98

80:                                               ; preds = %70, %61
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, -2147483648
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %87, %80
  br label %98

98:                                               ; preds = %97, %77
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i64, i64* @RATR0, align 8
  %101 = load i32, i32* %7, align 4
  %102 = mul nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @write_nic_dword(%struct.net_device* %99, i64 %104, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = load i32, i32* @UFWP, align 4
  %109 = call i32 @write_nic_byte(%struct.net_device* %107, i32 %108, i32 1)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
