; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_enable_aspm_back_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_enable_aspm_back_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl88ee_enable_aspm_back_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_enable_aspm_back_door(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = call i32 @rtl_write_word(%struct.rtl_priv* %13, i32 852, i32 33028)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = call i32 @rtl_write_word(%struct.rtl_priv* %15, i32 856, i32 36)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = call i32 @rtl_write_word(%struct.rtl_priv* %17, i32 848, i32 1804)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = call i32 @rtl_write_byte(%struct.rtl_priv* %19, i32 850, i32 2)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = call i64 @rtl_read_byte(%struct.rtl_priv* %21, i32 850)
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %31, %1
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 20
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = call i32 @udelay(i32 10)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = call i64 @rtl_read_byte(%struct.rtl_priv* %33, i32 850)
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %23

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = call i32 @rtl_read_dword(%struct.rtl_priv* %41, i32 844)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @BIT(i32 31)
  %46 = or i32 %44, %45
  %47 = call i32 @rtl_write_dword(%struct.rtl_priv* %43, i32 840, i32 %46)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = call i32 @rtl_write_word(%struct.rtl_priv* %48, i32 848, i32 63244)
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = call i32 @rtl_write_byte(%struct.rtl_priv* %50, i32 850, i32 1)
  br label %52

52:                                               ; preds = %40, %37
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = call i64 @rtl_read_byte(%struct.rtl_priv* %53, i32 850)
  store i64 %54, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %63, %52
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 20
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = call i32 @udelay(i32 10)
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = call i64 @rtl_read_byte(%struct.rtl_priv* %65, i32 850)
  store i64 %66, i64* %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %55

69:                                               ; preds = %61
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = call i32 @rtl_write_word(%struct.rtl_priv* %70, i32 848, i32 1816)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %72, i32 850, i32 2)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = call i64 @rtl_read_byte(%struct.rtl_priv* %74, i32 850)
  store i64 %75, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %84, %69
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 20
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ false, %76 ], [ %81, %79 ]
  br i1 %83, label %84, label %90

84:                                               ; preds = %82
  %85 = call i32 @udelay(i32 10)
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %87 = call i64 @rtl_read_byte(%struct.rtl_priv* %86, i32 850)
  store i64 %87, i64* %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %76

90:                                               ; preds = %82
  %91 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %92 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %5, align 8
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %95, %90
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %100 = call i32 @rtl_read_dword(%struct.rtl_priv* %99, i32 844)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @BIT(i32 11)
  %104 = or i32 %102, %103
  %105 = call i32 @BIT(i32 12)
  %106 = or i32 %104, %105
  %107 = call i32 @rtl_write_dword(%struct.rtl_priv* %101, i32 840, i32 %106)
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = call i32 @rtl_write_word(%struct.rtl_priv* %108, i32 848, i32 63256)
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = call i32 @rtl_write_byte(%struct.rtl_priv* %110, i32 850, i32 1)
  br label %112

112:                                              ; preds = %98, %95
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %114 = call i64 @rtl_read_byte(%struct.rtl_priv* %113, i32 850)
  store i64 %114, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %123, %112
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 20
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = call i32 @udelay(i32 10)
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = call i64 @rtl_read_byte(%struct.rtl_priv* %125, i32 850)
  store i64 %126, i64* %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %115

129:                                              ; preds = %121
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i64 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
