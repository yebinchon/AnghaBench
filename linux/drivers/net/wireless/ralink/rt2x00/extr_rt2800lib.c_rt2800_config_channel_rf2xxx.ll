; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf2xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf2xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.channel_info = type { i32, i32 }

@RF4_FREQ_OFFSET = common dso_local global i32 0, align 4
@RF2_ANTENNA_TX1 = common dso_local global i32 0, align 4
@RF2_ANTENNA_RX1 = common dso_local global i32 0, align 4
@RF2_ANTENNA_RX2 = common dso_local global i32 0, align 4
@RF3_TXPOWER_A_7DBM_BOOST = common dso_local global i32 0, align 4
@RF3_TXPOWER_A = common dso_local global i32 0, align 4
@RF4_TXPOWER_A_7DBM_BOOST = common dso_local global i32 0, align 4
@RF4_TXPOWER_A = common dso_local global i32 0, align 4
@RF3_TXPOWER_G = common dso_local global i32 0, align 4
@RF4_TXPOWER_G = common dso_local global i32 0, align 4
@RF4_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf2xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf2xxx(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %9 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %10 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %9, i32 0, i32 0
  %11 = load i32, i32* @RF4_FREQ_OFFSET, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rt2x00_set_field32(i32* %10, i32 %11, i32 %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %23 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %22, i32 0, i32 1
  %24 = load i32, i32* @RF2_ANTENNA_TX1, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %34 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %33, i32 0, i32 1
  %35 = load i32, i32* @RF2_ANTENNA_RX1, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %34, i32 %35, i32 1)
  %37 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %38 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %37, i32 0, i32 1
  %39 = load i32, i32* @RF2_ANTENNA_RX2, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %38, i32 %39, i32 1)
  br label %53

41:                                               ; preds = %26
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %49 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %48, i32 0, i32 1
  %50 = load i32, i32* @RF2_ANTENNA_RX2, align 4
  %51 = call i32 @rt2x00_set_field32(i32* %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %55 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 14
  br i1 %57, label %58, label %111

58:                                               ; preds = %53
  %59 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %60 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %59, i32 0, i32 3
  %61 = load i32, i32* @RF3_TXPOWER_A_7DBM_BOOST, align 4
  %62 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %63 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @rt2x00_set_field32(i32* %60, i32 %61, i32 %66)
  %68 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %69 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %74 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 7
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %79 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %78, i32 0, i32 3
  %80 = load i32, i32* @RF3_TXPOWER_A, align 4
  %81 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %82 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rt2x00_set_field32(i32* %79, i32 %80, i32 %83)
  %85 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %86 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %85, i32 0, i32 0
  %87 = load i32, i32* @RF4_TXPOWER_A_7DBM_BOOST, align 4
  %88 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %89 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @rt2x00_set_field32(i32* %86, i32 %87, i32 %92)
  %94 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %95 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %77
  %99 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %100 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 7
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %77
  %104 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %105 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %104, i32 0, i32 0
  %106 = load i32, i32* @RF4_TXPOWER_A, align 4
  %107 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %108 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rt2x00_set_field32(i32* %105, i32 %106, i32 %109)
  br label %126

111:                                              ; preds = %53
  %112 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %113 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %112, i32 0, i32 3
  %114 = load i32, i32* @RF3_TXPOWER_G, align 4
  %115 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %116 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rt2x00_set_field32(i32* %113, i32 %114, i32 %117)
  %119 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %120 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %119, i32 0, i32 0
  %121 = load i32, i32* @RF4_TXPOWER_G, align 4
  %122 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %123 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rt2x00_set_field32(i32* %120, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %111, %103
  %127 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %128 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %127, i32 0, i32 0
  %129 = load i32, i32* @RF4_HT40, align 4
  %130 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %131 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %130)
  %132 = call i32 @rt2x00_set_field32(i32* %128, i32 %129, i32 %131)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %134 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %135 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %133, i32 1, i32 %136)
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %139 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %140 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %138, i32 2, i32 %141)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %144 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %145 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, -5
  %148 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %143, i32 3, i32 %147)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %151 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %149, i32 4, i32 %152)
  %154 = call i32 @udelay(i32 200)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %156 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %157 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %155, i32 1, i32 %158)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %161 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %162 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %160, i32 2, i32 %163)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %166 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %167 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, 4
  %170 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %165, i32 3, i32 %169)
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %172 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %173 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %171, i32 4, i32 %174)
  %176 = call i32 @udelay(i32 200)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %178 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %179 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %177, i32 1, i32 %180)
  %182 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %183 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %184 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %182, i32 2, i32 %185)
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %188 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %189 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, -5
  %192 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %187, i32 3, i32 %191)
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %194 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %195 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @rt2800_rf_write(%struct.rt2x00_dev* %193, i32 4, i32 %196)
  ret void
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_rf_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
