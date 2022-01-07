; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_disable_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_disable_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LEG_INTR_MASK_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_disable_intrs(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %4 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32* @pci_get_drvdata(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @qla82xx_mbx_intr_disable(i32* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = call i64 @IS_QLA8044(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %24 = load i32, i32* @LEG_INTR_MASK_OFFSET, align 4
  %25 = call i32 @qla8044_wr_reg(%struct.qla_hw_data* %23, i32 %24, i32 1)
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %27, i32 %31, i32 1024)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @qla82xx_mbx_intr_disable(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_wr_reg(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
