; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csio_hw* }

@CSIO_EXTRA_VECS = common dso_local global i32 0, align 4
@CSIO_IM_NONE = common dso_local global i32 0, align 4
@CSIO_HWF_HOST_INTR_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_intr_disable(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %7 = call i32 @csio_hw_intr_disable(%struct.csio_hw* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %49 [
    i32 128, label %14
    i32 129, label %42
    i32 130, label %42
  ]

14:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CSIO_EXTRA_VECS, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %25 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pci_irq_vector(i32 %26, i32 %27)
  %29 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %30 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.csio_hw*, %struct.csio_hw** %35, align 8
  %37 = call i32 @free_irq(i32 %28, %struct.csio_hw* %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %15

41:                                               ; preds = %15
  br label %50

42:                                               ; preds = %10, %10
  %43 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %44 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_irq_vector(i32 %45, i32 0)
  %47 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.csio_hw* %47)
  br label %50

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %49, %42, %41
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_free_irq_vectors(i32 %54)
  %56 = load i32, i32* @CSIO_IM_NONE, align 4
  %57 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %58 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @CSIO_HWF_HOST_INTR_ENABLED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %62 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  ret void
}

declare dso_local i32 @csio_hw_intr_disable(%struct.csio_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.csio_hw*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
