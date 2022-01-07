; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_protstatus_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_protstatus_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb*, %struct.zfcp_adapter* }
%struct.fsf_qtcb = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %union.fsf_prot_status_qual }
%union.fsf_prot_status_qual = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.zfcp_adapter = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"QTCB version 0x%x not supported by FCP adapter (0x%x to 0x%x)\0A\00", align 1
@FSF_QTCB_CURRENT_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fspse_1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fspse_2\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"The QTCB type is not supported by the FCP adapter\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fspse_3\00", align 1
@ZFCP_STATUS_ADAPTER_HOST_CON_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"0x%Lx is an ambiguous request identifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fspse_4\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fspse_6\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"fspse_8\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"0x%x is not a valid transfer protocol status\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fspse_9\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_protstatus_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_protstatus_eval(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fsf_qtcb*, align 8
  %5 = alloca %union.fsf_prot_status_qual*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  store %struct.fsf_qtcb* %11, %struct.fsf_qtcb** %4, align 8
  %12 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %13 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %union.fsf_prot_status_qual* %14, %union.fsf_prot_status_qual** %5, align 8
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = call i32 @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req* %15)
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %124

29:                                               ; preds = %1
  %30 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %31 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %104 [
    i32 134, label %34
    i32 135, label %34
    i32 131, label %35
    i32 136, label %54
    i32 129, label %54
    i32 128, label %62
    i32 133, label %70
    i32 137, label %75
    i32 132, label %88
    i32 130, label %95
  ]

34:                                               ; preds = %29, %29
  br label %124

35:                                               ; preds = %29
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* @FSF_QTCB_CURRENT_VERSION, align 4
  %41 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %42 = bitcast %union.fsf_prot_status_qual* %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %47 = bitcast %union.fsf_prot_status_qual* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %50)
  %52 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %53 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %118

54:                                               ; preds = %29, %29
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %56 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %55, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %59 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %118

62:                                               ; preds = %29
  %63 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %69 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %68, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %118

70:                                               ; preds = %29
  %71 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %72, i32 0, i32 1
  %74 = call i32 @atomic_or(i32 %71, i32* %73)
  br label %118

75:                                               ; preds = %29
  %76 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %81 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %87 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %86, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %118

88:                                               ; preds = %29
  %89 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %90 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %5, align 8
  %91 = bitcast %union.fsf_prot_status_qual* %90 to i32*
  %92 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %89, i32* %91)
  %93 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %94 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %93, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %118

95:                                               ; preds = %29
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %97 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %98 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %96, i32 %97)
  %99 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %100 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %101 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %99, i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %118

104:                                              ; preds = %29
  %105 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %110 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  %114 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %115 = call i32 @zfcp_qdio_siosl(%struct.zfcp_adapter* %114)
  %116 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %117 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %116, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %118

118:                                              ; preds = %104, %95, %88, %75, %70, %62, %54, %35
  %119 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %120 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %121 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %34, %23
  ret void
}

declare dso_local i32 @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req*, i32*) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_qdio_siosl(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
