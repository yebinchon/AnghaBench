; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-nep.c_wa_nep_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-nep.c_wa_nep_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, i32*, i32 }
%struct.usb_interface = type { %struct.TYPE_4__*, %struct.device }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wa_nep_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot submit notification URB: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_nep_create(%struct.wahc* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %8, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.wahc*, %struct.wahc** %4, align 8
  %15 = getelementptr inbounds %struct.wahc, %struct.wahc* %14, i32 0, i32 3
  %16 = call i32 @edc_init(i32* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %23, %struct.usb_endpoint_descriptor** %7, align 8
  %24 = load %struct.wahc*, %struct.wahc** %4, align 8
  %25 = getelementptr inbounds %struct.wahc, %struct.wahc* %24, i32 0, i32 0
  store i32 1024, i32* %25, align 8
  %26 = load %struct.wahc*, %struct.wahc** %4, align 8
  %27 = getelementptr inbounds %struct.wahc, %struct.wahc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kmalloc(i32 %28, i32 %29)
  %31 = load %struct.wahc*, %struct.wahc** %4, align 8
  %32 = getelementptr inbounds %struct.wahc, %struct.wahc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wahc*, %struct.wahc** %4, align 8
  %34 = getelementptr inbounds %struct.wahc, %struct.wahc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %90

38:                                               ; preds = %2
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @usb_alloc_urb(i32 0, i32 %39)
  %41 = load %struct.wahc*, %struct.wahc** %4, align 8
  %42 = getelementptr inbounds %struct.wahc, %struct.wahc* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.wahc*, %struct.wahc** %4, align 8
  %44 = getelementptr inbounds %struct.wahc, %struct.wahc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %85

48:                                               ; preds = %38
  %49 = load %struct.wahc*, %struct.wahc** %4, align 8
  %50 = getelementptr inbounds %struct.wahc, %struct.wahc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_rcvintpipe(%struct.usb_device* %53, i32 %56)
  %58 = load %struct.wahc*, %struct.wahc** %4, align 8
  %59 = getelementptr inbounds %struct.wahc, %struct.wahc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wahc*, %struct.wahc** %4, align 8
  %62 = getelementptr inbounds %struct.wahc, %struct.wahc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @wa_nep_cb, align 4
  %65 = load %struct.wahc*, %struct.wahc** %4, align 8
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_fill_int_urb(i32* %51, %struct.usb_device* %52, i32 %57, i32 %60, i32 %63, i32 %64, %struct.wahc* %65, i32 %68)
  %70 = load %struct.wahc*, %struct.wahc** %4, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @wa_nep_arm(%struct.wahc* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %48
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %80

79:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load %struct.wahc*, %struct.wahc** %4, align 8
  %82 = getelementptr inbounds %struct.wahc, %struct.wahc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @usb_free_urb(i32* %83)
  br label %85

85:                                               ; preds = %80, %47
  %86 = load %struct.wahc*, %struct.wahc** %4, align 8
  %87 = getelementptr inbounds %struct.wahc, %struct.wahc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kfree(i32 %88)
  br label %90

90:                                               ; preds = %85, %37
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %79
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @edc_init(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.usb_device*, i32, i32, i32, i32, %struct.wahc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @wa_nep_arm(%struct.wahc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
