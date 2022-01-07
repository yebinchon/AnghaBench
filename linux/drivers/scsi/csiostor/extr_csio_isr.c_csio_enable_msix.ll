; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32, %struct.TYPE_2__**, %struct.csio_scsi_cpu_info*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_scsi_cpu_info = type { i32 }
%struct.irq_affinity = type { i32, %struct.csio_hw*, i32 }

@CSIO_EXTRA_VECS = common dso_local global i32 0, align 4
@csio_calc_sets = common dso_local global i32 0, align 4
@IRQ_AFFINITY_MAX_SETS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@uint8_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FW supp #niq:%d, trying %d msix's\0A\00", align 1
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Reducing sqsets to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_enable_msix(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_scsi_cpu_info*, align 8
  %12 = alloca %struct.irq_affinity, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %13 = load i32, i32* @CSIO_EXTRA_VECS, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %12, i32 0, i32 0
  %15 = load i32, i32* @CSIO_EXTRA_VECS, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %12, i32 0, i32 1
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  store %struct.csio_hw* %17, %struct.csio_hw** %16, align 8
  %18 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %12, i32 0, i32 2
  %19 = load i32, i32* @csio_calc_sets, align 4
  store i32 %19, i32* %18, align 8
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IRQ_AFFINITY_MAX_SETS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %160

28:                                               ; preds = %1
  %29 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %30 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %35 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %40 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %28
  %46 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %47 = call i32 @csio_is_hw_master(%struct.csio_hw* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %28
  %50 = load i32, i32* @uint8_t, align 4
  %51 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %52 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @min_t(i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %58 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %59 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_dbg(%struct.csio_hw* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %64 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %69 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @pci_alloc_irq_vectors_affinity(i32 %65, i32 %66, i32 %67, i32 %70, %struct.irq_affinity* %12)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %160

76:                                               ; preds = %56
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %79 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_dbg(%struct.csio_hw* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @csio_reduce_sqsets(%struct.csio_hw* %90, i32 %93)
  br label %95

95:                                               ; preds = %84, %76
  store i32 0, i32* %6, align 4
  %96 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @csio_set_nondata_intr_idx(%struct.csio_hw* %96, i32 %97)
  %99 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %100 = call i32 @csio_hw_to_mbm(%struct.csio_hw* %99)
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = call i32 @csio_set_mb_intr_idx(i32 %100, i32 %101)
  %104 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = call i32 @csio_set_fwevt_intr_idx(%struct.csio_hw* %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %156, %95
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %111 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %108
  %115 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %116 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %115, i32 0, i32 5
  %117 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %117, i64 %119
  store %struct.csio_scsi_cpu_info* %120, %struct.csio_scsi_cpu_info** %11, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %147, %114
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %124 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %11, align 8
  %130 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = srem i32 %128, %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %137 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %136, i32 0, i32 4
  %138 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %138, i64 %140
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %135, i32* %146, align 4
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %121

150:                                              ; preds = %121
  %151 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %11, align 8
  %152 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %108

159:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %74, %25
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @pci_alloc_irq_vectors_affinity(i32, i32, i32, i32, %struct.irq_affinity*) #1

declare dso_local i32 @csio_reduce_sqsets(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_nondata_intr_idx(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_mb_intr_idx(i32, i32) #1

declare dso_local i32 @csio_hw_to_mbm(%struct.csio_hw*) #1

declare dso_local i32 @csio_set_fwevt_intr_idx(%struct.csio_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
