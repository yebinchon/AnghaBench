; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_write_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32, i32 }

@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_GEN = common dso_local global i32 0, align 4
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1
@ENTRY_BCN_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.skb_frame_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %15, align 8
  store %struct.rt2x00_dev* %16, %struct.rt2x00_dev** %5, align 8
  %17 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %18 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_7__* %19)
  store %struct.skb_frame_desc* %20, %struct.skb_frame_desc** %6, align 8
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %27 = load i32, i32* @BCN_TIME_CFG, align 4
  %28 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %10, i32 %30, i32 0)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @BCN_TIME_CFG, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @skb_push(%struct.TYPE_7__* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %44 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %45 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %54 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %57 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %59 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %60 = call i32 @rt2800_write_tx_data(%struct.queue_entry* %58, %struct.txentry_desc* %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %63 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %64 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %61, i32 %62, %struct.queue_entry* %63)
  %65 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %66 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @roundup(i32 %69, i32 4)
  %71 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %72 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %70, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %2
  %80 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %81 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @skb_pad(%struct.TYPE_7__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %88 = call i32 @rt2x00_err(%struct.rt2x00_dev* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %90 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %89, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %90, align 8
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %92 = load i32, i32* @BCN_TIME_CFG, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %91, i32 %92, i32 %93)
  br label %132

95:                                               ; preds = %79, %2
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %97 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %98 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rt2800_hw_beacon_base(%struct.rt2x00_dev* %96, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %104 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %109 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %112, %113
  %115 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %101, i32 %102, i32 %107, i32 %114)
  %116 = load i32, i32* @ENTRY_BCN_ENABLED, align 4
  %117 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %118 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %117, i32 0, i32 1
  %119 = call i32 @__set_bit(i32 %116, i32* %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %121 = call i32 @rt2800_update_beacons_setup(%struct.rt2x00_dev* %120)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = load i32, i32* @BCN_TIME_CFG, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %122, i32 %123, i32 %124)
  %126 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %127 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = call i32 @dev_kfree_skb_any(%struct.TYPE_7__* %128)
  %130 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %131 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %130, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %131, align 8
  br label %132

132:                                              ; preds = %95, %86
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_7__*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt2800_write_tx_data(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2800_hw_beacon_base(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2800_update_beacons_setup(%struct.rt2x00_dev*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
