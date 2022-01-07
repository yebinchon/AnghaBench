; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_logo_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_logo_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_4__, %struct.lpfc_vport* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i64, i32, i32, i32 }

@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ACC LOGO cmpl:   status:x%x/x%x did:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"0109 ACC to LOGO completes to NPort x%x Data: x%x x%x x%x\0A\00", align 1
@NLP_STE_NPR_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_logo_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_logo_acc(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %10 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %13, %struct.lpfc_nodelist** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 2
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %8, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 1
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %20 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %31 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %19, i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29, i32 %32)
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load i32, i32* @LOG_ELS, align 4
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %38 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i64 %45, i32 %48)
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NLP_STE_NPR_NODE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %3
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %57 = call i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %62 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %60, %struct.lpfc_nodelist* %61)
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %70 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %68, %struct.lpfc_iocbq* %69)
  ret void
}

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
