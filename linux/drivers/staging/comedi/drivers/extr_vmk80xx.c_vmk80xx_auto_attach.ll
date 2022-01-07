; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmk80xx_board = type { i64, i32 }
%struct.comedi_device = type { i32, %struct.vmk80xx_board* }
%struct.usb_interface = type { i32 }
%struct.vmk80xx_private = type { i64, i32 }

@vmk80xx_boardinfo = common dso_local global %struct.vmk80xx_board* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMK8055_MODEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @vmk80xx_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.vmk80xx_board*, align 8
  %8 = alloca %struct.vmk80xx_private*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %6, align 8
  store %struct.vmk80xx_board* null, %struct.vmk80xx_board** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** @vmk80xx_boardinfo, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.vmk80xx_board* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** @vmk80xx_boardinfo, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %17, i64 %18
  store %struct.vmk80xx_board* %19, %struct.vmk80xx_board** %7, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %7, align 8
  %22 = icmp ne %struct.vmk80xx_board* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %7, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 1
  store %struct.vmk80xx_board* %27, %struct.vmk80xx_board** %29, align 8
  %30 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %7, align 8
  %31 = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = call %struct.vmk80xx_private* @comedi_alloc_devpriv(%struct.comedi_device* %35, i32 16)
  store %struct.vmk80xx_private* %36, %struct.vmk80xx_private** %8, align 8
  %37 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  %38 = icmp ne %struct.vmk80xx_private* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %26
  %43 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %7, align 8
  %44 = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  %47 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  %49 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %48, i32 0, i32 1
  %50 = call i32 @sema_init(i32* %49, i32 8)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = call i32 @vmk80xx_find_usb_endpoints(%struct.comedi_device* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %42
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = call i32 @vmk80xx_alloc_usb_buffers(%struct.comedi_device* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %57
  %65 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %66 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  %67 = call i32 @usb_set_intfdata(%struct.usb_interface* %65, %struct.vmk80xx_private* %66)
  %68 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  %69 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VMK8055_MODEL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = call i32 @vmk80xx_reset_device(%struct.comedi_device* %74)
  br label %76

76:                                               ; preds = %73, %64
  %77 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %78 = call i32 @vmk80xx_init_subdevices(%struct.comedi_device* %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %62, %55, %39, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.vmk80xx_board*) #1

declare dso_local %struct.vmk80xx_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @vmk80xx_find_usb_endpoints(%struct.comedi_device*) #1

declare dso_local i32 @vmk80xx_alloc_usb_buffers(%struct.comedi_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.vmk80xx_private*) #1

declare dso_local i32 @vmk80xx_reset_device(%struct.comedi_device*) #1

declare dso_local i32 @vmk80xx_init_subdevices(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
