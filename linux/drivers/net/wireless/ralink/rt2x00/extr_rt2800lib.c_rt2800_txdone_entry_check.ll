; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone_entry_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@TX_STA_FIFO_WCID = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_ACK_REQUIRED = common dso_local global i32 0, align 4
@TX_STA_FIFO_PID_TYPE = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_AGGRE = common dso_local global i32 0, align 4
@TXWI_W1_WIRELESS_CLI_ID = common dso_local global i32 0, align 4
@TXWI_W1_ACK = common dso_local global i32 0, align 4
@TXWI_W1_PACKETID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TX status report missed for queue %d entry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i32)* @rt2800_txdone_entry_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_txdone_entry_check(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %16 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TX_STA_FIFO_WCID, align 4
  %24 = call i32 @rt2x00_get_field32(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @TX_STA_FIFO_TX_ACK_REQUIRED, align 4
  %27 = call i32 @rt2x00_get_field32(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TX_STA_FIFO_PID_TYPE, align 4
  %30 = call i32 @rt2x00_get_field32(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TX_STA_FIFO_TX_AGGRE, align 4
  %33 = call i32 @rt2x00_get_field32(i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %35 = call i32* @rt2800_drv_get_txwi(%struct.queue_entry* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @rt2x00_desc_read(i32* %36, i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TXWI_W1_WIRELESS_CLI_ID, align 4
  %40 = call i32 @rt2x00_get_field32(i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TXWI_W1_ACK, align 4
  %43 = call i32 @rt2x00_get_field32(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TXWI_W1_PACKETID, align 4
  %46 = call i32 @rt2x00_get_field32(i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %61, label %50

50:                                               ; preds = %21
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57, %50, %21
  %62 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %63 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %68 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %73 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @rt2x00_dbg(i32 %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %57, %54
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %61, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32* @rt2800_drv_get_txwi(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @rt2x00_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
