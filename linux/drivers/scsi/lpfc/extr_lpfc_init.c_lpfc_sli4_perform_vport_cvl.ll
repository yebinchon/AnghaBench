; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_perform_vport_cvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_perform_vport_cvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_vport = type { i64, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.lpfc_vport* }
%struct.Scsi_Host = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@LPFC_FLOGI = common dso_local global i64 0, align 8
@LPFC_VPORT_FAILED = common dso_local global i64 0, align 8
@LPFC_FDISC = common dso_local global i64 0, align 8
@FC_VPORT_CVL_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_nodelist* (%struct.lpfc_vport*)* @lpfc_sli4_perform_vport_cvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = icmp ne %struct.lpfc_vport* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

10:                                               ; preds = %1
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

17:                                               ; preds = %10
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %19 = load i32, i32* @Fabric_DID, align 4
  %20 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %18, i32 %19)
  store %struct.lpfc_nodelist* %20, %struct.lpfc_nodelist** %4, align 8
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %22 = icmp ne %struct.lpfc_nodelist* %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = load i32, i32* @Fabric_DID, align 4
  %26 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %24, i32 %25)
  store %struct.lpfc_nodelist* %26, %struct.lpfc_nodelist** %4, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %28 = icmp ne %struct.lpfc_nodelist* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

30:                                               ; preds = %23
  %31 = load i32, i32* @NLP_FABRIC, align 4
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %38 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %36, %struct.lpfc_nodelist* %37)
  br label %53

39:                                               ; preds = %17
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %41 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %46 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %47 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %44, %struct.lpfc_nodelist* %45, i32 %46)
  store %struct.lpfc_nodelist* %47, %struct.lpfc_nodelist** %4, align 8
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %49 = icmp ne %struct.lpfc_nodelist* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %55, align 8
  %57 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LPFC_FLOGI, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %63, align 8
  %65 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

70:                                               ; preds = %61, %53
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %73, align 8
  %75 = icmp ne %struct.lpfc_vport* %71, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LPFC_FDISC, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

89:                                               ; preds = %82, %76, %70
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %91 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %90)
  store %struct.Scsi_Host* %91, %struct.Scsi_Host** %5, align 8
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %93 = icmp ne %struct.Scsi_Host* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %114

95:                                               ; preds = %89
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %97 = call i32 @lpfc_linkdown_port(%struct.lpfc_vport* %96)
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %99 = call i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport* %98)
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @spin_lock_irq(i32 %102)
  %104 = load i32, i32* @FC_VPORT_CVL_RCVD, align 4
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %110 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @spin_unlock_irq(i32 %111)
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  store %struct.lpfc_nodelist* %113, %struct.lpfc_nodelist** %2, align 8
  br label %114

114:                                              ; preds = %95, %94, %88, %69, %50, %29, %16, %9
  %115 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  ret %struct.lpfc_nodelist* %115
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_linkdown_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
