; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_free_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_free_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_host_endpoint = type { i64 }
%struct.usb_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)* }
%struct.usb_device = type { i64, i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_free_streams(%struct.usb_interface* %0, %struct.usb_host_endpoint** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_host_endpoint**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %6, align 8
  store %struct.usb_host_endpoint** %1, %struct.usb_host_endpoint*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %11, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.usb_hcd* @bus_to_hcd(i32 %18)
  store %struct.usb_hcd* %19, %struct.usb_hcd** %10, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_SPEED_SUPER, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %89

28:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %34, i64 %36
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %37, align 8
  %39 = icmp ne %struct.usb_host_endpoint* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %41, i64 %43
  %45 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %44, align 8
  %46 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40, %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %89

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)** %60, align 8
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %64 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 %61(%struct.usb_hcd* %62, %struct.usb_device* %63, %struct.usb_host_endpoint** %64, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %89

72:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %78, i64 %80
  %82 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %81, align 8
  %83 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %70, %49, %25
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
