; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fdmi_reg_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fdmi_reg_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }
%struct.TYPE_10__ = type { i32*, i32*, %struct.lpfc_vport*, %struct.TYPE_7__ }
%struct.lpfc_vport = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"0004 rpi:%x DID:%x flg:%x %d map:%x x%px\0A\00", align 1
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@SLI_MGMT_DHBA = common dso_local global i32 0, align 4
@SLI_MGMT_DPRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_fdmi_reg_login(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %19, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LPFC_SLI_REV4, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %2
  %42 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @NLP_FABRIC, align 4
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %54 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %55 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %52, %struct.lpfc_nodelist* %53, i32 %54)
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load i32, i32* @LOG_SLI, align 4
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 1
  %70 = call i32 @kref_read(i32* %69)
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, %struct.lpfc_nodelist* %74)
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %41
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %83 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %84 = load i32, i32* @SLI_MGMT_DHBA, align 4
  %85 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %82, %struct.lpfc_nodelist* %83, i32 %84, i32 0)
  br label %91

86:                                               ; preds = %41
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = load i32, i32* @SLI_MGMT_DPRT, align 4
  %90 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %87, %struct.lpfc_nodelist* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %93 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %99 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %94, i32 %97, i32 %100)
  %102 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %103 = call i32 @kfree(%struct.lpfc_dmabuf* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mempool_free(%struct.TYPE_10__* %104, i32 %107)
  ret void
}

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.lpfc_nodelist*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
