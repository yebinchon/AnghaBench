; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_virq.c_intc_irq_xlate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_virq.c_intc_irq_xlate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.intc_desc_int*, i32 }
%struct.intc_desc_int = type { i32 }

@intc_big_lock = common dso_local global i32 0, align 4
@intc_irq_xlate = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intc_irq_xlate_set(i32 %0, i32 %1, %struct.intc_desc_int* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intc_desc_int*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.intc_desc_int* %2, %struct.intc_desc_int** %6, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* @intc_big_lock, i64 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intc_irq_xlate, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %10, i32* %15, align 8
  %16 = load %struct.intc_desc_int*, %struct.intc_desc_int** %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intc_irq_xlate, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.intc_desc_int* %16, %struct.intc_desc_int** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @raw_spin_unlock_irqrestore(i32* @intc_big_lock, i64 %22)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
