; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_hcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_hcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.vhci = type { i32*, i32* }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"name %s id %d\0A\00", align 1
@vhci_hc_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"create primary hcd failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"usb_add_hcd hs failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"create shared hcd failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"usb_add_hcd ss failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bye\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vhci_hcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_hcd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vhci*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i64 @dev_get_platdata(i32* %9)
  %11 = inttoptr i64 %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.vhci*
  store %struct.vhci* %13, %struct.vhci** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_name(i32* %24)
  %26 = call %struct.usb_hcd* @usb_create_hcd(i32* @vhci_hc_driver, i32* %22, i32 %25)
  store %struct.usb_hcd* %26, %struct.usb_hcd** %5, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %28 = icmp ne %struct.usb_hcd* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %81

33:                                               ; preds = %1
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %37 = call i32 @usb_add_hcd(%struct.usb_hcd* %36, i32 0, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %73

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_name(i32* %47)
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %50 = call %struct.usb_hcd* @usb_create_shared_hcd(i32* @vhci_hc_driver, i32* %45, i32 %48, %struct.usb_hcd* %49)
  store %struct.usb_hcd* %50, %struct.usb_hcd** %6, align 8
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %52 = icmp ne %struct.usb_hcd* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %70

57:                                               ; preds = %43
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %59 = call i32 @usb_add_hcd(%struct.usb_hcd* %58, i32 0, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %67

65:                                               ; preds = %57
  %66 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

67:                                               ; preds = %62
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %69 = call i32 @usb_put_hcd(%struct.usb_hcd* %68)
  br label %70

70:                                               ; preds = %67, %53
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %72 = call i32 @usb_remove_hcd(%struct.usb_hcd* %71)
  br label %73

73:                                               ; preds = %70, %40
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %75 = call i32 @usb_put_hcd(%struct.usb_hcd* %74)
  %76 = load %struct.vhci*, %struct.vhci** %4, align 8
  %77 = getelementptr inbounds %struct.vhci, %struct.vhci* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.vhci*, %struct.vhci** %4, align 8
  %79 = getelementptr inbounds %struct.vhci, %struct.vhci* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %65, %29
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*, ...) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_shared_hcd(i32*, i32*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
