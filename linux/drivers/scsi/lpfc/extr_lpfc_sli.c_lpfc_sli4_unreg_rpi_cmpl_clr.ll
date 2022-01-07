; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_unreg_rpi_cmpl_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_unreg_rpi_cmpl_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.lpfc_nodelist*, %struct.lpfc_vport* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.lpfc_nodelist = type { i64, i32, i32, i32, i32 }
%struct.lpfc_vport = type { i32 }

@MBX_UNREG_LOGIN = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"0010 UNREG_LOGIN vpi:%x rpi:%x DID:%x defer x%x flg x%x map:%x %px\0A\00", align 1
@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@NLP_UNREG_INP = common dso_local global i32 0, align 4
@NLP_EVT_NOTHING_PENDING = common dso_local global i64 0, align 8
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"4111 UNREG cmpl deferred clr x%x on NPort x%x Data: x%x x%px\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_unreg_rpi_cmpl_clr(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  store %struct.lpfc_nodelist* %12, %struct.lpfc_nodelist** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MBX_UNREG_LOGIN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LPFC_SLI_REV4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %20
  %27 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i64 @bf_get(i32 %27, i32* %30)
  %32 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %120

34:                                               ; preds = %26
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %36 = icmp ne %struct.lpfc_nodelist* %35, null
  br i1 %36, label %37, label %119

37:                                               ; preds = %34
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load i32, i32* @LOG_MBOX, align 4
  %41 = load i32, i32* @LOG_SLI, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.lpfc_nodelist*
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %64 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, %struct.lpfc_nodelist*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i64 %52, %struct.lpfc_nodelist* %56, i32 %59, i32 %62, %struct.lpfc_nodelist* %63)
  %65 = load i32, i32* @NLP_LOGO_ACC, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %72 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %71)
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %74 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NLP_UNREG_INP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %37
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %87 = load i32, i32* @KERN_INFO, align 4
  %88 = load i32, i32* @LOG_DISCOVERY, align 4
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %90 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %99 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, %struct.lpfc_nodelist*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i64 %97, %struct.lpfc_nodelist* %98)
  %100 = load i32, i32* @NLP_UNREG_INP, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %109, i32 %112, i32 0)
  br label %118

114:                                              ; preds = %79, %37
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %117 = call i32 @__lpfc_sli_rpi_release(%struct.lpfc_vport* %115, %struct.lpfc_nodelist* %116)
  br label %118

118:                                              ; preds = %114, %85
  br label %119

119:                                              ; preds = %118, %34
  br label %120

120:                                              ; preds = %119, %26, %20
  br label %121

121:                                              ; preds = %120, %2
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mempool_free(%struct.TYPE_10__* %122, i32 %125)
  ret void
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, %struct.lpfc_nodelist*, ...) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @__lpfc_sli_rpi_release(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
