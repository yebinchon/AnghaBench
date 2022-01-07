; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_rx_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_rx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.queue_entry_priv_usb* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }
%struct.queue_entry_priv_usb = type { i32 }
%struct.usb_device = type { i32 }

@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@rt2x00usb_interrupt_rxdone = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i8*)* @rt2x00usb_kick_rx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_kick_rx_entry(%struct.queue_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.queue_entry_priv_usb*, align 8
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %6, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.usb_device* @to_usb_device_intf(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 3
  %21 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %20, align 8
  store %struct.queue_entry_priv_usb* %21, %struct.queue_entry_priv_usb** %8, align 8
  %22 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %23 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %24 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %23, i32 0, i32 0
  %25 = call i64 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %30 = call i32 @rt2x00lib_dmastart(%struct.queue_entry* %29)
  %31 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %32 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %36 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %35, i32 %40)
  %42 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %48 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @rt2x00usb_interrupt_rxdone, align 4
  %53 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %54 = call i32 @usb_fill_bulk_urb(i32 %33, %struct.usb_device* %34, i32 %41, i32 %46, i32 %51, i32 %52, %struct.queue_entry* %53)
  %55 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %56 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call i32 @usb_submit_urb(i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %28
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @rt2x00usb_check_usb_error(%struct.rt2x00_dev* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %70 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %69, i32 0, i32 0
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %74 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %75 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %78 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %77)
  br label %79

79:                                               ; preds = %72, %28
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmastart(%struct.queue_entry*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.queue_entry*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i64 @rt2x00usb_check_usb_error(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmadone(%struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
