; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rpl_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rpl_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_12__, %struct.lpfc_hba* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i64, i8* }
%struct.TYPE_10__ = type { i32, i8*, i64 }
%struct.lpfc_hba = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_13__, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i32* }

@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"0120 Xmit ELS RPL ACC response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rsp_rpl_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rsp_rpl_acc(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca i32*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %10, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ELS_CMD_ACC, align 4
  %29 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %19, i32 0, i32 %20, i32 %23, %struct.lpfc_nodelist* %24, i32 %27, i32 %28)
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %14, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %31 = icmp ne %struct.lpfc_iocbq* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %131

33:                                               ; preds = %4
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 1
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %11, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 1
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %12, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %53 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.lpfc_dmabuf*
  %56 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %15, align 8
  %58 = load i32, i32* @ELS_CMD_ACC, align 4
  %59 = load i32*, i32** %15, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32* %61, i32** %15, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @be16_to_cpu(i32 %62)
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %15, align 8
  %67 = call i8* @be32_to_cpu(i32 1)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @be32_to_cpu(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 1
  %82 = call i32 @memcpy(i32* %79, %struct.TYPE_12__* %81, i32 4)
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %83, %struct.TYPE_12__* %13, i32 %87)
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %90 = load i32, i32* @KERN_INFO, align 4
  %91 = load i32, i32* @LOG_ELS, align 4
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %93 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %96 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %121 = load i32, i32* @LPFC_ELS_RING, align 4
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %123 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %120, i32 %121, %struct.lpfc_iocbq* %122, i32 0)
  %124 = load i64, i64* @IOCB_ERROR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %33
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %129 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %127, %struct.lpfc_iocbq* %128)
  store i32 1, i32* %5, align 4
  br label %131

130:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %126, %32
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
