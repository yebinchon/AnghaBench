; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.rxdone_entry_desc = type { i64, i32, i32 }

@RXD_W3_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W3_CIPHER_ERROR = common dso_local global i32 0, align 4
@RXD_W3_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_CRYPTO_SUCCESS = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_MIC = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RXD_W3_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@RXD_W3_L2PAD = common dso_local global i32 0, align 4
@RXDONE_L2PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.queue_entry_priv_mmio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %8, i32 0, i32 0
  %10 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %9, align 8
  store %struct.queue_entry_priv_mmio* %10, %struct.queue_entry_priv_mmio** %5, align 8
  %11 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %5, align 8
  %12 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @rt2x00_desc_read(i32* %14, i32 3)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @RXD_W3_CRC_ERROR, align 4
  %18 = call i64 @rt2x00_get_field32(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %22 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %23 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RXD_W3_CIPHER_ERROR, align 4
  %29 = call i64 @rt2x00_get_field32(i32 %27, i32 %28)
  %30 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %31 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RXD_W3_DECRYPTED, align 4
  %34 = call i64 @rt2x00_get_field32(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %26
  %37 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %38 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %39 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %43 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %44 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RX_CRYPTO_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %54 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %55 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %76

58:                                               ; preds = %36
  %59 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %60 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RX_CRYPTO_FAIL_MIC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %66 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %67 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %71 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %72 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %64, %58
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @RXD_W3_MY_BSS, align 4
  %80 = call i64 @rt2x00_get_field32(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @RXDONE_MY_BSS, align 4
  %84 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %85 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @RXD_W3_L2PAD, align 4
  %91 = call i64 @rt2x00_get_field32(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @RXDONE_L2PAD, align 4
  %95 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %96 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %101 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %102 = call i32 @rt2800_process_rxwi(%struct.queue_entry* %100, %struct.rxdone_entry_desc* %101)
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800_process_rxwi(%struct.queue_entry*, %struct.rxdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
