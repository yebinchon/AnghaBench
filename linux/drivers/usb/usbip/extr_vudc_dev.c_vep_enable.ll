; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.vep = type { i64, i64, i32, %struct.usb_endpoint_descriptor* }
%struct.vudc = type { i32, i32 }

@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @vep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.vep*, align 8
  %7 = alloca %struct.vudc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.vep* @to_vep(%struct.usb_ep* %10)
  store %struct.vep* %11, %struct.vep** %6, align 8
  %12 = load %struct.vep*, %struct.vep** %6, align 8
  %13 = call %struct.vudc* @ep_to_vudc(%struct.vep* %12)
  store %struct.vudc* %13, %struct.vudc** %7, align 8
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = icmp ne %struct.usb_ep* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %18 = icmp ne %struct.usb_endpoint_descriptor* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.vep*, %struct.vep** %6, align 8
  %21 = getelementptr inbounds %struct.vep, %struct.vep* %20, i32 0, i32 3
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %23 = icmp ne %struct.usb_endpoint_descriptor* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24, %19, %16, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %30
  %40 = load %struct.vudc*, %struct.vudc** %7, align 8
  %41 = getelementptr inbounds %struct.vudc, %struct.vudc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ESHUTDOWN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load %struct.vudc*, %struct.vudc** %7, align 8
  %49 = getelementptr inbounds %struct.vudc, %struct.vudc* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %53 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %56 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %58 = load %struct.vep*, %struct.vep** %6, align 8
  %59 = getelementptr inbounds %struct.vep, %struct.vep* %58, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %57, %struct.usb_endpoint_descriptor** %59, align 8
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %61 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %60)
  %62 = load %struct.vep*, %struct.vep** %6, align 8
  %63 = getelementptr inbounds %struct.vep, %struct.vep* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vep*, %struct.vep** %6, align 8
  %65 = getelementptr inbounds %struct.vep, %struct.vep* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.vep*, %struct.vep** %6, align 8
  %67 = getelementptr inbounds %struct.vep, %struct.vep* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.vudc*, %struct.vudc** %7, align 8
  %69 = getelementptr inbounds %struct.vudc, %struct.vudc* %68, i32 0, i32 0
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %47, %44, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.vep* @to_vep(%struct.usb_ep*) #1

declare dso_local %struct.vudc* @ep_to_vudc(%struct.vep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
