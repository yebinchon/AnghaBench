; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_process_rxwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_process_rxwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rxdone_entry_desc = type { i32, i64, i32, i32, i32, i32, i8*, i8* }

@RXWI_W0_UDF = common dso_local global i32 0, align 4
@RXWI_W0_MPDU_TOTAL_BYTE_COUNT = common dso_local global i32 0, align 4
@RXWI_W1_SHORT_GI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RXWI_W1_BW = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_MCS = common dso_local global i32 0, align 4
@RXWI_W1_MCS = common dso_local global i32 0, align 4
@RXWI_W1_PHYMODE = common dso_local global i32 0, align 4
@RATE_MODE_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_process_rxwi(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @rt2x00_desc_read(i32* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RXWI_W0_UDF, align 4
  %17 = call i8* @rt2x00_get_field32(i32 %15, i32 %16)
  %18 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %19 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RXWI_W0_MPDU_TOTAL_BYTE_COUNT, align 4
  %22 = call i8* @rt2x00_get_field32(i32 %20, i32 %21)
  %23 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %24 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @rt2x00_desc_read(i32* %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RXWI_W1_SHORT_GI, align 4
  %29 = call i8* @rt2x00_get_field32(i32 %27, i32 %28)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %33 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %34 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RXWI_W1_BW, align 4
  %40 = call i8* @rt2x00_get_field32(i32 %38, i32 %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @RATE_INFO_BW_40, align 4
  %44 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @RXDONE_SIGNAL_MCS, align 4
  %48 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %49 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @RXWI_W1_MCS, align 4
  %54 = call i8* @rt2x00_get_field32(i32 %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %57 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @RXWI_W1_PHYMODE, align 4
  %60 = call i8* @rt2x00_get_field32(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %63 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %65 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RATE_MODE_CCK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %46
  %70 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %71 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, -9
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %46
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @rt2x00_desc_read(i32* %75, i32 2)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %78 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @rt2800_agc_to_rssi(i32 %81, i32 %82)
  %84 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %85 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %87 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %90 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @skb_pull(%struct.TYPE_4__* %88, i32 %93)
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800_agc_to_rssi(i32, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
