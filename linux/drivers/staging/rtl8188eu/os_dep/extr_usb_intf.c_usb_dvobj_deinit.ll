; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_dvobj_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_dvobj_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvobj_priv = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"usb attached..., try to reset usb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_dvobj_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dvobj_deinit(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.dvobj_priv* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.dvobj_priv* %5, %struct.dvobj_priv** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %9 = icmp ne %struct.dvobj_priv* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %22 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %20, %15
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call %struct.TYPE_4__* @interface_to_usbdev(%struct.usb_interface* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %35 = call %struct.TYPE_4__* @interface_to_usbdev(%struct.usb_interface* %34)
  %36 = call i32 @usb_reset_device(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %39, i32 0, i32 2
  %41 = call i32 @mutex_destroy(i32* %40)
  %42 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %43 = call i32 @kfree(%struct.dvobj_priv* %42)
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %46 = call %struct.TYPE_4__* @interface_to_usbdev(%struct.usb_interface* %45)
  %47 = call i32 @usb_put_dev(%struct.TYPE_4__* %46)
  ret void
}

declare dso_local %struct.dvobj_priv* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local %struct.TYPE_4__* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @usb_reset_device(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.dvobj_priv*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
