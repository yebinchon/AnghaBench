; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_status_show_vhci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_status_show_vhci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.vhci = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vhci_device* }
%struct.vhci_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.vhci_device* }
%struct.usb_hcd = type { i32 }
%struct.vhci_hcd = type { %struct.vhci* }

@vhcis = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"show status error\0A\00", align 1
@VHCI_HC_PORTS = common dso_local global i32 0, align 4
@HUB_SPEED_HIGH = common dso_local global i32 0, align 4
@VHCI_PORTS = common dso_local global i32 0, align 4
@HUB_SPEED_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @status_show_vhci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_show_vhci(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.vhci*, align 8
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca %struct.vhci_hcd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vhci_device*, align 8
  %14 = alloca %struct.vhci_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vhcis, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.platform_device*, %struct.platform_device** %19, align 8
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = icmp ne %struct.platform_device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %2
  %28 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %119

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %31 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %30)
  store %struct.usb_hcd* %31, %struct.usb_hcd** %8, align 8
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %33 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %32)
  store %struct.vhci_hcd* %33, %struct.vhci_hcd** %9, align 8
  %34 = load %struct.vhci_hcd*, %struct.vhci_hcd** %9, align 8
  %35 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %34, i32 0, i32 0
  %36 = load %struct.vhci*, %struct.vhci** %35, align 8
  store %struct.vhci* %36, %struct.vhci** %7, align 8
  %37 = load %struct.vhci*, %struct.vhci** %7, align 8
  %38 = getelementptr inbounds %struct.vhci, %struct.vhci* %37, i32 0, i32 0
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %70, %29
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @VHCI_HC_PORTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.vhci*, %struct.vhci** %7, align 8
  %47 = getelementptr inbounds %struct.vhci, %struct.vhci* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.vhci_device*, %struct.vhci_device** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %50, i64 %52
  store %struct.vhci_device* %53, %struct.vhci_device** %13, align 8
  %54 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %55 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load i32, i32* @HUB_SPEED_HIGH, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @VHCI_PORTS, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %65 = call i32 @port_show_vhci(i8** %5, i32 %58, i32 %63, %struct.vhci_device* %64)
  %66 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %67 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %45
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %41

73:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @VHCI_HC_PORTS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load %struct.vhci*, %struct.vhci** %7, align 8
  %80 = getelementptr inbounds %struct.vhci, %struct.vhci* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.vhci_device*, %struct.vhci_device** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %83, i64 %85
  store %struct.vhci_device* %86, %struct.vhci_device** %14, align 8
  %87 = load %struct.vhci_device*, %struct.vhci_device** %14, align 8
  %88 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load i32, i32* @HUB_SPEED_SUPER, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @VHCI_PORTS, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @VHCI_HC_PORTS, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.vhci_device*, %struct.vhci_device** %14, align 8
  %100 = call i32 @port_show_vhci(i8** %5, i32 %91, i32 %98, %struct.vhci_device* %99)
  %101 = load %struct.vhci_device*, %struct.vhci_device** %14, align 8
  %102 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %78
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %74

108:                                              ; preds = %74
  %109 = load %struct.vhci*, %struct.vhci** %7, align 8
  %110 = getelementptr inbounds %struct.vhci, %struct.vhci* %109, i32 0, i32 0
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %108, %27
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*) #1

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @port_show_vhci(i8**, i32, i32, %struct.vhci_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
