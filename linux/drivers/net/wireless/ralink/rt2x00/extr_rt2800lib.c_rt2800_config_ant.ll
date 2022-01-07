; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@RT3572 = common dso_local global i32 0, align 4
@BBP1_TX_ANTENNA = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@BBP3_RX_ANTENNA = common dso_local global i32 0, align 4
@BBP3_RX_ADC = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %10, i32 3)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @RT3572, align 4
  %14 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = call i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = call i32 @rt2800_config_3572bt_ant(%struct.rt2x00_dev* %21)
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %25 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %49 [
    i32 1, label %27
    i32 2, label %30
    i32 3, label %46
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %29 = call i32 @rt2x00_set_field8(i32* %5, i32 %28, i32 0)
  br label %49

30:                                               ; preds = %23
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* @RT3572, align 4
  %33 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %41 = call i32 @rt2x00_set_field8(i32* %5, i32 %40, i32 1)
  br label %45

42:                                               ; preds = %35, %30
  %43 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %44 = call i32 @rt2x00_set_field8(i32* %5, i32 %43, i32 2)
  br label %45

45:                                               ; preds = %42, %39
  br label %49

46:                                               ; preds = %23
  %47 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %5, i32 %47, i32 2)
  br label %49

49:                                               ; preds = %23, %46, %45, %27
  %50 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %51 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %122 [
    i32 1, label %53
    i32 2, label %92
    i32 3, label %119
  ]

53:                                               ; preds = %49
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @RT3070, align 4
  %56 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = load i32, i32* @RT3090, align 4
  %61 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @RT3352, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* @RT3390, align 4
  %71 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68, %63, %58, %53
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %76 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %79 = call i32 @rt2x00_get_field16(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %84 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev* %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %73
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %91 = call i32 @rt2x00_set_field8(i32* %6, i32 %90, i32 0)
  br label %122

92:                                               ; preds = %49
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = load i32, i32* @RT3572, align 4
  %95 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = call i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i32, i32* @BBP3_RX_ADC, align 4
  %103 = call i32 @rt2x00_set_field8(i32* %6, i32 %102, i32 1)
  %104 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %106 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @rt2x00_set_field8(i32* %6, i32 %104, i32 %110)
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load i32, i32* @ANTENNA_B, align 4
  %114 = call i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev* %112, i32 %113)
  br label %118

115:                                              ; preds = %97, %92
  %116 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %117 = call i32 @rt2x00_set_field8(i32* %6, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %115, %101
  br label %122

119:                                              ; preds = %49
  %120 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %121 = call i32 @rt2x00_set_field8(i32* %6, i32 %120, i32 2)
  br label %122

122:                                              ; preds = %49, %119, %118, %89
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %123, i32 3, i32 %124)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %126, i32 1, i32 %127)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %130 = load i32, i32* @RT3593, align 4
  %131 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %122
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %135 = load i32, i32* @RT3883, align 4
  %136 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133, %122
  %139 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %140 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %145 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %144, i32 86, i32 0)
  br label %149

146:                                              ; preds = %138
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %148 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %147, i32 86, i32 70)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %133
  ret void
}

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_config_3572bt_ant(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
