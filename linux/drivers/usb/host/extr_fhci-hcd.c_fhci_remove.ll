; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.fhci_hcd = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NUM_GPIOS = common dso_local global i32 0, align 4
@NUM_PINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fhci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.fhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %9)
  store %struct.fhci_hcd* %10, %struct.fhci_hcd** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call i32 @usb_remove_hcd(%struct.usb_hcd* %11)
  %13 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %14 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.usb_hcd* %18)
  %20 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %21 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @gtm_put_timer16(%struct.TYPE_2__* %22)
  %24 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpm_muram_offset(i32 %26)
  %28 = call i32 @cpm_muram_free(i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %53, %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NUM_GPIOS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gpio_is_valid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %53

44:                                               ; preds = %33
  %45 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpio_free(i32 %51)
  br label %53

53:                                               ; preds = %44, %43
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %29

56:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NUM_PINS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %63 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qe_pin_free(i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %57

73:                                               ; preds = %57
  %74 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %75 = call i32 @fhci_dfs_destroy(%struct.fhci_hcd* %74)
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %77 = call i32 @usb_put_hcd(%struct.usb_hcd* %76)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @free_irq(i32, %struct.usb_hcd*) #1

declare dso_local i32 @gtm_put_timer16(%struct.TYPE_2__*) #1

declare dso_local i32 @cpm_muram_free(i32) #1

declare dso_local i32 @cpm_muram_offset(i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @qe_pin_free(i32) #1

declare dso_local i32 @fhci_dfs_destroy(%struct.fhci_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
