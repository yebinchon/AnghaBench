; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ulpi.c_ci_ulpi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@OP_ULPI_VIEWPORT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32)* @ci_ulpi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_ulpi_wait(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 10000, i64* %6, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i64, i64* %6, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %6, align 8
  %10 = icmp ne i64 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %13 = load i32, i32* @OP_ULPI_VIEWPORT, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hw_read(%struct.ci_hdrc* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %23

18:                                               ; preds = %11
  %19 = call i32 @udelay(i32 1)
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
