; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_get_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_get_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32 }

@RWC_BITS = common dso_local global i32 0, align 4
@ignore_oc = common dso_local global i64 0, align 8
@USBPORTSC_OCC = common dso_local global i32 0, align 4
@USBPORTSC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, i8*)* @get_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hub_status_data(%struct.uhci_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @RWC_BITS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @ignore_oc, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @USBPORTSC_OCC, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %4, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %50, %15
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %25 = load i64, i64* @USBPORTSC1, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @uhci_readw(%struct.uhci_hcd* %24, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 1, %42
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = or i32 %46, %43
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %40, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  ret i32 %59
}

declare dso_local i32 @uhci_readw(%struct.uhci_hcd*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
