; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_cmpl_gen_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_cmpl_gen_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32*, i32, i32*, i64, %struct.lpfc_vport* }
%struct.lpfc_vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_wcqe_complete = type { i32 }
%struct.lpfc_nvme_lport = type { i32, i32, i32 }
%struct.nvmefc_ls_req = type { i32 (%struct.nvmefc_ls_req*, i32)* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32 }

@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@LPFC_IOCB_STATUS_MASK = common dso_local global i32 0, align 4
@lpfc_wcqe_c_xb = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"6047 nvme cmpl Enter Data %px DID %x Xri: %x status %x reason x%x cmd:x%px lsreg:x%px bmp:x%px ndlp:x%px\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"NVME LS  CMPL: xri x%x stat x%x parm x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"6046 nvme cmpl without done call back? Data %px DID %x Xri: %x status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* @lpfc_nvme_cmpl_gen_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvme_cmpl_gen_req(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_nvme_lport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvmefc_ls_req*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %13 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %13, i32 0, i32 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %7, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.nvmefc_ls_req*
  store %struct.nvmefc_ls_req* %19, %struct.nvmefc_ls_req** %10, align 8
  %20 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %21 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %22 = call i32 @bf_get(i32 %20, %struct.lpfc_wcqe_complete* %21)
  %23 = load i32, i32* @LPFC_IOCB_STATUS_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %3
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %35, %struct.lpfc_nvme_lport** %8, align 8
  %36 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %37 = icmp ne %struct.lpfc_nvme_lport* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %29
  %39 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %40 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %39, i32 0, i32 2
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i32, i32* @lpfc_wcqe_c_xb, align 4
  %46 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %47 = call i32 @bf_get(i32 %45, %struct.lpfc_wcqe_complete* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %50, i32 0, i32 1
  %52 = call i32 @atomic_inc(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  br label %57

57:                                               ; preds = %53, %38
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %63, %struct.lpfc_nodelist** %12, align 8
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load i32, i32* @LOG_NVME_DISC, align 4
  %67 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %69 = icmp ne %struct.lpfc_nodelist* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 65535
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %86 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %91 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, %struct.nvmefc_ls_req*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), %struct.nvmefc_ls_req* %67, i32 %76, i32 %79, i32 %80, i32 %84, %struct.lpfc_iocbq* %85, %struct.nvmefc_ls_req* %86, i32* %89, %struct.lpfc_nodelist* %90)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %98 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lpfc_nvmeio_data(%struct.lpfc_hba* %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %99)
  %101 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %102 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %75
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %109, %struct.lpfc_dmabuf** %11, align 8
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %112 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %115 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %110, i32 %113, i32 %116)
  %118 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %119 = call i32 @kfree(%struct.lpfc_dmabuf* %118)
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %121 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %105, %75
  %123 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %124 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %123, i32 0, i32 0
  %125 = load i32 (%struct.nvmefc_ls_req*, i32)*, i32 (%struct.nvmefc_ls_req*, i32)** %124, align 8
  %126 = icmp ne i32 (%struct.nvmefc_ls_req*, i32)* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %129 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %128, i32 0, i32 0
  %130 = load i32 (%struct.nvmefc_ls_req*, i32)*, i32 (%struct.nvmefc_ls_req*, i32)** %129, align 8
  %131 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 %130(%struct.nvmefc_ls_req* %131, i32 %132)
  br label %153

134:                                              ; preds = %122
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %136 = load i32, i32* @KERN_ERR, align 4
  %137 = load i32, i32* @LOG_NVME_DISC, align 4
  %138 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %139 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %140 = icmp ne %struct.lpfc_nodelist* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %143 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  br label %146

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i32 [ %144, %141 ], [ 0, %145 ]
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, %struct.nvmefc_ls_req*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), %struct.nvmefc_ls_req* %138, i32 %147, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %127
  %154 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %155 = icmp ne %struct.lpfc_nodelist* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %158 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %157)
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %160 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %159, i32 0, i32 0
  store i32* null, i32** %160, align 8
  br label %161

161:                                              ; preds = %156, %153
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %163 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %164 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %162, %struct.lpfc_iocbq* %163)
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, %struct.nvmefc_ls_req*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_nvmeio_data(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
