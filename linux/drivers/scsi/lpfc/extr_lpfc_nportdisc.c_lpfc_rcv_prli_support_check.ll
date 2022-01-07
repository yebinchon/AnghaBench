; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_support_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_support_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.ls_rjt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpfc_dmabuf = type { i64* }

@ELS_CMD_PRLI = common dso_local global i64 0, align 8
@ELS_CMD_NVMEPRLI = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"6115 Rcv PRLI (%x) check failed: ndlp rpi %d state x%x flags x%x\0A\00", align 1
@LSRJT_CMD_UNSUPPORTED = common dso_local global i32 0, align 4
@LSEXP_REQ_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*)* @lpfc_rcv_prli_support_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_rcv_prli_support_check(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.ls_rjt, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lpfc_dmabuf*
  %15 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %9, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @ELS_CMD_PRLI, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %43

30:                                               ; preds = %25
  br label %42

31:                                               ; preds = %3
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @ELS_CMD_NVMEPRLI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %43

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %30
  store i64 1, i64* %4, align 8
  br label %74

43:                                               ; preds = %40, %29
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = load i32, i32* @LOG_NVME_DISC, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %50, i32 %53, i32 %56)
  %58 = call i32 @memset(%struct.ls_rjt* %8, i32 0, i32 12)
  %59 = load i32, i32* @LSRJT_CMD_UNSUPPORTED, align 4
  %60 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @LSEXP_REQ_UNSUPPORTED, align 4
  %64 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %8, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %68 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %73 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %67, i32 %70, %struct.lpfc_iocbq* %71, %struct.lpfc_nodelist* %72, i32* null)
  store i64 0, i64* %4, align 8
  br label %74

74:                                               ; preds = %43, %42
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
