; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_port_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_port_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCGCTL = common dso_local global i32 0, align 4
@PCGCTL_STOPPCLK = common dso_local global i32 0, align 4
@HPRT0_RES = common dso_local global i32 0, align 4
@HPRT0_SUSP = common dso_local global i32 0, align 4
@HPRT0 = common dso_local global i32 0, align 4
@USB_RESUME_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_port_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_port_resume(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = load i32, i32* @PCGCTL, align 4
  %18 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @PCGCTL_STOPPCLK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PCGCTL, align 4
  %26 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %23, i32 %24, i32 %25)
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = call i32 @msleep(i32 20)
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %15, %1
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %38 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @HPRT0_RES, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @HPRT0_SUSP, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HPRT0, align 4
  %49 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %46, i32 %47, i32 %48)
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 1
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* @USB_RESUME_TIMEOUT, align 4
  %55 = call i32 @msleep(i32 %54)
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 1
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %61 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @HPRT0_RES, align 4
  %63 = load i32, i32* @HPRT0_SUSP, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @HPRT0, align 4
  %71 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %68, i32 %69, i32 %70)
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %73 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %75 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %74, i32 0, i32 1
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dwc2_read_hprt0(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
