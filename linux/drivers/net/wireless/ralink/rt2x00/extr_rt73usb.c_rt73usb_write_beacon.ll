; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_write_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }

@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1
@TXRX_CSR10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt73usb_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %5, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @TXRX_CSR9, align 4
  %17 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %20 = call i32 @rt2x00_set_field32(i32* %9, i32 %19, i32 0)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = load i32, i32* @TXRX_CSR9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %26 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @TXD_DESC_SIZE, align 4
  %29 = call i32 @skb_push(%struct.TYPE_6__* %27, i32 %28)
  %30 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TXD_DESC_SIZE, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %38 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %39 = call i32 @rt73usb_write_tx_desc(%struct.queue_entry* %37, %struct.txentry_desc* %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %40, i32 %41, %struct.queue_entry* %42)
  %44 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %45 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @roundup(i32 %48, i32 4)
  %50 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %51 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %49, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %2
  %59 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %60 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @skb_pad(%struct.TYPE_6__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = call i32 @rt2x00_err(%struct.rt2x00_dev* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %69 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %68, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %71 = load i32, i32* @TXRX_CSR9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %70, i32 %71, i32 %72)
  br label %109

74:                                               ; preds = %58, %2
  %75 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %76 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @HW_BEACON_OFFSET(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %82 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %87 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %90, %91
  %93 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %79, i32 %80, i32 %85, i32 %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %95 = load i32, i32* @TXRX_CSR10, align 4
  %96 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %94, i32 %95, i32 4104)
  %97 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %98 = call i32 @rt2x00_set_field32(i32* %9, i32 %97, i32 1)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %100 = load i32, i32* @TXRX_CSR9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %99, i32 %100, i32 %101)
  %103 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %104 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = call i32 @dev_kfree_skb(%struct.TYPE_6__* %105)
  %107 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %108 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %107, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %108, align 8
  br label %109

109:                                              ; preds = %74, %65
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rt73usb_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
