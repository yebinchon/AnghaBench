; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32** }
%struct.skb_frame_desc = type { i32* }
%struct.txdone_entry_desc = type { i32, i64 }

@TXWI_W0_MCS = common dso_local global i32 0, align 4
@TXWI_W0_AMPDU = common dso_local global i32 0, align 4
@TX_STA_FIFO_MCS = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_AGGRE = common dso_local global i32 0, align 4
@TX_STA_FIFO_WCID = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_ACK_REQUIRED = common dso_local global i32 0, align 4
@TXDONE_AMPDU = common dso_local global i32 0, align 4
@TXDONE_NO_ACK_REQ = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@TXDONE_FALLBACK = common dso_local global i32 0, align 4
@WCID_START = common dso_local global i32 0, align 4
@WCID_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_txdone_entry(%struct.queue_entry* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.queue_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  %10 = alloca %struct.rt2800_drv_data*, align 8
  %11 = alloca %struct.skb_frame_desc*, align 8
  %12 = alloca %struct.txdone_entry_desc, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %23, align 8
  store %struct.rt2x00_dev* %24, %struct.rt2x00_dev** %9, align 8
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 2
  %27 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %26, align 8
  store %struct.rt2800_drv_data* %27, %struct.rt2800_drv_data** %10, align 8
  %28 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %29 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %30)
  store %struct.skb_frame_desc* %31, %struct.skb_frame_desc** %11, align 8
  %32 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @rt2x00_desc_read(i32* %33, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @TXWI_W0_MCS, align 4
  %37 = call i32 @rt2x00_get_field32(i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @TXWI_W0_AMPDU, align 4
  %40 = call i32 @rt2x00_get_field32(i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TX_STA_FIFO_MCS, align 4
  %43 = call i32 @rt2x00_get_field32(i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TX_STA_FIFO_TX_AGGRE, align 4
  %46 = call i32 @rt2x00_get_field32(i32 %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TX_STA_FIFO_WCID, align 4
  %49 = call i32 @rt2x00_get_field32(i32 %47, i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TX_STA_FIFO_TX_ACK_REQUIRED, align 4
  %52 = call i32 @rt2x00_get_field32(i32 %50, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %4
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

62:                                               ; preds = %58, %55, %4
  %63 = phi i1 [ false, %55 ], [ false, %4 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %11, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rt2800_rate_from_status(%struct.skb_frame_desc* %71, i32 %72, i32 %75)
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @TXDONE_AMPDU, align 4
  %86 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  %87 = call i32 @__set_bit(i32 %85, i64* %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @TXDONE_NO_ACK_REQ, align 4
  %93 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  %94 = call i32 @__set_bit(i32 %92, i64* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @TX_STA_FIFO_TX_SUCCESS, align 4
  %98 = call i32 @rt2x00_get_field32(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i32, i32* @TXDONE_SUCCESS, align 4
  %102 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  %103 = call i32 @__set_bit(i32 %101, i64* %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 0, %111 ]
  %114 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  br label %123

115:                                              ; preds = %95
  %116 = load i32, i32* @TXDONE_FAILURE, align 4
  %117 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  %118 = call i32 @__set_bit(i32 %116, i64* %117)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %120 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  br label %123

123:                                              ; preds = %115, %112
  %124 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* @TXDONE_FALLBACK, align 4
  %129 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %12, i32 0, i32 1
  %130 = call i32 @__set_bit(i32 %128, i64* %129)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %131
  %135 = call i32 (...) @rcu_read_lock()
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @WCID_START, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @WCID_END, align 4
  %142 = icmp sle i32 %140, %141
  br label %143

143:                                              ; preds = %139, %134
  %144 = phi i1 [ false, %134 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i64 @likely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %10, align 8
  %150 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @WCID_START, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %151, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %11, align 8
  %159 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %158, i32 0, i32 0
  store i32* %157, i32** %159, align 8
  br label %163

160:                                              ; preds = %143
  %161 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %11, align 8
  %162 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %161, i32 0, i32 0
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %160, %148
  %164 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %165 = call i32 @rt2x00lib_txdone_nomatch(%struct.queue_entry* %164, %struct.txdone_entry_desc* %12)
  %166 = call i32 (...) @rcu_read_unlock()
  br label %170

167:                                              ; preds = %131
  %168 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %169 = call i32 @rt2x00lib_txdone(%struct.queue_entry* %168, %struct.txdone_entry_desc* %12)
  br label %170

170:                                              ; preds = %167, %163
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2800_rate_from_status(%struct.skb_frame_desc*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rt2x00lib_txdone_nomatch(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rt2x00lib_txdone(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
