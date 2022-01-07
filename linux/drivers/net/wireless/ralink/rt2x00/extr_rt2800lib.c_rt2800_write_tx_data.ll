; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_write_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_write_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.txentry_desc = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@TXWI_W0_FRAG = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXWI_W0_MIMO_PS = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_MIMO_PS = common dso_local global i32 0, align 4
@TXWI_W0_CF_ACK = common dso_local global i32 0, align 4
@TXWI_W0_TS = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@TXWI_W0_AMPDU = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_AMPDU = common dso_local global i32 0, align 4
@TXWI_W0_MPDU_DENSITY = common dso_local global i32 0, align 4
@TXWI_W0_TX_OP = common dso_local global i32 0, align 4
@TXWI_W0_MCS = common dso_local global i32 0, align 4
@TXWI_W0_BW = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_BW_40 = common dso_local global i32 0, align 4
@TXWI_W0_SHORT_GI = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_SHORT_GI = common dso_local global i32 0, align 4
@TXWI_W0_STBC = common dso_local global i32 0, align 4
@TXWI_W0_PHYMODE = common dso_local global i32 0, align 4
@TXWI_W1_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@TXWI_W1_NSEQ = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@TXWI_W1_BW_WIN_SIZE = common dso_local global i32 0, align 4
@TXWI_W1_WIRELESS_CLI_ID = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@TXWI_W1_MPDU_TOTAL_BYTE_COUNT = common dso_local global i32 0, align 4
@TXWI_W1_PACKETID_QUEUE = common dso_local global i32 0, align 4
@TXWI_W1_PACKETID_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_write_tx_data(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = call i32* @rt2800_drv_get_txwi(%struct.queue_entry* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @rt2x00_desc_read(i32* %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @TXWI_W0_FRAG, align 4
  %13 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %14 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %15 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %14, i32 0, i32 4
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = call i32 @rt2x00_set_field32(i32* %6, i32 %12, i32 %16)
  %18 = load i32, i32* @TXWI_W0_MIMO_PS, align 4
  %19 = load i32, i32* @ENTRY_TXD_HT_MIMO_PS, align 4
  %20 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %21 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %20, i32 0, i32 4
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = call i32 @rt2x00_set_field32(i32* %6, i32 %18, i32 %22)
  %24 = load i32, i32* @TXWI_W0_CF_ACK, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %6, i32 %24, i32 0)
  %26 = load i32, i32* @TXWI_W0_TS, align 4
  %27 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %28 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %29 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %28, i32 0, i32 4
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = call i32 @rt2x00_set_field32(i32* %6, i32 %26, i32 %30)
  %32 = load i32, i32* @TXWI_W0_AMPDU, align 4
  %33 = load i32, i32* @ENTRY_TXD_HT_AMPDU, align 4
  %34 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %35 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %34, i32 0, i32 4
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = call i32 @rt2x00_set_field32(i32* %6, i32 %32, i32 %36)
  %38 = load i32, i32* @TXWI_W0_MPDU_DENSITY, align 4
  %39 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %40 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rt2x00_set_field32(i32* %6, i32 %38, i32 %43)
  %45 = load i32, i32* @TXWI_W0_TX_OP, align 4
  %46 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %47 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rt2x00_set_field32(i32* %6, i32 %45, i32 %50)
  %52 = load i32, i32* @TXWI_W0_MCS, align 4
  %53 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %54 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rt2x00_set_field32(i32* %6, i32 %52, i32 %57)
  %59 = load i32, i32* @TXWI_W0_BW, align 4
  %60 = load i32, i32* @ENTRY_TXD_HT_BW_40, align 4
  %61 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %62 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %61, i32 0, i32 4
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = call i32 @rt2x00_set_field32(i32* %6, i32 %59, i32 %63)
  %65 = load i32, i32* @TXWI_W0_SHORT_GI, align 4
  %66 = load i32, i32* @ENTRY_TXD_HT_SHORT_GI, align 4
  %67 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %68 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %67, i32 0, i32 4
  %69 = call i32 @test_bit(i32 %66, i32* %68)
  %70 = call i32 @rt2x00_set_field32(i32* %6, i32 %65, i32 %69)
  %71 = load i32, i32* @TXWI_W0_STBC, align 4
  %72 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %73 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rt2x00_set_field32(i32* %6, i32 %71, i32 %76)
  %78 = load i32, i32* @TXWI_W0_PHYMODE, align 4
  %79 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %80 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rt2x00_set_field32(i32* %6, i32 %78, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @rt2x00_desc_write(i32* %83, i32 0, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @rt2x00_desc_read(i32* %86, i32 1)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @TXWI_W1_ACK, align 4
  %89 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %90 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %91 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %90, i32 0, i32 4
  %92 = call i32 @test_bit(i32 %89, i32* %91)
  %93 = call i32 @rt2x00_set_field32(i32* %6, i32 %88, i32 %92)
  %94 = load i32, i32* @TXWI_W1_NSEQ, align 4
  %95 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %96 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %97 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %96, i32 0, i32 4
  %98 = call i32 @test_bit(i32 %95, i32* %97)
  %99 = call i32 @rt2x00_set_field32(i32* %6, i32 %94, i32 %98)
  %100 = load i32, i32* @TXWI_W1_BW_WIN_SIZE, align 4
  %101 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %102 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rt2x00_set_field32(i32* %6, i32 %100, i32 %105)
  %107 = load i32, i32* @TXWI_W1_WIRELESS_CLI_ID, align 4
  %108 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %109 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %110 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %109, i32 0, i32 4
  %111 = call i32 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %2
  %114 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %115 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  br label %123

117:                                              ; preds = %2
  %118 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %119 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  br label %123

123:                                              ; preds = %117, %113
  %124 = phi i32 [ %116, %113 ], [ %122, %117 ]
  %125 = call i32 @rt2x00_set_field32(i32* %6, i32 %107, i32 %124)
  %126 = load i32, i32* @TXWI_W1_MPDU_TOTAL_BYTE_COUNT, align 4
  %127 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %128 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rt2x00_set_field32(i32* %6, i32 %126, i32 %129)
  %131 = load i32, i32* @TXWI_W1_PACKETID_QUEUE, align 4
  %132 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %133 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rt2x00_set_field32(i32* %6, i32 %131, i32 %136)
  %138 = load i32, i32* @TXWI_W1_PACKETID_ENTRY, align 4
  %139 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %140 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %141, 3
  %143 = add nsw i32 %142, 1
  %144 = call i32 @rt2x00_set_field32(i32* %6, i32 %138, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @rt2x00_desc_write(i32* %145, i32 1, i32 %146)
  store i32 2, i32* %7, align 4
  br label %148

148:                                              ; preds = %163, %123
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %152 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = udiv i64 %156, 4
  %158 = icmp ult i64 %150, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %148
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @_rt2x00_desc_write(i32* %160, i32 %161, i32 0)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %148

166:                                              ; preds = %148
  ret void
}

declare dso_local i32* @rt2800_drv_get_txwi(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @_rt2x00_desc_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
