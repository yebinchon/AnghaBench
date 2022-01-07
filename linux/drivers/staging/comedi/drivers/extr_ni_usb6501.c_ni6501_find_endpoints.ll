; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni6501_private* }
%struct.ni6501_private = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Wrong number of endpoints\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni6501_find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6501_find_endpoints(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.ni6501_private*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %9)
  store %struct.usb_interface* %10, %struct.usb_interface** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.ni6501_private*, %struct.ni6501_private** %12, align 8
  store %struct.ni6501_private* %13, %struct.ni6501_private** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %6, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %90

29:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %30
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %39 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %44, %struct.usb_endpoint_descriptor** %7, align 8
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %46 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %50 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %49, i32 0, i32 1
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %50, align 8
  %52 = icmp ne %struct.usb_endpoint_descriptor* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %55 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %56 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %55, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %54, %struct.usb_endpoint_descriptor** %56, align 8
  br label %57

57:                                               ; preds = %53, %48
  br label %73

58:                                               ; preds = %37
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %60 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %64 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %63, i32 0, i32 0
  %65 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %64, align 8
  %66 = icmp ne %struct.usb_endpoint_descriptor* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %69 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %70 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %69, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %68, %struct.usb_endpoint_descriptor** %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  br label %73

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %71, %57
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %30

76:                                               ; preds = %30
  %77 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %78 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %77, i32 0, i32 1
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %78, align 8
  %80 = icmp ne %struct.usb_endpoint_descriptor* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.ni6501_private*, %struct.ni6501_private** %5, align 8
  %83 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %82, i32 0, i32 0
  %84 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %83, align 8
  %85 = icmp ne %struct.usb_endpoint_descriptor* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %86, %22
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
