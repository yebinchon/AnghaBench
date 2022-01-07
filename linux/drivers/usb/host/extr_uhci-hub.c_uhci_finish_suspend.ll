; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_finish_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hub.c_uhci_finish_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SUSPEND_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, i32, i64)* @uhci_finish_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_finish_suspend(%struct.uhci_hcd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @uhci_readw(%struct.uhci_hcd* %9, i64 %10)
  %12 = load i32, i32* @SUSPEND_BITS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load i32, i32* @SUSPEND_BITS, align 4
  %17 = call i32 @CLR_RH_PORTSTAT(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %15
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @uhci_readw(%struct.uhci_hcd* %33, i64 %34)
  %36 = load i32, i32* @SUSPEND_BITS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %45

40:                                               ; preds = %32
  %41 = call i32 @udelay(i32 1)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %29

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %52 = call %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @usb_hcd_end_port_resume(i32* %53, i32 %54)
  ret void
}

declare dso_local i32 @uhci_readw(%struct.uhci_hcd*, i64) #1

declare dso_local i32 @CLR_RH_PORTSTAT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_hcd_end_port_resume(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
