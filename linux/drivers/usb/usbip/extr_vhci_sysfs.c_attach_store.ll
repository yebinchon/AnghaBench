; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_attach_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_attach_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.socket = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.vhci_hcd = type { %struct.vhci* }
%struct.vhci = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vhci_device* }
%struct.vhci_device = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i8*, i8*, i32, %struct.socket* }
%struct.TYPE_5__ = type { %struct.vhci_device* }

@.str = private unnamed_addr constant [12 x i8] c"%u %u %u %u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"port(%u) pdev(%d) rhport(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"sockfd(%u) devid(%u) speed(%u)\0A\00", align 1
@vhcis = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"port %d is not ready\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@VDEV_ST_NULL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"port %d already used\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"pdev(%u) rhport(%u) sockfd(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"devid(%u) speed(%u) speed_str(%s)\0A\00", align 1
@VDEV_ST_NOTASSIGNED = common dso_local global i64 0, align 8
@vhci_rx_loop = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"vhci_rx\00", align 1
@vhci_tx_loop = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"vhci_tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @attach_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @attach_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.usb_hcd*, align 8
  %18 = alloca %struct.vhci_hcd*, align 8
  %19 = alloca %struct.vhci_device*, align 8
  %20 = alloca %struct.vhci*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %12, i32* %11, i64* %15, i64* %16)
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %184

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @port_to_pdev_nr(i64 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @port_to_rhport(i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %12, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %36, i64 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @valid_args(i64* %13, i64* %14, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %184

49:                                               ; preds = %29
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vhcis, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.usb_hcd* @platform_get_drvdata(i32 %54)
  store %struct.usb_hcd* %55, %struct.usb_hcd** %17, align 8
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %17, align 8
  %57 = icmp eq %struct.usb_hcd* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @EAGAIN, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %184

64:                                               ; preds = %49
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %17, align 8
  %66 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %65)
  store %struct.vhci_hcd* %66, %struct.vhci_hcd** %18, align 8
  %67 = load %struct.vhci_hcd*, %struct.vhci_hcd** %18, align 8
  %68 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %67, i32 0, i32 0
  %69 = load %struct.vhci*, %struct.vhci** %68, align 8
  store %struct.vhci* %69, %struct.vhci** %20, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @USB_SPEED_SUPER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.vhci*, %struct.vhci** %20, align 8
  %75 = getelementptr inbounds %struct.vhci, %struct.vhci* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.vhci_device*, %struct.vhci_device** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %78, i64 %79
  store %struct.vhci_device* %80, %struct.vhci_device** %19, align 8
  br label %89

81:                                               ; preds = %64
  %82 = load %struct.vhci*, %struct.vhci** %20, align 8
  %83 = getelementptr inbounds %struct.vhci, %struct.vhci* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.vhci_device*, %struct.vhci_device** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %86, i64 %87
  store %struct.vhci_device* %88, %struct.vhci_device** %19, align 8
  br label %89

89:                                               ; preds = %81, %73
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.socket* @sockfd_lookup(i32 %90, i32* %21)
  store %struct.socket* %91, %struct.socket** %10, align 8
  %92 = load %struct.socket*, %struct.socket** %10, align 8
  %93 = icmp ne %struct.socket* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* @EINVAL, align 8
  %96 = sub i64 0, %95
  store i64 %96, i64* %5, align 8
  br label %184

97:                                               ; preds = %89
  %98 = load %struct.vhci*, %struct.vhci** %20, align 8
  %99 = getelementptr inbounds %struct.vhci, %struct.vhci* %98, i32 0, i32 0
  %100 = load i64, i64* %22, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %103 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %107 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VDEV_ST_NULL, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %97
  %113 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %114 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.vhci*, %struct.vhci** %20, align 8
  %118 = getelementptr inbounds %struct.vhci, %struct.vhci* %117, i32 0, i32 0
  %119 = load i64, i64* %22, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.socket*, %struct.socket** %10, align 8
  %122 = call i32 @sockfd_put(%struct.socket* %121)
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* @EBUSY, align 8
  %127 = sub i64 0, %126
  store i64 %127, i64* %5, align 8
  br label %184

128:                                              ; preds = %97
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @dev_info(%struct.device* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %130, i64 %131, i32 %132)
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @usb_speed_string(i64 %137)
  %139 = call i32 @dev_info(%struct.device* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %135, i64 %136, i32 %138)
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %142 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %145 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %148 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load %struct.socket*, %struct.socket** %10, align 8
  %151 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %152 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 5
  store %struct.socket* %150, %struct.socket** %153, align 8
  %154 = load i64, i64* @VDEV_ST_NOTASSIGNED, align 8
  %155 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %156 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %159 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = call i32 @spin_unlock(i32* %160)
  %162 = load %struct.vhci*, %struct.vhci** %20, align 8
  %163 = getelementptr inbounds %struct.vhci, %struct.vhci* %162, i32 0, i32 0
  %164 = load i64, i64* %22, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load i32, i32* @vhci_rx_loop, align 4
  %167 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %168 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %167, i32 0, i32 2
  %169 = call i8* @kthread_get_run(i32 %166, %struct.TYPE_8__* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %170 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %171 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  store i8* %169, i8** %172, align 8
  %173 = load i32, i32* @vhci_tx_loop, align 4
  %174 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %175 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %174, i32 0, i32 2
  %176 = call i8* @kthread_get_run(i32 %173, %struct.TYPE_8__* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %177 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %178 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i8* %176, i8** %179, align 8
  %180 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %181 = load i64, i64* %16, align 8
  %182 = call i32 @rh_port_connect(%struct.vhci_device* %180, i64 %181)
  %183 = load i64, i64* %9, align 8
  store i64 %183, i64* %5, align 8
  br label %184

184:                                              ; preds = %128, %112, %94, %58, %46, %26
  %185 = load i64, i64* %5, align 8
  ret i64 %185
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*, i64*, i64*) #1

declare dso_local i64 @port_to_pdev_nr(i64) #1

declare dso_local i64 @port_to_rhport(i64) #1

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*, i32, i64, i64) #1

declare dso_local i32 @valid_args(i64*, i64*, i64) #1

declare dso_local %struct.usb_hcd* @platform_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64, i32) #1

declare dso_local i32 @usb_speed_string(i64) #1

declare dso_local i8* @kthread_get_run(i32, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @rh_port_connect(%struct.vhci_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
