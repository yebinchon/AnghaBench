; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OP_ENDPTCTRL = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@ENDPTCTRL_TXS = common dso_local global i32 0, align 4
@ENDPTCTRL_RXS = common dso_local global i32 0, align 4
@ENDPTCTRL_TXR = common dso_local global i32 0, align 4
@ENDPTCTRL_RXR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32, i32, i32)* @hw_ep_set_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_ep_set_halt(%struct.ci_hdrc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %66

21:                                               ; preds = %15, %4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* @OP_ENDPTCTRL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ENDPTCTRL_TXS, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ENDPTCTRL_RXS, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @TX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENDPTCTRL_TXR, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @ENDPTCTRL_RXR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @hw_write(%struct.ci_hdrc* %44, i32 %45, i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @hw_ep_get_halt(%struct.ci_hdrc* %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %22, label %65

65:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @hw_ep_get_halt(%struct.ci_hdrc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
