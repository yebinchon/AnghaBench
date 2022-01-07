; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_next_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_next_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_irq_list = type { i64 }
%struct.vmd_dev = type { i32, %struct.vmd_irq_list* }
%struct.msi_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmd_irq_list* (%struct.vmd_dev*, %struct.msi_desc*)* @vmd_next_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmd_irq_list* @vmd_next_irq(%struct.vmd_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca %struct.vmd_irq_list*, align 8
  %4 = alloca %struct.vmd_dev*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vmd_dev* %0, %struct.vmd_dev** %4, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %10 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %14, i32 0, i32 1
  %16 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %15, align 8
  %17 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %16, i64 0
  store %struct.vmd_irq_list* %17, %struct.vmd_irq_list** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %20 = call %struct.TYPE_2__* @msi_desc_to_pci_dev(%struct.msi_desc* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 128, label %23
  ]

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %25, i32 0, i32 1
  %27 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %26, align 8
  %28 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %27, i64 0
  store %struct.vmd_irq_list* %28, %struct.vmd_irq_list** %3, align 8
  br label %80

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* @list_lock, i64 %30)
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %59, %29
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %35 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %40 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %39, i32 0, i32 1
  %41 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %41, i64 %43
  %45 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %47, i32 0, i32 1
  %49 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %49, i64 %51
  %53 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %46, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %32

62:                                               ; preds = %32
  %63 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %64 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %63, i32 0, i32 1
  %65 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %65, i64 %67
  %69 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @raw_spin_unlock_irqrestore(i32* @list_lock, i64 %72)
  %74 = load %struct.vmd_dev*, %struct.vmd_dev** %4, align 8
  %75 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %74, i32 0, i32 1
  %76 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.vmd_irq_list, %struct.vmd_irq_list* %76, i64 %78
  store %struct.vmd_irq_list* %79, %struct.vmd_irq_list** %3, align 8
  br label %80

80:                                               ; preds = %62, %24, %13
  %81 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %3, align 8
  ret %struct.vmd_irq_list* %81
}

declare dso_local %struct.TYPE_2__* @msi_desc_to_pci_dev(%struct.msi_desc*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
