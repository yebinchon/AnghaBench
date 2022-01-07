; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@TX = common dso_local global i32 0, align 4
@ENDPTCTRL_TXT = common dso_local global i32 0, align 4
@ENDPTCTRL_TXS = common dso_local global i32 0, align 4
@ENDPTCTRL_TXR = common dso_local global i32 0, align 4
@ENDPTCTRL_TXE = common dso_local global i32 0, align 4
@ENDPTCTRL_RXT = common dso_local global i32 0, align 4
@ENDPTCTRL_RXS = common dso_local global i32 0, align 4
@ENDPTCTRL_RXR = common dso_local global i32 0, align 4
@ENDPTCTRL_RXE = common dso_local global i32 0, align 4
@OP_ENDPTCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32, i32, i32)* @hw_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_ep_enable(%struct.ci_hdrc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ci_hdrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @TX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load i32, i32* @ENDPTCTRL_TXT, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @__ffs(i32 %17)
  %19 = shl i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @ENDPTCTRL_TXS, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @ENDPTCTRL_TXR, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @ENDPTCTRL_TXR, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @ENDPTCTRL_TXE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ENDPTCTRL_TXE, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %56

35:                                               ; preds = %4
  %36 = load i32, i32* @ENDPTCTRL_RXT, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__ffs(i32 %38)
  %40 = shl i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @ENDPTCTRL_RXS, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @ENDPTCTRL_RXR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @ENDPTCTRL_RXR, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @ENDPTCTRL_RXE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @ENDPTCTRL_RXE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %35, %14
  %57 = load %struct.ci_hdrc*, %struct.ci_hdrc** %5, align 8
  %58 = load i64, i64* @OP_ENDPTCTRL, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @hw_write(%struct.ci_hdrc* %57, i64 %61, i32 %62, i32 %63)
  ret i32 0
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
