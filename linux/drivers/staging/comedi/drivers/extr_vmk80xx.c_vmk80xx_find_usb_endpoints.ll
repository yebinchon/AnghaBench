; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_find_usb_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_find_usb_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @vmk80xx_find_usb_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_find_usb_endpoints(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.vmk80xx_private*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %10, align 8
  store %struct.vmk80xx_private* %11, %struct.vmk80xx_private** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %6, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %94

25:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %26
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %40, %struct.usb_endpoint_descriptor** %7, align 8
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %42 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %46 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %33
  %49 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %50 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %49, i32 0, i32 1
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %50, align 8
  %52 = icmp ne %struct.usb_endpoint_descriptor* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %55 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %56 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %55, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %54, %struct.usb_endpoint_descriptor** %56, align 8
  br label %57

57:                                               ; preds = %53, %48
  br label %77

58:                                               ; preds = %44
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %60 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %64 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %58
  %67 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %68 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %67, i32 0, i32 0
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %68, align 8
  %70 = icmp ne %struct.usb_endpoint_descriptor* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %73 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %74 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %73, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %72, %struct.usb_endpoint_descriptor** %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %75, %57
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %26

80:                                               ; preds = %26
  %81 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %82 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %81, i32 0, i32 1
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %82, align 8
  %84 = icmp ne %struct.usb_endpoint_descriptor* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %87 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %86, i32 0, i32 0
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %87, align 8
  %89 = icmp ne %struct.usb_endpoint_descriptor* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %90, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
