; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i64, i32 }
%struct.usbduxfast_private = type { i8*, i32, i8*, i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"This driver needs USB 2.0 to operate. Aborting...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIZEOFDUXBUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not switch to alternate setting 1\0A\00", align 1
@SIZEINBUF = common dso_local global i32 0, align 4
@FIRMWARE = common dso_local global i32 0, align 4
@usbduxfast_upload_firmware = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_usbduxfast_ai_range = common dso_local global i32 0, align 4
@usbduxfast_ai_insn_read = common dso_local global i32 0, align 4
@usbduxfast_ai_cmdtest = common dso_local global i32 0, align 4
@usbduxfast_ai_cmd = common dso_local global i32 0, align 4
@usbduxfast_ai_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @usbduxfast_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxfast_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usbduxfast_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %13)
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_SPEED_HIGH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %156

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = call %struct.usbduxfast_private* @comedi_alloc_devpriv(%struct.comedi_device* %28, i32 32)
  store %struct.usbduxfast_private* %29, %struct.usbduxfast_private** %8, align 8
  %30 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %31 = icmp ne %struct.usbduxfast_private* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %156

35:                                               ; preds = %27
  %36 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %37 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %36, i32 0, i32 3
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %40 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %41 = call i32 @usb_set_intfdata(%struct.usb_interface* %39, %struct.usbduxfast_private* %40)
  %42 = load i32, i32* @SIZEOFDUXBUF, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %46 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %48 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %35
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %156

54:                                               ; preds = %35
  %55 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_set_interface(%struct.usb_device* %55, i32 %61, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %156

72:                                               ; preds = %54
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @usb_alloc_urb(i32 0, i32 %73)
  %75 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %76 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %78 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %156

84:                                               ; preds = %72
  %85 = load i32, i32* @SIZEINBUF, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kmalloc(i32 %85, i32 %86)
  %88 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %89 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  %91 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %156

97:                                               ; preds = %84
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 1
  %101 = load i32, i32* @FIRMWARE, align 4
  %102 = load i32, i32* @usbduxfast_upload_firmware, align 4
  %103 = call i32 @comedi_load_firmware(%struct.comedi_device* %98, i32* %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %156

108:                                              ; preds = %97
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %109, i32 1)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %156

115:                                              ; preds = %108
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 1
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %117, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i64 0
  store %struct.comedi_subdevice* %119, %struct.comedi_subdevice** %9, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  store %struct.comedi_subdevice* %120, %struct.comedi_subdevice** %122, align 8
  %123 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @SDF_READABLE, align 4
  %127 = load i32, i32* @SDF_GROUND, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SDF_CMD_READ, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 1
  store i32 16, i32* %134, align 4
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 2
  store i32 4096, i32* %136, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %137, i32 0, i32 8
  store i32* @range_usbduxfast_ai_range, i32** %138, align 8
  %139 = load i32, i32* @usbduxfast_ai_insn_read, align 4
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %141 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 4
  %142 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %143 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @usbduxfast_ai_cmdtest, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @usbduxfast_ai_cmd, align 4
  %151 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %152 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @usbduxfast_ai_cancel, align 4
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %155 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %115, %113, %106, %94, %81, %65, %51, %32, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.usbduxfast_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbduxfast_private*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
