; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_5__, %struct.qla_msix_entry*, %struct.rsp_que** }
%struct.TYPE_5__ = type { i64 }
%struct.qla_msix_entry = type { %struct.rsp_que*, i32, i64 }
%struct.rsp_que = type { i32 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disabled MSI-X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_free_irqs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca %struct.qla_msix_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %3, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 4
  %12 = load %struct.rsp_que**, %struct.rsp_que*** %11, align 8
  %13 = icmp ne %struct.rsp_que** %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 4
  %17 = load %struct.rsp_que**, %struct.rsp_que*** %16, align 8
  %18 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %17, i64 0
  %19 = load %struct.rsp_que*, %struct.rsp_que** %18, align 8
  %20 = icmp ne %struct.rsp_que* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %1
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 4
  %25 = load %struct.rsp_que**, %struct.rsp_que*** %24, align 8
  %26 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %25, i64 0
  %27 = load %struct.rsp_que*, %struct.rsp_que** %26, align 8
  store %struct.rsp_que* %27, %struct.rsp_que** %4, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %66, %33
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 3
  %43 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %43, i64 %45
  store %struct.qla_msix_entry* %46, %struct.qla_msix_entry** %5, align 8
  %47 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %5, align 8
  %48 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %40
  %52 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %5, align 8
  %53 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @irq_set_affinity_notifier(i32 %54, i32* null)
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pci_irq_vector(i32 %58, i32 %59)
  %61 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %5, align 8
  %62 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %61, i32 0, i32 0
  %63 = load %struct.rsp_que*, %struct.rsp_que** %62, align 8
  %64 = call i32 @free_irq(i32 %60, %struct.rsp_que* %63)
  br label %65

65:                                               ; preds = %51, %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %34

69:                                               ; preds = %34
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 3
  %72 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %71, align 8
  %73 = call i32 @kfree(%struct.qla_msix_entry* %72)
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 3
  store %struct.qla_msix_entry* null, %struct.qla_msix_entry** %75, align 8
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @ql_dbg_init, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = call i32 @ql_dbg(i32 %79, %struct.TYPE_6__* %80, i32 66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %89

82:                                               ; preds = %22
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pci_irq_vector(i32 %85, i32 0)
  %87 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %88 = call i32 @free_irq(i32 %86, %struct.rsp_que* %87)
  br label %89

89:                                               ; preds = %82, %69
  br label %90

90:                                               ; preds = %89, %21
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pci_free_irq_vectors(i32 %93)
  ret void
}

declare dso_local i32 @irq_set_affinity_notifier(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.rsp_que*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @kfree(%struct.qla_msix_entry*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
