; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_enable_aspm_back_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_enable_aspm_back_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@ASPM_L1_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723be_enable_aspm_back_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_enable_aspm_back_door(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 1635
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %13, i32 1, i32 1635)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 30020
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %21, i32 4, i32 30020)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %24, i32 6)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 47232
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %29, i32 6, i32 47232)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %32, i32 7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 16384
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %37, i32 7, i32 16384)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %40, i32 8)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 36867
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %45, i32 8, i32 36867)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %48, i32 9)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 3331
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %53, i32 9, i32 3331)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %56, i32 10)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 16439
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %61, i32 10, i32 16439)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = call i32 @_rtl8723be_mdio_read(%struct.rtl_priv* %64, i32 11)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 112
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = call i32 @_rtl8723be_mdio_write(%struct.rtl_priv* %69, i32 11, i32 112)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = call i32 @_rtl8723be_dbi_read(%struct.rtl_priv* %72, i32 1807)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @BIT(i32 7)
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ASPM_L1_LATENCY, align 4
  %79 = shl i32 %78, 3
  %80 = or i32 %77, %79
  %81 = call i32 @_rtl8723be_dbi_write(%struct.rtl_priv* %74, i32 1807, i32 %80)
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = call i32 @_rtl8723be_dbi_read(%struct.rtl_priv* %82, i32 1817)
  store i32 %83, i32* %4, align 4
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @BIT(i32 3)
  %87 = or i32 %85, %86
  %88 = call i32 @BIT(i32 4)
  %89 = or i32 %87, %88
  %90 = call i32 @_rtl8723be_dbi_write(%struct.rtl_priv* %84, i32 1817, i32 %89)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723be_mdio_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8723be_mdio_write(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8723be_dbi_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8723be_dbi_write(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
