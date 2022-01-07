; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_free_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_free_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.fnic*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_free_intr(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %4 = load %struct.fnic*, %struct.fnic** %2, align 8
  %5 = getelementptr inbounds %struct.fnic, %struct.fnic* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @vnic_dev_get_intr_mode(i32 %6)
  switch i32 %7, label %53 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %15
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.fnic*, %struct.fnic** %2, align 8
  %10 = getelementptr inbounds %struct.fnic, %struct.fnic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pci_irq_vector(i32 %11, i32 0)
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.fnic* %13)
  br label %54

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %49, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.fnic*, %struct.fnic** %2, align 8
  %19 = getelementptr inbounds %struct.fnic, %struct.fnic* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load %struct.fnic*, %struct.fnic** %2, align 8
  %25 = getelementptr inbounds %struct.fnic, %struct.fnic* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.fnic*, %struct.fnic** %2, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @pci_irq_vector(i32 %36, i32 %37)
  %39 = load %struct.fnic*, %struct.fnic** %2, align 8
  %40 = getelementptr inbounds %struct.fnic, %struct.fnic* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.fnic*, %struct.fnic** %45, align 8
  %47 = call i32 @free_irq(i32 %38, %struct.fnic* %46)
  br label %48

48:                                               ; preds = %33, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %16

52:                                               ; preds = %16
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %52, %8
  ret void
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @free_irq(i32, %struct.fnic*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
