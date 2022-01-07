; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32 }

@DWC3_REVISION_194A = common dso_local global i64 0, align 8
@DWC3_DSTS = common dso_local global i32 0, align 4
@DWC3_DSTS_DCNRD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_ULSTCHNGREQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_gadget_set_link_state(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10000, i32* %6, align 4
  %8 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DWC3_REVISION_194A, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DWC3_DSTS, align 4
  %23 = call i32 @dwc3_readl(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DWC3_DSTS_DCNRD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @udelay(i32 5)
  br label %31

30:                                               ; preds = %18
  br label %32

31:                                               ; preds = %28
  br label %14

32:                                               ; preds = %30, %14
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DWC3_DCTL, align 4
  %44 = call i32 @dwc3_readl(i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @DWC3_DCTL_ULSTCHNGREQ_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @DWC3_DCTL_ULSTCHNGREQ(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DWC3_DCTL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dwc3_writel(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DWC3_REVISION_194A, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %86

65:                                               ; preds = %39
  store i32 10000, i32* %6, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %72 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DWC3_DSTS, align 4
  %75 = call i32 @dwc3_readl(i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @DWC3_DSTS_USBLNKST(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %70
  %82 = call i32 @udelay(i32 5)
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %80, %64, %35
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DWC3_DCTL_ULSTCHNGREQ(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_DSTS_USBLNKST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
