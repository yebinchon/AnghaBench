; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antenna_sel = type { i32*, i32 }
%struct.rt2x00_dev = type { i64 }
%struct.antenna_setup = type { i64, i64 }

@ANTENNA_SW_DIVERSITY = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@antenna_sel_a = common dso_local global %struct.antenna_sel* null, align 8
@antenna_sel_bg = common dso_local global %struct.antenna_sel* null, align 8
@PHY_CSR0 = common dso_local global i32 0, align 4
@PHY_CSR0_PA_PE_BG = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@PHY_CSR0_PA_PE_A = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@RF2527 = common dso_local global i32 0, align 4
@RF2529 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca %struct.antenna_sel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %9 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %10 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %16 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_a, align 8
  store %struct.antenna_sel* %30, %struct.antenna_sel** %5, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = call i32 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev* %31)
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_bg, align 8
  store %struct.antenna_sel* %34, %struct.antenna_sel** %5, align 8
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = call i32 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %29
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_a, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.antenna_sel* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load %struct.antenna_sel*, %struct.antenna_sel** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %45, i64 %47
  %49 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.antenna_sel*, %struct.antenna_sel** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %51, i64 %53
  %55 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %44, i32 %50, i32 %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = load i32, i32* @PHY_CSR0, align 4
  %68 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @PHY_CSR0_PA_PE_BG, align 4
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @rt2x00_set_field32(i32* %8, i32 %69, i32 %75)
  %77 = load i32, i32* @PHY_CSR0_PA_PE_A, align 4
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @rt2x00_set_field32(i32* %8, i32 %77, i32 %83)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @PHY_CSR0, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %85, i32 %86, i32 %87)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %90 = load i32, i32* @RF5225, align 4
  %91 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %65
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %95 = load i32, i32* @RF5325, align 4
  %96 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %65
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %100 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %101 = call i32 @rt61pci_config_antenna_5x(%struct.rt2x00_dev* %99, %struct.antenna_setup* %100)
  br label %131

102:                                              ; preds = %93
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = load i32, i32* @RF2527, align 4
  %105 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %110 = call i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %108, %struct.antenna_setup* %109)
  br label %130

111:                                              ; preds = %102
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load i32, i32* @RF2529, align 4
  %114 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = call i64 @rt2x00_has_cap_double_antenna(%struct.rt2x00_dev* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %123 = call i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %121, %struct.antenna_setup* %122)
  br label %128

124:                                              ; preds = %116
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %126 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %127 = call i32 @rt61pci_config_antenna_2529(%struct.rt2x00_dev* %125, %struct.antenna_setup* %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130, %98
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.antenna_sel*) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt61pci_config_antenna_5x(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

declare dso_local i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

declare dso_local i64 @rt2x00_has_cap_double_antenna(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt61pci_config_antenna_2529(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
