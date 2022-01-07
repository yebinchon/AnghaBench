; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rnid_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rnid_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"0132 Xmit RNID ACC response tag x%x xri x%x\0A\00", align 1
@RNID_HBA = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC RNID:  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rsp_rnid_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rsp_rnid_acc(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %10, align 8
  store i32 16, i32* %16, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %16, align 4
  br label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ELS_CMD_ACC, align 4
  %39 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %29, i32 0, i32 %30, i32 %33, %struct.lpfc_nodelist* %34, i32 %37, i32 %38)
  store %struct.lpfc_iocbq* %39, %struct.lpfc_iocbq** %14, align 8
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %41 = icmp ne %struct.lpfc_iocbq* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %165

43:                                               ; preds = %28
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 2
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %12, align 8
  %46 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %47 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %46, i32 0, i32 2
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %13, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load i32, i32* @LOG_ELS, align 4
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %66 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %69 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %74 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.lpfc_dmabuf*
  %77 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %15, align 8
  %80 = load i32, i32* @ELS_CMD_ACC, align 4
  %81 = load i32*, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @memset(i32* %84, i32 0, i32 36)
  %86 = load i32*, i32** %15, align 8
  %87 = bitcast i32* %86 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %11, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  store i32 8, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %95, i32 0, i32 0
  %97 = call i32 @memcpy(i32* %94, i32* %96, i32 4)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %101 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %100, i32 0, i32 1
  %102 = call i32 @memcpy(i32* %99, i32* %101, i32 4)
  %103 = load i32, i32* %7, align 4
  switch i32 %103, label %130 [
    i32 0, label %104
    i32 128, label %107
  ]

104:                                              ; preds = %43
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  store i32 0, i32* %106, align 4
  br label %135

107:                                              ; preds = %43
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i32 4, i32* %109, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %115 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %114, i32 0, i32 0
  %116 = call i32 @memcpy(i32* %113, i32* %115, i32 4)
  %117 = load i32, i32* @RNID_HBA, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  br label %135

130:                                              ; preds = %43
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %107, %104
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %137 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %139 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %142 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %136, i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %143, i32 0)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %151 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %152 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %154 = load i32, i32* @LPFC_ELS_RING, align 4
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %156 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %153, i32 %154, %struct.lpfc_iocbq* %155, i32 0)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @IOCB_ERROR, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %135
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %162 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %163 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %161, %struct.lpfc_iocbq* %162)
  store i32 1, i32* %5, align 4
  br label %165

164:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %160, %42
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
