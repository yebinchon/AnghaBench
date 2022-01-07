; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_ep_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@OP_ENDPTFLUSH = common dso_local global i32 0, align 4
@OP_ENDPTSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32, i32)* @hw_ep_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_ep_flush(%struct.ci_hdrc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @hw_ep_bit(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %27, %3
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %13 = load i32, i32* @OP_ENDPTFLUSH, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = call i32 @hw_write(%struct.ci_hdrc* %12, i32 %13, i32 -1, i32 %15)
  br label %17

17:                                               ; preds = %24, %11
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %19 = load i32, i32* @OP_ENDPTFLUSH, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = call i64 @hw_read(%struct.ci_hdrc* %18, i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (...) @cpu_relax()
  br label %17

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %29 = load i32, i32* @OP_ENDPTSTAT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i64 @hw_read(%struct.ci_hdrc* %28, i32 %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %11, label %34

34:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @hw_ep_bit(i32, i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
