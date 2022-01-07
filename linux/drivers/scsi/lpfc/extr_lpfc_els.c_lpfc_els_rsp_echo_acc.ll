; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_echo_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_echo_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@LPFC_BPL_SIZE = common dso_local global i64 0, align 8
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"2876 Xmit ECHO ACC response tag x%x xri x%x\0A\00", align 1
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC ECHO:  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rsp_echo_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rsp_echo_acc(%struct.lpfc_vport* %0, i32* %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %10, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @LPFC_BPL_SIZE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @LPFC_BPL_SIZE, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %27, %4
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ELS_CMD_ACC, align 4
  %40 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %30, i32 0, i64 %31, i32 %34, %struct.lpfc_nodelist* %35, i32 %38, i32 %39)
  store %struct.lpfc_iocbq* %40, %struct.lpfc_iocbq** %11, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %42 = icmp ne %struct.lpfc_iocbq* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %119

44:                                               ; preds = %29
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %53 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 8
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load i32, i32* @LOG_ELS, align 4
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %72)
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.lpfc_dmabuf*
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* @ELS_CMD_ACC, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %13, align 8
  %88 = sub i64 %87, 4
  %89 = call i32 @memcpy(i32* %85, i32* %86, i64 %88)
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %91 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %90, i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97, i32 0)
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %105 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %106 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %108 = load i32, i32* @LPFC_ELS_RING, align 4
  %109 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %110 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %107, i32 %108, %struct.lpfc_iocbq* %109, i32 0)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @IOCB_ERROR, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %44
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %116 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %117 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %115, %struct.lpfc_iocbq* %116)
  store i32 1, i32* %5, align 4
  br label %119

118:                                              ; preds = %44
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %114, %43
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i64, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
