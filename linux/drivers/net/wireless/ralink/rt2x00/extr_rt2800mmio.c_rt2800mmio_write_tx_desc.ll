; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32, i32* }

@TXD_W0_SD_PTR0 = common dso_local global i32 0, align 4
@TXD_W1_SD_LEN1 = common dso_local global i32 0, align 4
@TXD_W1_LAST_SEC1 = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W1_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@TXD_W1_SD_LEN0 = common dso_local global i32 0, align 4
@TXD_W1_LAST_SEC0 = common dso_local global i32 0, align 4
@TXD_W1_DMA_DONE = common dso_local global i32 0, align 4
@TXD_W2_SD_PTR1 = common dso_local global i32 0, align 4
@TXD_W3_WIV = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@TXD_W3_QSEL = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__* %12)
  store %struct.skb_frame_desc* %13, %struct.skb_frame_desc** %5, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 2
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %15, align 8
  store %struct.queue_entry_priv_mmio* %16, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %18 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  store i64 0, i64* %8, align 8
  %25 = load i32, i32* @TXD_W0_SD_PTR0, align 4
  %26 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %27 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @rt2x00_set_field32(i64* %8, i32 %25, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @rt2x00_desc_write(i32* %30, i32 0, i64 %31)
  store i64 0, i64* %8, align 8
  %33 = load i32, i32* @TXD_W1_SD_LEN1, align 4
  %34 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %35 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rt2x00_set_field32(i64* %8, i32 %33, i32 %38)
  %40 = load i32, i32* @TXD_W1_LAST_SEC1, align 4
  %41 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %42 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %43 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %42, i32 0, i32 0
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @rt2x00_set_field32(i64* %8, i32 %40, i32 %47)
  %49 = load i32, i32* @TXD_W1_BURST, align 4
  %50 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %51 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %52 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %51, i32 0, i32 0
  %53 = call i32 @test_bit(i32 %50, i32* %52)
  %54 = call i32 @rt2x00_set_field32(i64* %8, i32 %49, i32 %53)
  %55 = load i32, i32* @TXD_W1_SD_LEN0, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @rt2x00_set_field32(i64* %8, i32 %55, i32 %56)
  %58 = load i32, i32* @TXD_W1_LAST_SEC0, align 4
  %59 = call i32 @rt2x00_set_field32(i64* %8, i32 %58, i32 0)
  %60 = load i32, i32* @TXD_W1_DMA_DONE, align 4
  %61 = call i32 @rt2x00_set_field32(i64* %8, i32 %60, i32 0)
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @rt2x00_desc_write(i32* %62, i32 1, i64 %63)
  store i64 0, i64* %8, align 8
  %65 = load i32, i32* @TXD_W2_SD_PTR1, align 4
  %66 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %67 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %68, %69
  %71 = call i32 @rt2x00_set_field32(i64* %8, i32 %65, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @rt2x00_desc_write(i32* %72, i32 2, i64 %73)
  store i64 0, i64* %8, align 8
  %75 = load i32, i32* @TXD_W3_WIV, align 4
  %76 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %77 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %78 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %77, i32 0, i32 0
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @rt2x00_set_field32(i64* %8, i32 %75, i32 %82)
  %84 = load i32, i32* @TXD_W3_QSEL, align 4
  %85 = call i32 @rt2x00_set_field32(i64* %8, i32 %84, i32 2)
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @rt2x00_desc_write(i32* %86, i32 3, i64 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %91 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @TXD_DESC_SIZE, align 4
  %93 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %94 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
