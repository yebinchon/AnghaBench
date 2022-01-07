; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_sync_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_sync_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.megasas_irq_context*, i32 }
%struct.megasas_irq_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @megasas_sync_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_sync_irqs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.megasas_irq_context*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.megasas_instance*
  store %struct.megasas_instance* %8, %struct.megasas_instance** %5, align 8
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i64 [ %16, %13 ], [ 1, %17 ]
  store i64 %19, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %51, %18
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @pci_irq_vector(i32 %27, i64 %28)
  %30 = call i32 @synchronize_irq(i32 %29)
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 1
  %33 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %33, i64 %34
  store %struct.megasas_irq_context* %35, %struct.megasas_irq_context** %6, align 8
  %36 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %37 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %36, i32 0, i32 2
  %38 = call i32 @irq_poll_disable(i32* %37)
  %39 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %40 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %45 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %47 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @enable_irq(i32 %48)
  br label %50

50:                                               ; preds = %43, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %20

54:                                               ; preds = %20
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
