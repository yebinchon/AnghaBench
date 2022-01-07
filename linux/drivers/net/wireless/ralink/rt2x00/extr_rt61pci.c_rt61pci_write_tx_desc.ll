; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_8__*, %struct.queue_entry_priv_mmio*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32*, i32* }

@TXD_W1_HOST_Q_ID = common dso_local global i32 0, align 4
@TXD_W1_AIFSN = common dso_local global i32 0, align 4
@TXD_W1_CWMIN = common dso_local global i32 0, align 4
@TXD_W1_CWMAX = common dso_local global i32 0, align 4
@TXD_W1_IV_OFFSET = common dso_local global i32 0, align 4
@TXD_W1_HW_SEQUENCE = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@TXD_W1_BUFFER_COUNT = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@TXD_W5_PID_TYPE = common dso_local global i32 0, align 4
@TXD_W5_PID_SUBTYPE = common dso_local global i32 0, align 4
@TXD_W5_TX_POWER = common dso_local global i32 0, align 4
@TXD_W5_WAITING_DMA_DONE_INT = common dso_local global i32 0, align 4
@QID_BEACON = common dso_local global i32 0, align 4
@TXD_W6_BUFFER_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@TXD_W11_BUFFER_LENGTH0 = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@TXD_W0_MORE_FRAG = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W0_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@TXD_W0_TIMESTAMP = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@TXD_W0_OFDM = common dso_local global i32 0, align 4
@RATE_MODE_OFDM = common dso_local global i64 0, align 8
@TXD_W0_IFS = common dso_local global i32 0, align 4
@TXD_W0_RETRY_MODE = common dso_local global i32 0, align 4
@ENTRY_TXD_RETRY_MODE = common dso_local global i32 0, align 4
@TXD_W0_TKIP_MIC = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_MMIC = common dso_local global i32 0, align 4
@TXD_W0_KEY_TABLE = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_PAIRWISE = common dso_local global i32 0, align 4
@TXD_W0_KEY_INDEX = common dso_local global i32 0, align 4
@TXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@TXD_W0_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@TXD_W0_CIPHER_ALG = common dso_local global i32 0, align 4
@TXINFO_SIZE = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt61pci_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %11)
  store %struct.skb_frame_desc* %12, %struct.skb_frame_desc** %5, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 2
  %15 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %14, align 8
  store %struct.queue_entry_priv_mmio* %15, %struct.queue_entry_priv_mmio** %6, align 8
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @rt2x00_desc_read(i32* %19, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TXD_W1_HOST_Q_ID, align 4
  %22 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %23 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rt2x00_set_field32(i32* %8, i32 %21, i32 %26)
  %28 = load i32, i32* @TXD_W1_AIFSN, align 4
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %8, i32 %28, i32 %33)
  %35 = load i32, i32* @TXD_W1_CWMIN, align 4
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rt2x00_set_field32(i32* %8, i32 %35, i32 %40)
  %42 = load i32, i32* @TXD_W1_CWMAX, align 4
  %43 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %44 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rt2x00_set_field32(i32* %8, i32 %42, i32 %47)
  %49 = load i32, i32* @TXD_W1_IV_OFFSET, align 4
  %50 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %51 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rt2x00_set_field32(i32* %8, i32 %49, i32 %52)
  %54 = load i32, i32* @TXD_W1_HW_SEQUENCE, align 4
  %55 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %56 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %57 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %56, i32 0, i32 5
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  %59 = call i32 @rt2x00_set_field32(i32* %8, i32 %54, i32 %58)
  %60 = load i32, i32* @TXD_W1_BUFFER_COUNT, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %8, i32 %60, i32 1)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rt2x00_desc_write(i32* %62, i32 1, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @rt2x00_desc_read(i32* %65, i32 2)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @TXD_W2_PLCP_SIGNAL, align 4
  %68 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %69 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %8, i32 %67, i32 %72)
  %74 = load i32, i32* @TXD_W2_PLCP_SERVICE, align 4
  %75 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %76 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rt2x00_set_field32(i32* %8, i32 %74, i32 %79)
  %81 = load i32, i32* @TXD_W2_PLCP_LENGTH_LOW, align 4
  %82 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %83 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %8, i32 %81, i32 %86)
  %88 = load i32, i32* @TXD_W2_PLCP_LENGTH_HIGH, align 4
  %89 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %90 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %8, i32 %88, i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @rt2x00_desc_write(i32* %95, i32 2, i32 %96)
  %98 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %99 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %100 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %99, i32 0, i32 5
  %101 = call i32 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %2
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %106 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_rt2x00_desc_write(i32* %104, i32 3, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %113 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @_rt2x00_desc_write(i32* %111, i32 4, i32 %116)
  br label %118

118:                                              ; preds = %103, %2
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @rt2x00_desc_read(i32* %119, i32 5)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @TXD_W5_PID_TYPE, align 4
  %122 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %123 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @rt2x00_set_field32(i32* %8, i32 %121, i32 %126)
  %128 = load i32, i32* @TXD_W5_PID_SUBTYPE, align 4
  %129 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %130 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @rt2x00_set_field32(i32* %8, i32 %128, i32 %131)
  %133 = load i32, i32* @TXD_W5_TX_POWER, align 4
  %134 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %135 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @TXPOWER_TO_DEV(i32 %140)
  %142 = call i32 @rt2x00_set_field32(i32* %8, i32 %133, i32 %141)
  %143 = load i32, i32* @TXD_W5_WAITING_DMA_DONE_INT, align 4
  %144 = call i32 @rt2x00_set_field32(i32* %8, i32 %143, i32 1)
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @rt2x00_desc_write(i32* %145, i32 5, i32 %146)
  %148 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %149 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @QID_BEACON, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %118
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @rt2x00_desc_read(i32* %156, i32 6)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* @TXD_W6_BUFFER_PHYSICAL_ADDRESS, align 4
  %159 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %160 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @rt2x00_set_field32(i32* %8, i32 %158, i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @rt2x00_desc_write(i32* %163, i32 6, i32 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @rt2x00_desc_read(i32* %166, i32 11)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @TXD_W11_BUFFER_LENGTH0, align 4
  %169 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %170 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @rt2x00_set_field32(i32* %8, i32 %168, i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @rt2x00_desc_write(i32* %173, i32 11, i32 %174)
  br label %176

176:                                              ; preds = %155, %118
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @rt2x00_desc_read(i32* %177, i32 0)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %180 = call i32 @rt2x00_set_field32(i32* %8, i32 %179, i32 1)
  %181 = load i32, i32* @TXD_W0_VALID, align 4
  %182 = call i32 @rt2x00_set_field32(i32* %8, i32 %181, i32 1)
  %183 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %184 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %185 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %186 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %185, i32 0, i32 5
  %187 = call i32 @test_bit(i32 %184, i32* %186)
  %188 = call i32 @rt2x00_set_field32(i32* %8, i32 %183, i32 %187)
  %189 = load i32, i32* @TXD_W0_ACK, align 4
  %190 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %191 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %192 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %191, i32 0, i32 5
  %193 = call i32 @test_bit(i32 %190, i32* %192)
  %194 = call i32 @rt2x00_set_field32(i32* %8, i32 %189, i32 %193)
  %195 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %196 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %197 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %198 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %197, i32 0, i32 5
  %199 = call i32 @test_bit(i32 %196, i32* %198)
  %200 = call i32 @rt2x00_set_field32(i32* %8, i32 %195, i32 %199)
  %201 = load i32, i32* @TXD_W0_OFDM, align 4
  %202 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %203 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @RATE_MODE_OFDM, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @rt2x00_set_field32(i32* %8, i32 %201, i32 %207)
  %209 = load i32, i32* @TXD_W0_IFS, align 4
  %210 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %211 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @rt2x00_set_field32(i32* %8, i32 %209, i32 %214)
  %216 = load i32, i32* @TXD_W0_RETRY_MODE, align 4
  %217 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %218 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %219 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %218, i32 0, i32 5
  %220 = call i32 @test_bit(i32 %217, i32* %219)
  %221 = call i32 @rt2x00_set_field32(i32* %8, i32 %216, i32 %220)
  %222 = load i32, i32* @TXD_W0_TKIP_MIC, align 4
  %223 = load i32, i32* @ENTRY_TXD_ENCRYPT_MMIC, align 4
  %224 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %225 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %224, i32 0, i32 5
  %226 = call i32 @test_bit(i32 %223, i32* %225)
  %227 = call i32 @rt2x00_set_field32(i32* %8, i32 %222, i32 %226)
  %228 = load i32, i32* @TXD_W0_KEY_TABLE, align 4
  %229 = load i32, i32* @ENTRY_TXD_ENCRYPT_PAIRWISE, align 4
  %230 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %231 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %230, i32 0, i32 5
  %232 = call i32 @test_bit(i32 %229, i32* %231)
  %233 = call i32 @rt2x00_set_field32(i32* %8, i32 %228, i32 %232)
  %234 = load i32, i32* @TXD_W0_KEY_INDEX, align 4
  %235 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %236 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @rt2x00_set_field32(i32* %8, i32 %234, i32 %237)
  %239 = load i32, i32* @TXD_W0_DATABYTE_COUNT, align 4
  %240 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %241 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @rt2x00_set_field32(i32* %8, i32 %239, i32 %242)
  %244 = load i32, i32* @TXD_W0_BURST, align 4
  %245 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %246 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %247 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %246, i32 0, i32 5
  %248 = call i32 @test_bit(i32 %245, i32* %247)
  %249 = call i32 @rt2x00_set_field32(i32* %8, i32 %244, i32 %248)
  %250 = load i32, i32* @TXD_W0_CIPHER_ALG, align 4
  %251 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %252 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @rt2x00_set_field32(i32* %8, i32 %250, i32 %253)
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @rt2x00_desc_write(i32* %255, i32 0, i32 %256)
  %258 = load i32*, i32** %7, align 8
  %259 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %260 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %259, i32 0, i32 2
  store i32* %258, i32** %260, align 8
  %261 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %262 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %261, i32 0, i32 1
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @QID_BEACON, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %176
  %269 = load i32, i32* @TXINFO_SIZE, align 4
  br label %272

270:                                              ; preds = %176
  %271 = load i32, i32* @TXD_DESC_SIZE, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %275 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @_rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @TXPOWER_TO_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
