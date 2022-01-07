; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_logo_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_logo_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32 }

@NLP_UNREG_INP = common dso_local global i32 0, align 4
@NLP_EVT_NOTHING_PENDING = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"1434 UNREG cmpl deferred logo x%x on NPort x%x Data: x%x x%px\0A\00", align 1
@NLP_RELEASE_RPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_4__*)* @lpfc_nlp_logo_unreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_logo_unreg(%struct.lpfc_hba* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %13, %struct.lpfc_nodelist** %6, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %15 = icmp ne %struct.lpfc_nodelist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %95

17:                                               ; preds = %2
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %20 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %18, %struct.lpfc_nodelist* %19, i32 0)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mempool_free(%struct.TYPE_4__* %21, i32 %24)
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NLP_UNREG_INP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %17
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load i32, i32* @LOG_DISCOVERY, align 4
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %52 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i64 %50, %struct.lpfc_nodelist* %51)
  %53 = load i32, i32* @NLP_UNREG_INP, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %62, i32 %65, i32 0)
  br label %95

67:                                               ; preds = %32, %17
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NLP_RELEASE_RPI, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @lpfc_sli4_free_rpi(i32 %77, i32 %80)
  %82 = load i32, i32* @NLP_RELEASE_RPI, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %74, %67
  %89 = load i32, i32* @NLP_UNREG_INP, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %16, %88, %38
  ret void
}

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_free_rpi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
