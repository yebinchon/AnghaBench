; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_hcd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_hcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dummy = type { i32*, i32* }
%struct.TYPE_2__ = type { %struct.dummy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dummy_hcd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_hcd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dummy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call i32 @platform_get_drvdata(%struct.platform_device* %4)
  %6 = call %struct.TYPE_2__* @hcd_to_dummy_hcd(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.dummy*, %struct.dummy** %7, align 8
  store %struct.dummy* %8, %struct.dummy** %3, align 8
  %9 = load %struct.dummy*, %struct.dummy** %3, align 8
  %10 = getelementptr inbounds %struct.dummy, %struct.dummy* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.dummy*, %struct.dummy** %3, align 8
  %15 = getelementptr inbounds %struct.dummy, %struct.dummy* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @dummy_hcd_to_hcd(i32* %16)
  %18 = call i32 @usb_remove_hcd(i32 %17)
  %19 = load %struct.dummy*, %struct.dummy** %3, align 8
  %20 = getelementptr inbounds %struct.dummy, %struct.dummy* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @dummy_hcd_to_hcd(i32* %21)
  %23 = call i32 @usb_put_hcd(i32 %22)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.dummy*, %struct.dummy** %3, align 8
  %26 = getelementptr inbounds %struct.dummy, %struct.dummy* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dummy_hcd_to_hcd(i32* %27)
  %29 = call i32 @usb_remove_hcd(i32 %28)
  %30 = load %struct.dummy*, %struct.dummy** %3, align 8
  %31 = getelementptr inbounds %struct.dummy, %struct.dummy* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dummy_hcd_to_hcd(i32* %32)
  %34 = call i32 @usb_put_hcd(i32 %33)
  %35 = load %struct.dummy*, %struct.dummy** %3, align 8
  %36 = getelementptr inbounds %struct.dummy, %struct.dummy* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.dummy*, %struct.dummy** %3, align 8
  %38 = getelementptr inbounds %struct.dummy, %struct.dummy* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @hcd_to_dummy_hcd(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_remove_hcd(i32) #1

declare dso_local i32 @dummy_hcd_to_hcd(i32*) #1

declare dso_local i32 @usb_put_hcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
