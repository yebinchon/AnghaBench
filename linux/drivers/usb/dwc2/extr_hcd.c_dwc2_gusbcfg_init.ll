; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_gusbcfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_gusbcfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_HNPCAP = common dso_local global i32 0, align 4
@GUSBCFG_SRPCAP = common dso_local global i32 0, align 4
@DWC2_CAP_PARAM_HNP_SRP_CAPABLE = common dso_local global i32 0, align 4
@DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_gusbcfg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_gusbcfg_init(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = load i32, i32* @GUSBCFG, align 4
  %6 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @GUSBCFG_HNPCAP, align 4
  %8 = load i32, i32* @GUSBCFG_SRPCAP, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %53 [
    i32 134, label %17
    i32 128, label %40
    i32 130, label %40
    i32 129, label %40
    i32 133, label %52
    i32 132, label %52
    i32 131, label %52
  ]

17:                                               ; preds = %1
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DWC2_CAP_PARAM_HNP_SRP_CAPABLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @GUSBCFG_HNPCAP, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %30 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @GUSBCFG_SRPCAP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %28
  br label %54

40:                                               ; preds = %1, %1, %1
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @GUSBCFG_SRPCAP, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %40
  br label %54

52:                                               ; preds = %1, %1, %1
  br label %53

53:                                               ; preds = %1, %52
  br label %54

54:                                               ; preds = %53, %51, %39
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @GUSBCFG, align 4
  %58 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
