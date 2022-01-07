; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_free_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_free_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i64, %struct.TYPE_2__*, %struct.rt2x00_dev* }
%struct.TYPE_2__ = type { %struct.queue_entry_priv_usb_bcn* }
%struct.queue_entry_priv_usb_bcn = type { i32, i32 }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry_priv_usb = type { i32, i32 }

@QID_BEACON = common dso_local global i64 0, align 8
@REQUIRE_BEACON_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2x00usb_free_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00usb_free_entries(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.queue_entry_priv_usb*, align 8
  %5 = alloca %struct.queue_entry_priv_usb_bcn*, align 8
  %6 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %7 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 3
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  store %struct.rt2x00_dev* %9, %struct.rt2x00_dev** %3, align 8
  %10 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %11 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %24 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %29, align 8
  %31 = bitcast %struct.queue_entry_priv_usb_bcn* %30 to %struct.queue_entry_priv_usb*
  store %struct.queue_entry_priv_usb* %31, %struct.queue_entry_priv_usb** %4, align 8
  %32 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %4, align 8
  %33 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_kill_urb(i32 %34)
  %36 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %4, align 8
  %37 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_free_urb(i32 %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %45 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QID_BEACON, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @REQUIRE_BEACON_GUARD, align 4
  %52 = call i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %43
  br label %82

55:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %59 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %64 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %69, align 8
  store %struct.queue_entry_priv_usb_bcn* %70, %struct.queue_entry_priv_usb_bcn** %5, align 8
  %71 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %5, align 8
  %72 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_kill_urb(i32 %73)
  %75 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %5, align 8
  %76 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usb_free_urb(i32 %77)
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %56

82:                                               ; preds = %14, %54, %56
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
