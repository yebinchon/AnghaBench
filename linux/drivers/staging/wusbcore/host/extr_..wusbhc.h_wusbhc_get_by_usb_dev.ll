; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wusbhc.h_wusbhc_get_by_usb_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wusbhc.h_wusbhc_get_by_usb_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.usb_device = type { i32, i32, i32 }
%struct.usb_hcd = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"devnum %d wusb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wusbhc* (%struct.usb_device*)* @wusbhc_get_by_usb_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.wusbhc* null, %struct.wusbhc** %4, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 2
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %15
  %36 = phi i1 [ false, %15 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  br label %39

39:                                               ; preds = %35, %10, %1
  %40 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %41 = call %struct.usb_hcd* @usb_hcd_get_by_usb_dev(%struct.usb_device* %40)
  store %struct.usb_hcd* %41, %struct.usb_hcd** %5, align 8
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %43 = icmp eq %struct.usb_hcd* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.wusbhc* null, %struct.wusbhc** %2, align 8
  br label %54

45:                                               ; preds = %39
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %53 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %52)
  store %struct.wusbhc* %53, %struct.wusbhc** %4, align 8
  store %struct.wusbhc* %53, %struct.wusbhc** %2, align 8
  br label %54

54:                                               ; preds = %45, %44
  %55 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  ret %struct.wusbhc* %55
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.usb_hcd* @usb_hcd_get_by_usb_dev(%struct.usb_device*) #1

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
