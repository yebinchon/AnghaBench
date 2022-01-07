; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_edge_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_edge_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.edgeport_serial = type { i64, i32, %struct.usb_serial*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@edge_heartbeat_work = common dso_local global i32 0, align 4
@FW_HEARTBEAT_VERSION_CUTOFF = common dso_local global i64 0, align 8
@ION_DEVICE_ID_TI_EDGEPORT_416 = common dso_local global i64 0, align 8
@ION_DEVICE_ID_TI_EDGEPORT_416B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @edge_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.edgeport_serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.edgeport_serial* @kzalloc(i32 32, i32 %7)
  store %struct.edgeport_serial* %8, %struct.edgeport_serial** %4, align 8
  %9 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %10 = icmp ne %struct.edgeport_serial* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %16 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %15, i32 0, i32 4
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %19 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %20 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %19, i32 0, i32 2
  store %struct.usb_serial* %18, %struct.usb_serial** %20, align 8
  %21 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %22 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %21, i32 0, i32 3
  %23 = load i32, i32* @edge_heartbeat_work, align 4
  %24 = call i32 @INIT_DELAYED_WORK(i32* %22, i32 %23)
  %25 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %26 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %27 = call i32 @usb_set_serial_data(%struct.usb_serial* %25, %struct.edgeport_serial* %26)
  %28 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %29 = call i32 @download_fw(%struct.edgeport_serial* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %34 = call i32 @kfree(%struct.edgeport_serial* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %14
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %70

40:                                               ; preds = %36
  %41 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %42 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %41, i32 0, i32 2
  %43 = load %struct.usb_serial*, %struct.usb_serial** %42, align 8
  %44 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %51 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FW_HEARTBEAT_VERSION_CUTOFF, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %40
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @ION_DEVICE_ID_TI_EDGEPORT_416, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @ION_DEVICE_ID_TI_EDGEPORT_416B, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %65 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %40
  %68 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %69 = call i32 @edge_heartbeat_schedule(%struct.edgeport_serial* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %39, %32, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.edgeport_serial* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, %struct.edgeport_serial*) #1

declare dso_local i32 @download_fw(%struct.edgeport_serial*) #1

declare dso_local i32 @kfree(%struct.edgeport_serial*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @edge_heartbeat_schedule(%struct.edgeport_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
