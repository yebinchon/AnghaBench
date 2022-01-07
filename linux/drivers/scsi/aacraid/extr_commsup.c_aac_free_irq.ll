; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.TYPE_4__*, i64, %struct.aac_dev* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_free_irq(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %4 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %5 = call i64 @aac_is_src(%struct.aac_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %9 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_irq_vector(%struct.TYPE_4__* %22, i32 %23)
  %25 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %26 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %25, i32 0, i32 3
  %27 = load %struct.aac_dev*, %struct.aac_dev** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %27, i64 %29
  %31 = call i32 @free_irq(i32 %24, %struct.aac_dev* %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  br label %47

36:                                               ; preds = %7
  %37 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %38 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 3
  %44 = load %struct.aac_dev*, %struct.aac_dev** %43, align 8
  %45 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %44, i64 0
  %46 = call i32 @free_irq(i32 %41, %struct.aac_dev* %45)
  br label %47

47:                                               ; preds = %36, %35
  br label %56

48:                                               ; preds = %1
  %49 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %50 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %55 = call i32 @free_irq(i32 %53, %struct.aac_dev* %54)
  br label %56

56:                                               ; preds = %48, %47
  %57 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %58 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %63 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @pci_disable_msi(%struct.TYPE_4__* %64)
  br label %77

66:                                               ; preds = %56
  %67 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %68 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %73 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @pci_disable_msix(%struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %61
  ret void
}

declare dso_local i64 @aac_is_src(%struct.aac_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.aac_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
