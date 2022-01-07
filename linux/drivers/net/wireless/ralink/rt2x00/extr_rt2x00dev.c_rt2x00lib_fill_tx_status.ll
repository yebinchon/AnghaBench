; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_fill_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_fill_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32 }
%struct.txdone_entry_desc = type { i32, i32 }

@TXDONE_FALLBACK = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@TXDONE_NO_ACK_REQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@TXDONE_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_tx_info*, %struct.skb_frame_desc*, %struct.txdone_entry_desc*, i32)* @rt2x00lib_fill_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_fill_tx_status(%struct.rt2x00_dev* %0, %struct.ieee80211_tx_info* %1, %struct.skb_frame_desc* %2, %struct.txdone_entry_desc* %3, i32 %4) #0 {
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.skb_frame_desc*, align 8
  %9 = alloca %struct.txdone_entry_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.skb_frame_desc* %2, %struct.skb_frame_desc** %8, align 8
  store %struct.txdone_entry_desc* %3, %struct.txdone_entry_desc** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %16 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %19 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @TXDONE_FALLBACK, align 4
  %22 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %9, align 8
  %23 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %9, align 8
  %28 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 1, %31 ]
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 1
  %36 = call i32 @memset(%struct.TYPE_6__* %35, i32 0, i32 24)
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %98, %32
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %101

50:                                               ; preds = %48
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %62, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %50
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %78, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %101

89:                                               ; preds = %50
  %90 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %40

101:                                              ; preds = %75, %48
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %101
  %116 = load i32, i32* @TXDONE_NO_ACK_REQ, align 4
  %117 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %9, align 8
  %118 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %117, i32 0, i32 1
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %123 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %139 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %149

143:                                              ; preds = %134
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %145 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %137
  br label %150

150:                                              ; preds = %149, %127
  %151 = load i32, i32* @TXDONE_AMPDU, align 4
  %152 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %9, align 8
  %153 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %152, i32 0, i32 1
  %154 = call i64 @test_bit(i32 %151, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %156, %150
  %164 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %165 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %168 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %172 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  br label %181

181:                                              ; preds = %163, %156
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %181
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %191 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %201

195:                                              ; preds = %186
  %196 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %197 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %195, %189
  br label %202

202:                                              ; preds = %201, %181
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
