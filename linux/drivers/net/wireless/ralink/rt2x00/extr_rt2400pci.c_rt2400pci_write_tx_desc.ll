; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.queue_entry_priv_mmio*, i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32* }

@TXD_W1_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@TXD_W2_BUFFER_LENGTH = common dso_local global i32 0, align 4
@TXD_W2_DATABYTE_COUNT = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SIGNAL_REGNUM = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SIGNAL_BUSY = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SERVICE_REGNUM = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SERVICE_BUSY = common dso_local global i32 0, align 4
@TXD_W4_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_LOW_REGNUM = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_LOW_BUSY = common dso_local global i32 0, align 4
@TXD_W4_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_HIGH_REGNUM = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_HIGH_BUSY = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@TXD_W0_MORE_FRAG = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W0_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@TXD_W0_TIMESTAMP = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@TXD_W0_RTS = common dso_local global i32 0, align 4
@ENTRY_TXD_RTS_FRAME = common dso_local global i32 0, align 4
@TXD_W0_IFS = common dso_local global i32 0, align 4
@TXD_W0_RETRY_MODE = common dso_local global i32 0, align 4
@ENTRY_TXD_RETRY_MODE = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2400pci_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %11)
  store %struct.skb_frame_desc* %12, %struct.skb_frame_desc** %5, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 0
  %15 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %14, align 8
  store %struct.queue_entry_priv_mmio* %15, %struct.queue_entry_priv_mmio** %6, align 8
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @rt2x00_desc_read(i32* %19, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TXD_W1_BUFFER_ADDRESS, align 4
  %22 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %23 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rt2x00_set_field32(i32* %8, i32 %21, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rt2x00_desc_write(i32* %26, i32 1, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @rt2x00_desc_read(i32* %29, i32 2)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TXD_W2_BUFFER_LENGTH, align 4
  %32 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %33 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rt2x00_set_field32(i32* %8, i32 %31, i32 %34)
  %36 = load i32, i32* @TXD_W2_DATABYTE_COUNT, align 4
  %37 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %38 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %8, i32 %36, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rt2x00_desc_write(i32* %41, i32 2, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @rt2x00_desc_read(i32* %44, i32 3)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @TXD_W3_PLCP_SIGNAL, align 4
  %47 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rt2x00_set_field32(i32* %8, i32 %46, i32 %51)
  %53 = load i32, i32* @TXD_W3_PLCP_SIGNAL_REGNUM, align 4
  %54 = call i32 @rt2x00_set_field32(i32* %8, i32 %53, i32 5)
  %55 = load i32, i32* @TXD_W3_PLCP_SIGNAL_BUSY, align 4
  %56 = call i32 @rt2x00_set_field32(i32* %8, i32 %55, i32 1)
  %57 = load i32, i32* @TXD_W3_PLCP_SERVICE, align 4
  %58 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %59 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %8, i32 %57, i32 %62)
  %64 = load i32, i32* @TXD_W3_PLCP_SERVICE_REGNUM, align 4
  %65 = call i32 @rt2x00_set_field32(i32* %8, i32 %64, i32 6)
  %66 = load i32, i32* @TXD_W3_PLCP_SERVICE_BUSY, align 4
  %67 = call i32 @rt2x00_set_field32(i32* %8, i32 %66, i32 1)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @rt2x00_desc_write(i32* %68, i32 3, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @rt2x00_desc_read(i32* %71, i32 4)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @TXD_W4_PLCP_LENGTH_LOW, align 4
  %74 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %75 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %8, i32 %73, i32 %78)
  %80 = load i32, i32* @TXD_W3_PLCP_LENGTH_LOW_REGNUM, align 4
  %81 = call i32 @rt2x00_set_field32(i32* %8, i32 %80, i32 8)
  %82 = load i32, i32* @TXD_W3_PLCP_LENGTH_LOW_BUSY, align 4
  %83 = call i32 @rt2x00_set_field32(i32* %8, i32 %82, i32 1)
  %84 = load i32, i32* @TXD_W4_PLCP_LENGTH_HIGH, align 4
  %85 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %86 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rt2x00_set_field32(i32* %8, i32 %84, i32 %89)
  %91 = load i32, i32* @TXD_W3_PLCP_LENGTH_HIGH_REGNUM, align 4
  %92 = call i32 @rt2x00_set_field32(i32* %8, i32 %91, i32 7)
  %93 = load i32, i32* @TXD_W3_PLCP_LENGTH_HIGH_BUSY, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %8, i32 %93, i32 1)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @rt2x00_desc_write(i32* %95, i32 4, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @rt2x00_desc_read(i32* %98, i32 0)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %101 = call i32 @rt2x00_set_field32(i32* %8, i32 %100, i32 1)
  %102 = load i32, i32* @TXD_W0_VALID, align 4
  %103 = call i32 @rt2x00_set_field32(i32* %8, i32 %102, i32 1)
  %104 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %105 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %106 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %107 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %106, i32 0, i32 1
  %108 = call i32 @test_bit(i32 %105, i32* %107)
  %109 = call i32 @rt2x00_set_field32(i32* %8, i32 %104, i32 %108)
  %110 = load i32, i32* @TXD_W0_ACK, align 4
  %111 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %112 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %113 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %112, i32 0, i32 1
  %114 = call i32 @test_bit(i32 %111, i32* %113)
  %115 = call i32 @rt2x00_set_field32(i32* %8, i32 %110, i32 %114)
  %116 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %117 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %118 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %119 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %118, i32 0, i32 1
  %120 = call i32 @test_bit(i32 %117, i32* %119)
  %121 = call i32 @rt2x00_set_field32(i32* %8, i32 %116, i32 %120)
  %122 = load i32, i32* @TXD_W0_RTS, align 4
  %123 = load i32, i32* @ENTRY_TXD_RTS_FRAME, align 4
  %124 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %125 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %124, i32 0, i32 1
  %126 = call i32 @test_bit(i32 %123, i32* %125)
  %127 = call i32 @rt2x00_set_field32(i32* %8, i32 %122, i32 %126)
  %128 = load i32, i32* @TXD_W0_IFS, align 4
  %129 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %130 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rt2x00_set_field32(i32* %8, i32 %128, i32 %133)
  %135 = load i32, i32* @TXD_W0_RETRY_MODE, align 4
  %136 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %137 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %138 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %137, i32 0, i32 1
  %139 = call i32 @test_bit(i32 %136, i32* %138)
  %140 = call i32 @rt2x00_set_field32(i32* %8, i32 %135, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @rt2x00_desc_write(i32* %141, i32 0, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %146 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %145, i32 0, i32 2
  store i32* %144, i32** %146, align 8
  %147 = load i32, i32* @TXD_DESC_SIZE, align 4
  %148 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %149 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
