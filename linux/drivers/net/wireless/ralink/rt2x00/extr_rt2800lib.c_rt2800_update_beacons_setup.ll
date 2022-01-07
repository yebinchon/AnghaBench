; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_update_beacons_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_update_beacons_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.data_queue* }
%struct.data_queue = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32, i32 }

@ENTRY_BCN_ENABLED = common dso_local global i32 0, align 4
@BCN_OFFSET0 = common dso_local global i32 0, align 4
@BCN_OFFSET1 = common dso_local global i32 0, align 4
@MAC_BSSID_DW1 = common dso_local global i32 0, align 4
@MAC_BSSID_DW1_BSS_BCN_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_update_beacons_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_update_beacons_setup(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load %struct.data_queue*, %struct.data_queue** %11, align 8
  store %struct.data_queue* %12, %struct.data_queue** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %46, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 1
  %22 = load %struct.queue_entry*, %struct.queue_entry** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i64 %24
  store %struct.queue_entry* %25, %struct.queue_entry** %4, align 8
  %26 = load i32, i32* @ENTRY_BCN_ENABLED, align 4
  %27 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %28 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %46

32:                                               ; preds = %19
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %35 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rt2800_get_beacon_offset(%struct.rt2x00_dev* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 8, %39
  %41 = shl i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %32, %31
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* @BCN_OFFSET0, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %50, i32 %51, i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = load i32, i32* @BCN_OFFSET1, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 32
  %58 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %54, i32 %55, i32 %57)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = load i32, i32* @MAC_BSSID_DW1, align 4
  %61 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @MAC_BSSID_DW1_BSS_BCN_NUM, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  br label %69

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ]
  %71 = call i32 @rt2x00_set_field32(i32* %9, i32 %62, i32 %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = load i32, i32* @MAC_BSSID_DW1, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_get_beacon_offset(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
