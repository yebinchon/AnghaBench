; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_free_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_free_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_free_intr(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %37, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.snic*, %struct.snic** %2, align 8
  %7 = getelementptr inbounds %struct.snic, %struct.snic* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %8)
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %4
  %12 = load %struct.snic*, %struct.snic** %2, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %11
  %22 = load %struct.snic*, %struct.snic** %2, align 8
  %23 = getelementptr inbounds %struct.snic, %struct.snic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_irq_vector(i32 %24, i32 %25)
  %27 = load %struct.snic*, %struct.snic** %2, align 8
  %28 = getelementptr inbounds %struct.snic, %struct.snic* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @free_irq(i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %21, %11
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %4

40:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
