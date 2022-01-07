; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_RUN = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@STS_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*)* @ehci_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_halt(%struct.ehci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  %5 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = call i32 @ehci_writel(%struct.ehci_hcd* %8, i32 0, i32* %12)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %15 = call i64 @ehci_is_TDI(%struct.ehci_hcd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = call i32 @tdi_in_host_mode(%struct.ehci_hcd* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock_irq(i32* %23)
  store i32 0, i32* %2, align 4
  br label %67

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @CMD_RUN, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @ehci_readl(%struct.ehci_hcd* %32, i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @CMD_RUN, align 4
  %39 = load i32, i32* @CMD_IAAD, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @ehci_writel(%struct.ehci_hcd* %44, i32 %45, i32* %49)
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %55 = call %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @synchronize_irq(i32 %57)
  %59 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* @STS_HALT, align 4
  %65 = load i32, i32* @STS_HALT, align 4
  %66 = call i32 @ehci_handshake(%struct.ehci_hcd* %59, i32* %63, i32 %64, i32 %65, i32 2000)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %25, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i64 @ehci_is_TDI(%struct.ehci_hcd*) #1

declare dso_local i32 @tdi_in_host_mode(%struct.ehci_hcd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_handshake(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
