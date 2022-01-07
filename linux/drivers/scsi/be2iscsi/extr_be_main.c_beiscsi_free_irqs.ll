; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.beiscsi_hba* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_free_irqs(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.hwi_context_memory*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = call i32 @free_irq(i64 %23, %struct.beiscsi_hba* %24)
  br label %26

26:                                               ; preds = %18, %11
  br label %63

27:                                               ; preds = %1
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %31, align 8
  store %struct.hwi_context_memory* %32, %struct.hwi_context_memory** %3, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %60, %27
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @pci_irq_vector(%struct.TYPE_4__* %42, i32 %43)
  %45 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %3, align 8
  %46 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %45, i32 0, i32 0
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i64 %49
  %51 = call i32 @free_irq(i64 %44, %struct.beiscsi_hba* %50)
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %53 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %33

63:                                               ; preds = %26, %33
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.beiscsi_hba*) #1

declare dso_local i64 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
