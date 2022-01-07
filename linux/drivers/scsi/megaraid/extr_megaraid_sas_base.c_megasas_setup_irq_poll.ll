; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_setup_irq_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_setup_irq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, i32, %struct.megasas_irq_context* }
%struct.megasas_irq_context = type { i32, i32, i32 }

@megasas_irqpoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_setup_irq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_setup_irq_poll(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.megasas_irq_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i64 [ %13, %10 ], [ 1, %14 ]
  store i64 %16, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %43, %15
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 3
  %24 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %24, i64 %25
  store %struct.megasas_irq_context* %26, %struct.megasas_irq_context** %3, align 8
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pci_irq_vector(i32 %29, i64 %30)
  %32 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %3, align 8
  %33 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %3, align 8
  %35 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %3, align 8
  %37 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %36, i32 0, i32 1
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @megasas_irqpoll, align 4
  %42 = call i32 @irq_poll_init(i32* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %21
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %17

46:                                               ; preds = %17
  ret void
}

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @irq_poll_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
