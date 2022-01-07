; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.dt9812_private* }
%struct.dt9812_private = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Wrong number of endpoints\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Endpoint has wrong direction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dt9812_find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_find_endpoints(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.dt9812_private*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %4, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.dt9812_private*, %struct.dt9812_private** %16, align 8
  store %struct.dt9812_private* %17, %struct.dt9812_private** %6, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %99

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %95, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %34 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %31
  store i32 -1, i32* %9, align 4
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %40 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %45, %struct.usb_endpoint_descriptor** %7, align 8
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %79 [
    i32 0, label %47
    i32 1, label %49
    i32 2, label %62
    i32 3, label %75
    i32 4, label %77
  ]

47:                                               ; preds = %38
  %48 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %48, i32* %9, align 4
  br label %79

49:                                               ; preds = %38
  %50 = load i32, i32* @USB_DIR_OUT, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dt9812_private*, %struct.dt9812_private** %6, align 8
  %55 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %58 = call i8* @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %57)
  %59 = load %struct.dt9812_private*, %struct.dt9812_private** %6, align 8
  %60 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  br label %79

62:                                               ; preds = %38
  %63 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dt9812_private*, %struct.dt9812_private** %6, align 8
  %68 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %71 = call i8* @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %70)
  %72 = load %struct.dt9812_private*, %struct.dt9812_private** %6, align 8
  %73 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  br label %79

75:                                               ; preds = %38
  %76 = load i32, i32* @USB_DIR_OUT, align 4
  store i32 %76, i32* %9, align 4
  br label %79

77:                                               ; preds = %38
  %78 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %38, %77, %75, %62, %49, %47
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %81 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @USB_DIR_IN, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %99

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %31

98:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %87, %23
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
