; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_shost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_shost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_2__*, i32, i32*, i32*, i64, %struct.lpfc_vport*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_vport = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FF_DEF_EDTOV = common dso_local global i32 0, align 4
@FF_DEF_RATOV = common dso_local global i32 0, align 4
@FF_DEF_ALTOV = common dso_local global i32 0, align 4
@FF_DEF_ARBTOV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"txrdy_pool\00", align 1
@TXRDY_PAYLOAD_LEN = common dso_local global i32 0, align 4
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"6076 NVME Target Found\0A\00", align 1
@FC_ALLOW_FDMI = common dso_local global i32 0, align 4
@LPFC_FDMI_SUPPORT = common dso_local global i64 0, align 8
@LPFC_FDMI2_HBA_ATTR = common dso_local global i32 0, align 4
@LPFC_FDMI2_SMART_ATTR = common dso_local global i32 0, align 4
@LPFC_FDMI2_PORT_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_create_shost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_create_shost(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load i32, i32* @FF_DEF_EDTOV, align 4
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @FF_DEF_RATOV, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @FF_DEF_ALTOV, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @FF_DEF_ARBTOV, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 9
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba* %21, i32 %24, i32* %28)
  store %struct.lpfc_vport* %29, %struct.lpfc_vport** %4, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = icmp ne %struct.lpfc_vport* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %118

35:                                               ; preds = %1
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %37 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %36)
  store %struct.Scsi_Host* %37, %struct.Scsi_Host** %5, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 7
  store %struct.lpfc_vport* %38, %struct.lpfc_vport** %40, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %35
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* @TXRDY_PAYLOAD_LEN, align 4
  %56 = call i32* @dma_pool_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %54, i32 %55, i32 16, i32 0)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %50
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = load i32, i32* @KERN_INFO, align 4
  %71 = load i32, i32* @LOG_INIT, align 4
  %72 = load i32, i32* @LOG_NVME_DISC, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %63, %50
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %35
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %79 = call i32 @lpfc_debugfs_initialize(%struct.lpfc_vport* %78)
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %84 = call i32 @pci_set_drvdata(%struct.TYPE_2__* %82, %struct.Scsi_Host* %83)
  %85 = load i32, i32* @FC_ALLOW_FDMI, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %77
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_FDMI_SUPPORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94, %77
  %101 = load i32, i32* @LPFC_FDMI2_HBA_ATTR, align 4
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32, i32* @LPFC_FDMI2_SMART_ATTR, align 4
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %116

112:                                              ; preds = %100
  %113 = load i32, i32* @LPFC_FDMI2_PORT_ATTR, align 4
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %115 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %94
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %32
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_debugfs_initialize(%struct.lpfc_vport*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_2__*, %struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
