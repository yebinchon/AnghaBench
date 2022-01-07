; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_do_scr_ns_plogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_do_scr_ns_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i64, i64 }
%struct.lpfc_vport = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"3334 Delay fc port discovery for %d seconds\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NameServer_DID = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"0251 NameServer login: no memory\0A\00", align 1
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"0348 NameServer login: node freed\0A\00", align 1
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"0252 Cannot issue NameServer login\0A\00", align 1
@LPFC_FDMI_SUPPORT = common dso_local global i64 0, align 8
@FC_ALLOW_FDMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_do_scr_ns_plogi(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %4, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %6, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FC_DISC_DELAYED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_unlock_irq(i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load i32, i32* @LOG_DISCOVERY, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %31, i32 0, i32 2
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 1000, %36
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %33, %38
  %40 = call i32 @mod_timer(i32* %32, i64 %39)
  br label %150

41:                                               ; preds = %2
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %47 = load i32, i32* @NameServer_DID, align 4
  %48 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %46, i32 %47)
  store %struct.lpfc_nodelist* %48, %struct.lpfc_nodelist** %5, align 8
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %50 = icmp ne %struct.lpfc_nodelist* %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %41
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %53 = load i32, i32* @NameServer_DID, align 4
  %54 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %52, i32 %53)
  store %struct.lpfc_nodelist* %54, %struct.lpfc_nodelist** %5, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %56 = icmp ne %struct.lpfc_nodelist* %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %51
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %65 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %64)
  br label %150

66:                                               ; preds = %57
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %68 = load i32, i32* @FC_VPORT_FAILED, align 4
  %69 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %67, i32 %68)
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load i32, i32* @LOG_ELS, align 4
  %73 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %150

74:                                               ; preds = %51
  br label %105

75:                                               ; preds = %41
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %77 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %75
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %82 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %83 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %80, %struct.lpfc_nodelist* %81, i32 %82)
  store %struct.lpfc_nodelist* %83, %struct.lpfc_nodelist** %5, align 8
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %85 = icmp ne %struct.lpfc_nodelist* %84, null
  br i1 %85, label %103, label %86

86:                                               ; preds = %79
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %94 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %93)
  br label %150

95:                                               ; preds = %86
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %97 = load i32, i32* @FC_VPORT_FAILED, align 4
  %98 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %96, i32 %97)
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @LOG_ELS, align 4
  %102 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %150

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %75
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i32, i32* @NLP_FABRIC, align 4
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %113 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %114 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %111, %struct.lpfc_nodelist* %112, i32 %113)
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @lpfc_issue_els_plogi(%struct.lpfc_vport* %115, i32 %118, i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %105
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %123 = load i32, i32* @FC_VPORT_FAILED, align 4
  %124 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %122, i32 %123)
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load i32, i32* @LOG_ELS, align 4
  %128 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %150

129:                                              ; preds = %105
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @LPFC_FDMI_SUPPORT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134, %129
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %142 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FC_ALLOW_FDMI, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %149 = call i32 @lpfc_start_fdmi(%struct.lpfc_vport* %148)
  br label %150

150:                                              ; preds = %19, %63, %66, %92, %95, %121, %147, %140, %134
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_start_fdmi(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
