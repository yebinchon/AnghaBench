; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_gsc.c_gsc_claim_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_gsc.c_gsc_claim_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_irq = type { i32, i32, i32 }

@CPU_IRQ_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot claim irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_claim_irq(%struct.gsc_irq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsc_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsc_irq* %0, %struct.gsc_irq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @CPU_IRQ_BASE, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @txn_claim_irq(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @txn_alloc_addr(i32 %22)
  %24 = load %struct.gsc_irq*, %struct.gsc_irq** %4, align 8
  %25 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @txn_alloc_data(i32 %26)
  %28 = load %struct.gsc_irq*, %struct.gsc_irq** %4, align 8
  %29 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.gsc_irq*, %struct.gsc_irq** %4, align 8
  %32 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @txn_claim_irq(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @txn_alloc_addr(i32) #1

declare dso_local i32 @txn_alloc_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
