; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_linksts_change_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_linksts_change_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DWC3_LINK_STATE_MASK = common dso_local global i32 0, align 4
@DWC3_REVISION_250A = common dso_local global i64 0, align 8
@DWC3_GHWPARAMS1_EN_PWROPT_HIB = common dso_local global i32 0, align 4
@DWC3_REVISION_183A = common dso_local global i64 0, align 8
@DWC3_LINK_STATE_U0 = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_INITU2ENA = common dso_local global i32 0, align 4
@DWC3_DCTL_ACCEPTU2ENA = common dso_local global i32 0, align 4
@DWC3_DCTL_INITU1ENA = common dso_local global i32 0, align 4
@DWC3_DCTL_ACCEPTU1ENA = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, i32)* @dwc3_gadget_linksts_change_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_linksts_change_interrupt(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DWC3_LINK_STATE_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DWC3_GHWPARAMS1_EN_PWROPT(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DWC3_REVISION_250A, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DWC3_GHWPARAMS1_EN_PWROPT_HIB, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 131
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %112

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %22, %2
  %37 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DWC3_REVISION_183A, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DWC3_LINK_STATE_U0, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %86 [
    i32 130, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %46, %46
  %51 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %52 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DWC3_DCTL, align 4
  %55 = call i32 @dwc3_readl(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @DWC3_DCTL_INITU2ENA, align 4
  %58 = load i32, i32* @DWC3_DCTL_ACCEPTU2ENA, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DWC3_DCTL_INITU1ENA, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @DWC3_DCTL_ACCEPTU1ENA, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %56, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %66 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %50
  %76 = load i32, i32* %7, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %81 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DWC3_DCTL, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dwc3_writel(i32 %82, i32 %83, i32 %84)
  br label %87

86:                                               ; preds = %46
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %42
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %107 [
    i32 130, label %91
    i32 129, label %101
    i32 128, label %101
    i32 131, label %104
  ]

91:                                               ; preds = %89
  %92 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %93 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @USB_SPEED_SUPER, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %99 = call i32 @dwc3_suspend_gadget(%struct.dwc3* %98)
  br label %100

100:                                              ; preds = %97, %91
  br label %108

101:                                              ; preds = %89, %89
  %102 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %103 = call i32 @dwc3_suspend_gadget(%struct.dwc3* %102)
  br label %108

104:                                              ; preds = %89
  %105 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %106 = call i32 @dwc3_resume_gadget(%struct.dwc3* %105)
  br label %108

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %104, %101, %100
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %111 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %34
  ret void
}

declare dso_local i32 @DWC3_GHWPARAMS1_EN_PWROPT(i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_suspend_gadget(%struct.dwc3*) #1

declare dso_local i32 @dwc3_resume_gadget(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
