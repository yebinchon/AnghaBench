; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_prime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@RX = common dso_local global i32 0, align 4
@OP_ENDPTSETUPSTAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@OP_ENDPTPRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32, i32, i32)* @hw_ep_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_ep_prime(%struct.ci_hdrc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @hw_ep_bit(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @wmb()
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %23 = load i32, i32* @OP_ENDPTSETUPSTAT, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = call i64 @hw_read(%struct.ci_hdrc* %22, i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %21, %17, %4
  %32 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %33 = load i32, i32* @OP_ENDPTPRIME, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = call i32 @hw_write(%struct.ci_hdrc* %32, i32 %33, i32 -1, i32 %35)
  br label %37

37:                                               ; preds = %44, %31
  %38 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %39 = load i32, i32* @OP_ENDPTPRIME, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = call i64 @hw_read(%struct.ci_hdrc* %38, i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @cpu_relax()
  br label %37

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %55 = load i32, i32* @OP_ENDPTSETUPSTAT, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = call i64 @hw_read(%struct.ci_hdrc* %54, i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %53, %49, %46
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %60, %28
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @hw_ep_bit(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
