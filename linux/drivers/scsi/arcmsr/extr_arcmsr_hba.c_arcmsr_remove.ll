; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.AdapterControlBlock = type { i32, i32, %struct.CommandControlBlock**, i32, i32, i32, i32, i32 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@ACB_F_IOP_INITED = common dso_local global i32 0, align 4
@ACB_F_ADAPTER_REMOVED = common dso_local global i32 0, align 4
@set_date_time = common dso_local global i64 0, align 8
@ACB_F_SCSISTOPADAPTER = common dso_local global i32 0, align 4
@ARCMSR_CCB_START = common dso_local global i64 0, align 8
@ARCMSR_CCB_ABORTED = common dso_local global i64 0, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @arcmsr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CommandControlBlock*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %14, %struct.AdapterControlBlock** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i32, i32* @PCI_DEVICE_ID, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @ACB_F_IOP_INITED, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %24 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @ACB_F_ADAPTER_REMOVED, align 4
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %33 = call i32 @arcmsr_remove_scsi_devices(%struct.AdapterControlBlock* %32)
  %34 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %35 = call i32 @arcmsr_free_pcidev(%struct.AdapterControlBlock* %34)
  br label %150

36:                                               ; preds = %1
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %38 = call i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock* %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %40 = call i32 @scsi_remove_host(%struct.Scsi_Host* %39)
  %41 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %42 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %41, i32 0, i32 7
  %43 = call i32 @flush_work(i32* %42)
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 6
  %46 = call i32 @del_timer_sync(i32* %45)
  %47 = load i64, i64* @set_date_time, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %51 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %50, i32 0, i32 5
  %52 = call i32 @del_timer_sync(i32* %51)
  br label %53

53:                                               ; preds = %49, %36
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %55 = call i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock* %54)
  %56 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %57 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %56)
  %58 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %59 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %58)
  %60 = load i32, i32* @ACB_F_SCSISTOPADAPTER, align 4
  %61 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %62 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @ACB_F_IOP_INITED, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %68 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %87, %53
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %74 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %79 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %78, i32 0, i32 3
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %90

83:                                               ; preds = %77
  %84 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %85 = call i32 @arcmsr_interrupt(%struct.AdapterControlBlock* %84)
  %86 = call i32 @msleep(i32 25)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %71

90:                                               ; preds = %82, %71
  %91 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %92 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %91, i32 0, i32 3
  %93 = call i64 @atomic_read(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %90
  %96 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %97 = call i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock* %96)
  %98 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %99 = call i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock* %98)
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %132, %95
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %103 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %100
  %107 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %108 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %107, i32 0, i32 2
  %109 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %109, i64 %111
  %113 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %112, align 8
  store %struct.CommandControlBlock* %113, %struct.CommandControlBlock** %8, align 8
  %114 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %115 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ARCMSR_CCB_START, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %106
  %120 = load i64, i64* @ARCMSR_CCB_ABORTED, align 8
  %121 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %122 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @DID_ABORT, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %126 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 4
  %129 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %130 = call i32 @arcmsr_ccb_complete(%struct.CommandControlBlock* %129)
  br label %131

131:                                              ; preds = %119, %106
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %100

135:                                              ; preds = %100
  br label %136

136:                                              ; preds = %135, %90
  %137 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %138 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %139 = call i32 @arcmsr_free_irq(%struct.pci_dev* %137, %struct.AdapterControlBlock* %138)
  %140 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %141 = call i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock* %140)
  %142 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %143 = call i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock* %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %145 = call i32 @pci_release_regions(%struct.pci_dev* %144)
  %146 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %147 = call i32 @scsi_host_put(%struct.Scsi_Host* %146)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %149 = call i32 @pci_disable_device(%struct.pci_dev* %148)
  br label %150

150:                                              ; preds = %136, %20
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @arcmsr_remove_scsi_devices(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_pcidev(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @arcmsr_interrupt(%struct.AdapterControlBlock*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_ccb_complete(%struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_free_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
