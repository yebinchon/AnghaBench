; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_qcom*)* @dwc3_qcom_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_qcom_enable_interrupts(%struct.dwc3_qcom* %0) #0 {
  %2 = alloca %struct.dwc3_qcom*, align 8
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %2, align 8
  %3 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %9 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @enable_irq(i64 %10)
  %12 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %13 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @enable_irq_wake(i64 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %18 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %23 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @enable_irq(i64 %24)
  %26 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %27 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @enable_irq_wake(i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %32 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %37 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @enable_irq(i64 %38)
  %40 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %41 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @enable_irq_wake(i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %46 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %51 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @enable_irq(i64 %52)
  %54 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %2, align 8
  %55 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @enable_irq_wake(i64 %56)
  br label %58

58:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @enable_irq_wake(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
