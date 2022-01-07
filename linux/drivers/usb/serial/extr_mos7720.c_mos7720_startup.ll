; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__**, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.urb* }
%struct.urb = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MOSCHIP_DEVICE_ID_7715 = common dso_local global i64 0, align 8
@mos7715_interrupt_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to submit interrupt urb: %d\0A\00", align 1
@MOS7720_LSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"LSR:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @mos7720_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7720_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 1
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %3, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 1
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  %21 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 1
  %23 = load %struct.usb_device*, %struct.usb_device** %22, align 8
  %24 = call i32 @usb_sndctrlpipe(%struct.usb_device* %23, i32 0)
  %25 = call i32 @usb_control_msg(%struct.usb_device* %20, i32 %24, i32 3, i32 0, i32 1, i32 0, i32* null, i32 0, i32 5000)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MOSCHIP_DEVICE_ID_7715, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %31 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.urb*, %struct.urb** %35, align 8
  store %struct.urb* %36, %struct.urb** %7, align 8
  %37 = load i32, i32* @mos7715_interrupt_callback, align 4
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %1
  %41 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %42 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.urb*, %struct.urb** %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @usb_submit_urb(%struct.urb* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %40
  %58 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %59 = load i32, i32* @MOS7720_LSR, align 4
  %60 = call i32 @read_mos_reg(%struct.usb_serial* %58, i32 0, i32 %59, i8* %4)
  %61 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = load i8, i8* %4, align 1
  %64 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %63)
  ret i32 0
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @read_mos_reg(%struct.usb_serial*, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
