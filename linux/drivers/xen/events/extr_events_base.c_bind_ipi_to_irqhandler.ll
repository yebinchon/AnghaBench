; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_ipi_to_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_bind_ipi_to_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQF_NO_SUSPEND = common dso_local global i64 0, align 8
@IRQF_FORCE_RESUME = common dso_local global i64 0, align 8
@IRQF_EARLY_RESUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_ipi_to_irqhandler(i32 %0, i32 %1, i32 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @bind_ipi_to_irq(i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %45

23:                                               ; preds = %6
  %24 = load i64, i64* @IRQF_NO_SUSPEND, align 8
  %25 = load i64, i64* @IRQF_FORCE_RESUME, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @IRQF_EARLY_RESUME, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* %11, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @request_irq(i32 %31, i32 %32, i64 %33, i8* %34, i8* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @unbind_from_irq(i32 %40)
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %39, %21
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @bind_ipi_to_irq(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i8*, i8*) #1

declare dso_local i32 @unbind_from_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
