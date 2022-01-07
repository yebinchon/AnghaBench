; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_hw_port_test_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_hw_port_test_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OP_PORTSC = common dso_local global i32 0, align 4
@PORTSC_PTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_port_test_set(%struct.ci_hdrc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 7, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sgt i64 %7, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %14 = load i32, i32* @OP_PORTSC, align 4
  %15 = load i32, i32* @PORTSC_PTC, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @PORTSC_PTC, align 4
  %18 = call i64 @__ffs(i32 %17)
  %19 = shl i64 %16, %18
  %20 = call i32 @hw_write(%struct.ci_hdrc* %13, i32 %14, i32 %15, i64 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %12, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i64) #1

declare dso_local i64 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
