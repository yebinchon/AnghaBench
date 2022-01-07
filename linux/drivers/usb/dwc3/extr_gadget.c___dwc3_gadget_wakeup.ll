; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32 }

@DWC3_DSTS = common dso_local global i32 0, align 4
@DWC3_DSTS_CONNECTSPD = common dso_local global i32 0, align 4
@DWC3_DSTS_SUPERSPEED = common dso_local global i32 0, align 4
@DWC3_DSTS_SUPERSPEED_PLUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DWC3_LINK_STATE_RECOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to put link in Recovery\0A\00", align 1
@DWC3_REVISION_194A = common dso_local global i64 0, align 8
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_ULSTCHNGREQ_MASK = common dso_local global i32 0, align 4
@DWC3_LINK_STATE_U0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to send remote wakeup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @__dwc3_gadget_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_wakeup(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DWC3_DSTS, align 4
  %13 = call i32 @dwc3_readl(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DWC3_DSTS_CONNECTSPD, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DWC3_DSTS_SUPERSPEED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DWC3_DSTS_SUPERSPEED_PLUS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %98

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @DWC3_DSTS_USBLNKST(i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %31 [
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %25, %25
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %98

34:                                               ; preds = %30
  %35 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %36 = load i32, i32* @DWC3_LINK_STATE_RECOV, align 4
  %37 = call i32 @dwc3_gadget_set_link_state(%struct.dwc3* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %98

46:                                               ; preds = %34
  %47 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DWC3_REVISION_194A, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DWC3_DCTL, align 4
  %57 = call i32 @dwc3_readl(i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @DWC3_DCTL_ULSTCHNGREQ_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DWC3_DCTL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dwc3_writel(i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %52, %46
  store i32 20000, i32* %4, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %4, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %75 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DWC3_DSTS, align 4
  %78 = call i32 @dwc3_readl(i32 %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @DWC3_DSTS_USBLNKST(i32 %79)
  %81 = load i64, i64* @DWC3_LINK_STATE_U0, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %85

84:                                               ; preds = %73
  br label %69

85:                                               ; preds = %83, %69
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @DWC3_DSTS_USBLNKST(i32 %86)
  %88 = load i64, i64* @DWC3_LINK_STATE_U0, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %90, %40, %31, %24
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i64 @DWC3_DSTS_USBLNKST(i32) #1

declare dso_local i32 @dwc3_gadget_set_link_state(%struct.dwc3*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
