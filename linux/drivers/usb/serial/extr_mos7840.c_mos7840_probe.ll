; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }

@MOSCHIP_DEVICE_ID_7810 = common dso_local global i32 0, align 4
@MOSCHIP_DEVICE_ID_7820 = common dso_local global i32 0, align 4
@MOSCHIP_DEVICE_ID_7843 = common dso_local global i32 0, align 4
@VENDOR_READ_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCS_RDREQ = common dso_local global i32 0, align 4
@MCS_RD_RTYPE = common dso_local global i32 0, align 4
@GPIO_REGISTER = common dso_local global i32 0, align 4
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@MOSCHIP_DEVICE_ID_7840 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @mos7840_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MOSCHIP_DEVICE_ID_7810, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MOSCHIP_DEVICE_ID_7820, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MOSCHIP_DEVICE_ID_7843, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %8, align 4
  br label %72

29:                                               ; preds = %23
  %30 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i32 %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %40 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %43 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @usb_rcvctrlpipe(%struct.TYPE_5__* %44, i32 0)
  %46 = load i32, i32* @MCS_RDREQ, align 4
  %47 = load i32, i32* @MCS_RD_RTYPE, align 4
  %48 = load i32, i32* @GPIO_REGISTER, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %51 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %52 = call i32 @usb_control_msg(%struct.TYPE_5__* %41, i32 %45, i32 %46, i32 %47, i32 0, i32 %48, i32* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load i32, i32* @MOSCHIP_DEVICE_ID_7840, align 4
  store i32 %59, i32* %8, align 4
  br label %69

60:                                               ; preds = %38
  %61 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %62 = call i64 @mos7810_check(%struct.usb_serial* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @MOSCHIP_DEVICE_ID_7810, align 4
  store i32 %65, i32* %8, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @MOSCHIP_DEVICE_ID_7820, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @kfree(i32* %70)
  br label %72

72:                                               ; preds = %69, %27
  %73 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @usb_set_serial_data(%struct.usb_serial* %73, i8* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @mos7810_check(%struct.usb_serial*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
