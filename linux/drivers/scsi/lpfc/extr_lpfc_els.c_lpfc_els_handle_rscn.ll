; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_handle_rscn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_handle_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i64, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.lpfc_nodelist = type { i64, i64, i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"0215 RSCN processed Data: x%x x%x x%x x%x\0A\00", align 1
@NameServer_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LPFC_NS_QUERY_GID_FT = common dso_local global i64 0, align 8
@LPFC_NS_QUERY_GID_PT = common dso_local global i64 0, align 8
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@NLP_FABRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_handle_rscn(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 6
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %5, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FC_UNLOADING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %16)
  store i32 0, i32* %2, align 4
  br label %128

18:                                               ; preds = %1
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %20 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %19)
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_DISCOVERY, align 4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0, i32 %29, i32 %32)
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %39 = load i32, i32* @NameServer_DID, align 4
  %40 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %38, i32 %39)
  store %struct.lpfc_nodelist* %40, %struct.lpfc_nodelist** %4, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %42 = icmp ne %struct.lpfc_nodelist* %41, null
  br i1 %42, label %43, label %80

43:                                               ; preds = %18
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %45 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %43
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LPFC_NS_QUERY_GID_FT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %61 = call i64 @lpfc_issue_gidft(%struct.lpfc_vport* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %128

64:                                               ; preds = %59
  br label %79

65:                                               ; preds = %53
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPFC_NS_QUERY_GID_PT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %73 = call i64 @lpfc_issue_gidpt(%struct.lpfc_vport* %72)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %128

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %128

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %64
  br label %125

80:                                               ; preds = %47, %43, %18
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %82 = icmp ne %struct.lpfc_nodelist* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %86 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %87 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %84, %struct.lpfc_nodelist* %85, i32 %86)
  store %struct.lpfc_nodelist* %87, %struct.lpfc_nodelist** %4, align 8
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %89 = icmp ne %struct.lpfc_nodelist* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %92 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %91)
  store i32 0, i32* %2, align 4
  br label %128

93:                                               ; preds = %83
  %94 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %116

97:                                               ; preds = %80
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %99 = load i32, i32* @NameServer_DID, align 4
  %100 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %98, i32 %99)
  store %struct.lpfc_nodelist* %100, %struct.lpfc_nodelist** %4, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %102 = icmp ne %struct.lpfc_nodelist* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %105 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %104)
  store i32 0, i32* %2, align 4
  br label %128

106:                                              ; preds = %97
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %114 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %115 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %112, %struct.lpfc_nodelist* %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %93
  %117 = load i32, i32* @NLP_FABRIC, align 4
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %123 = load i32, i32* @NameServer_DID, align 4
  %124 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %122, i32 %123, i32 0)
  store i32 1, i32* %2, align 4
  br label %128

125:                                              ; preds = %79
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %127 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %116, %103, %90, %77, %75, %63, %15
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_issue_gidft(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_issue_gidpt(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
