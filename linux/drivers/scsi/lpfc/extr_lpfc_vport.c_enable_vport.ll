; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_enable_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_enable_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i32, i32 }
%struct.lpfc_nodelist = type { i64 }
%struct.Scsi_Host = type { i32 }

@LPFC_LINK_UP = common dso_local global i64 0, align 8
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@VPORT_OK = common dso_local global i32 0, align 4
@FC_LOADING = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"0264 No NPIV Fabric support\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"1827 Vport Enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @enable_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_vport(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  %8 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lpfc_vport**
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %4, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 2
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %6, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %7, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPFC_LINK_UP, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %1
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %32 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %30, i32 %31)
  %33 = load i32, i32* @VPORT_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %116

34:                                               ; preds = %23
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @spin_lock_irq(i32 %37)
  %39 = load i32, i32* @FC_LOADING, align 4
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %34
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spin_unlock_irq(i32 %53)
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %56 = call i32 @lpfc_issue_init_vpi(%struct.lpfc_vport* %55)
  br label %110

57:                                               ; preds = %34
  %58 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @Fabric_DID, align 4
  %71 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i32 %69, i32 %70)
  store %struct.lpfc_nodelist* %71, %struct.lpfc_nodelist** %6, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %73 = icmp ne %struct.lpfc_nodelist* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %57
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %76 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %93 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %92)
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %95 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %94)
  br label %104

96:                                               ; preds = %84
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %98 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %99 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %97, i32 %98)
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_ELS, align 4
  %103 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %96, %91
  br label %109

105:                                              ; preds = %78, %74, %57
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %107 = load i32, i32* @FC_VPORT_FAILED, align 4
  %108 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109, %50
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load i32, i32* @LOG_VPORT, align 4
  %114 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @VPORT_OK, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %29
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_init_vpi(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i32, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
