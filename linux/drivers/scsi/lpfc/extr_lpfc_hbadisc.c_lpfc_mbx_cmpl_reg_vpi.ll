; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_vpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.lpfc_vport* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_vport = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0912 cmpl_reg_vpi, mb status = 0x%x\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@LPFC_ENABLE_BOTH = common dso_local global i32 0, align 4
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@LPFC_VPORT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_8__*)* @lpfc_mbx_cmpl_reg_vpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_reg_vpi(%struct.lpfc_hba* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %5, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %72 [
    i32 17, label %19
    i32 38401, label %19
    i32 38402, label %19
  ]

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load i32, i32* @LOG_NODE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = load i32, i32* @FC_VPORT_FAILED, align 4
  %29 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %27, i32 %28)
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_lock_irq(i32 %32)
  %34 = load i32, i32* @FC_FABRIC, align 4
  %35 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 6
  store i32 0, i32* %47, align 8
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LPFC_ENABLE_BOTH, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %19
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53, %19
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = call i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba* %65)
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = call i32 @lpfc_nvme_update_localport(%struct.lpfc_vport* %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %53
  br label %127

72:                                               ; preds = %2
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @spin_lock_irq(i32 %75)
  %77 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @spin_unlock_irq(i32 %90)
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %93 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %72
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %99)
  br label %101

101:                                              ; preds = %98, %72
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %101
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @spin_lock_irq(i32 %109)
  %111 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %114 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %118 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @spin_unlock_irq(i32 %119)
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %122 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %121)
  br label %123

123:                                              ; preds = %106, %101
  %124 = load i32, i32* @LPFC_VPORT_READY, align 4
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %71
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mempool_free(%struct.TYPE_8__* %128, i32 %131)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_update_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
