; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_detach_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_detach_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.vhci_hcd = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vhci_hcd*, %struct.vhci_hcd* }

@EINVAL = common dso_local global i64 0, align 8
@vhcis = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"port is not ready %u\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"rhport %d\0A\00", align 1
@VHCI_HC_PORTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @detach_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @detach_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.usb_hcd*, align 8
  %14 = alloca %struct.vhci_hcd*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtoint(i8* %16, i32 10, i64* %10)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %81

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @port_to_pdev_nr(i64 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @port_to_rhport(i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = call i32 @valid_port(i64* %11, i64* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %81

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vhcis, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.usb_hcd* @platform_get_drvdata(i32 %37)
  store %struct.usb_hcd* %38, %struct.usb_hcd** %13, align 8
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %40 = icmp eq %struct.usb_hcd* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @EAGAIN, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %81

47:                                               ; preds = %32
  %48 = load i64, i64* %12, align 8
  %49 = call i32 (i8*, ...) @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @VHCI_HC_PORTS, align 8
  %52 = udiv i64 %50, %51
  %53 = urem i64 %52, 2
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %57 = call %struct.TYPE_6__* @hcd_to_vhci_hcd(%struct.usb_hcd* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.vhci_hcd*, %struct.vhci_hcd** %60, align 8
  store %struct.vhci_hcd* %61, %struct.vhci_hcd** %14, align 8
  br label %69

62:                                               ; preds = %47
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %64 = call %struct.TYPE_6__* @hcd_to_vhci_hcd(%struct.usb_hcd* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.vhci_hcd*, %struct.vhci_hcd** %67, align 8
  store %struct.vhci_hcd* %68, %struct.vhci_hcd** %14, align 8
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.vhci_hcd*, %struct.vhci_hcd** %14, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @vhci_port_disconnect(%struct.vhci_hcd* %70, i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %81

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %78, %75, %41, %29, %19
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i64 @kstrtoint(i8*, i32, i64*) #1

declare dso_local i64 @port_to_pdev_nr(i64) #1

declare dso_local i64 @port_to_rhport(i64) #1

declare dso_local i32 @valid_port(i64*, i64*) #1

declare dso_local %struct.usb_hcd* @platform_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @vhci_port_disconnect(%struct.vhci_hcd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
