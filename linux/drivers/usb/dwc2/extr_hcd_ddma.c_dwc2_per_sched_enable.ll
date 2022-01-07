; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_per_sched_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_per_sched_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32 }

@HCFG = common dso_local global i32 0, align 4
@HCFG_PERSCHEDENA = common dso_local global i32 0, align 4
@HFLBADDR = common dso_local global i32 0, align 4
@HCFG_FRLISTEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enabling Periodic schedule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, i32)* @dwc2_per_sched_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_per_sched_enable(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = load i32, i32* @HCFG, align 4
  %13 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HCFG_PERSCHEDENA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HFLBADDR, align 4
  %29 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %24, i32 %27, i32 %28)
  %30 = load i32, i32* @HCFG_FRLISTEN_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HCFG_PERSCHEDENA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_vdbg(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @HCFG, align 4
  %46 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %43, i32 %44, i32 %45)
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %47, i32 0, i32 1
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
