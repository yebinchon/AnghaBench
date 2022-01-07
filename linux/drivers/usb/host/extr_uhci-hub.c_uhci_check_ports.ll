; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_check_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_check_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@USBPORTSC1 = common dso_local global i32 0, align 4
@USBPORTSC_PR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USBPORTSC_CSC = common dso_local global i32 0, align 4
@USBPORTSC_PEC = common dso_local global i32 0, align 4
@USBPORTSC_PE = common dso_local global i32 0, align 4
@USBPORTSC_RD = common dso_local global i32 0, align 4
@USB_RESUME_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @uhci_check_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_check_ports(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %103, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %6
  %13 = load i32, i32* @USBPORTSC1, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 2, %14
  %16 = add i32 %13, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @uhci_readw(%struct.uhci_hcd* %18, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @USBPORTSC_PR, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %12
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @time_after_eq(i64 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load i32, i32* @USBPORTSC_PR, align 4
  %35 = call i32 @CLR_RH_PORTSTAT(i32 %34)
  %36 = call i32 @udelay(i32 10)
  %37 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %38 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @wait_for_HP(%struct.uhci_hcd* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* @USBPORTSC_CSC, align 4
  %47 = load i32, i32* @USBPORTSC_PEC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @CLR_RH_PORTSTAT(i32 %48)
  %50 = load i32, i32* @USBPORTSC_PE, align 4
  %51 = call i32 @SET_RH_PORTSTAT(i32 %50)
  br label %52

52:                                               ; preds = %45, %26
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @USBPORTSC_RD, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %62 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %61, i32 0, i32 2
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %67, i32 0, i32 2
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i32, i32* @USB_RESUME_TIMEOUT, align 4
  %72 = call i64 @msecs_to_jiffies(i32 %71)
  %73 = add nsw i64 %70, %72
  %74 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %75 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %77 = call %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @usb_hcd_start_port_resume(i32* %78, i32 %79)
  %81 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %82 = call %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %85 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @mod_timer(i32* %83, i64 %86)
  br label %101

88:                                               ; preds = %59
  %89 = load i64, i64* @jiffies, align 8
  %90 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %91 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @time_after_eq(i64 %89, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @uhci_finish_suspend(%struct.uhci_hcd* %96, i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101, %53
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %6

106:                                              ; preds = %6
  ret void
}

declare dso_local i32 @uhci_readw(%struct.uhci_hcd*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @CLR_RH_PORTSTAT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_HP(%struct.uhci_hcd*, i64) #1

declare dso_local i32 @SET_RH_PORTSTAT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_hcd_start_port_resume(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @uhci_finish_suspend(%struct.uhci_hcd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
