; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.data_queue = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32, %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.txdone_entry_desc = type { i32, i64 }

@STA_CSR4 = common dso_local global i32 0, align 4
@STA_CSR4_VALID = common dso_local global i32 0, align 4
@STA_CSR4_PID_TYPE = common dso_local global i32 0, align 4
@STA_CSR4_PID_SUBTYPE = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TX status report missed for entry %d\0A\00", align 1
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@STA_CSR4_TX_RESULT = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_EXCESSIVE_RETRY = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@STA_CSR4_RETRY_COUNT = common dso_local global i32 0, align 4
@TXDONE_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt61pci_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_txdone(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca %struct.queue_entry*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca %struct.txdone_entry_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %133, %1
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %136

21:                                               ; preds = %13
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = load i32, i32* @STA_CSR4, align 4
  %24 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @STA_CSR4_VALID, align 4
  %27 = call i32 @rt2x00_get_field32(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %136

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @STA_CSR4_PID_TYPE, align 4
  %33 = call i32 @rt2x00_get_field32(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %34, i32 %35)
  store %struct.data_queue* %36, %struct.data_queue** %3, align 8
  %37 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %38 = icmp ne %struct.data_queue* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %133

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @STA_CSR4_PID_SUBTYPE, align 4
  %47 = call i32 @rt2x00_get_field32(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %50 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %133

57:                                               ; preds = %44
  %58 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %59 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %58, i32 0, i32 1
  %60 = load %struct.queue_entry*, %struct.queue_entry** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %60, i64 %62
  store %struct.queue_entry* %63, %struct.queue_entry** %4, align 8
  %64 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %65 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %64, i32 0, i32 1
  %66 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %65, align 8
  store %struct.queue_entry_priv_mmio* %66, %struct.queue_entry_priv_mmio** %6, align 8
  %67 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %68 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rt2x00_desc_read(i32 %69, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %73 = call i32 @rt2x00_get_field32(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @TXD_W0_VALID, align 4
  %78 = call i32 @rt2x00_get_field32(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %57
  br label %136

81:                                               ; preds = %75
  %82 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %83 = load i32, i32* @Q_INDEX_DONE, align 4
  %84 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %82, i32 %83)
  store %struct.queue_entry* %84, %struct.queue_entry** %5, align 8
  br label %85

85:                                               ; preds = %89, %81
  %86 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %87 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %88 = icmp ne %struct.queue_entry* %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %92 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %96 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %97 = call i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry* %95, i32 %96)
  %98 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %99 = load i32, i32* @Q_INDEX_DONE, align 4
  %100 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %98, i32 %99)
  store %struct.queue_entry* %100, %struct.queue_entry** %5, align 8
  br label %85

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @STA_CSR4_TX_RESULT, align 4
  %105 = call i32 @rt2x00_get_field32(i32 %103, i32 %104)
  switch i32 %105, label %114 [
    i32 0, label %106
    i32 6, label %110
  ]

106:                                              ; preds = %101
  %107 = load i32, i32* @TXDONE_SUCCESS, align 4
  %108 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %109 = call i32 @__set_bit(i32 %107, i64* %108)
  br label %118

110:                                              ; preds = %101
  %111 = load i32, i32* @TXDONE_EXCESSIVE_RETRY, align 4
  %112 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %113 = call i32 @__set_bit(i32 %111, i64* %112)
  br label %114

114:                                              ; preds = %101, %110
  %115 = load i32, i32* @TXDONE_FAILURE, align 4
  %116 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %117 = call i32 @__set_bit(i32 %115, i64* %116)
  br label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @STA_CSR4_RETRY_COUNT, align 4
  %121 = call i32 @rt2x00_get_field32(i32 %119, i32 %120)
  %122 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* @TXDONE_FALLBACK, align 4
  %128 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %7, i32 0, i32 1
  %129 = call i32 @__set_bit(i32 %127, i64* %128)
  br label %130

130:                                              ; preds = %126, %118
  %131 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %132 = call i32 @rt2x00lib_txdone(%struct.queue_entry* %131, %struct.txdone_entry_desc* %7)
  br label %133

133:                                              ; preds = %130, %56, %43
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %13

136:                                              ; preds = %80, %29, %13
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32, i32) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rt2x00lib_txdone(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
