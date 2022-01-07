; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_mbx_cmpl_dflt_rpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_mbx_cmpl_dflt_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"0006 rpi%x DID:%x flg:%x %d map:%x x%px\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_dflt_rpi(%struct.lpfc_hba* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %14, %struct.lpfc_nodelist** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %19, i32 %22, i32 %25)
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %28 = call i32 @kfree(%struct.lpfc_dmabuf* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mempool_free(%struct.TYPE_4__* %29, i32 %32)
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %35 = icmp ne %struct.lpfc_nodelist* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %2
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load i32, i32* @LOG_NODE, align 4
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 2
  %53 = call i32 @kref_read(i32* %52)
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = call i32 @lpfc_printf_vlog(i32 %39, i32 %40, i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, %struct.lpfc_nodelist* %57)
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %60 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %64 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %63)
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %66 = call i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %65)
  br label %73

67:                                               ; preds = %36
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %72 = call i32 @lpfc_drop_node(i32 %70, %struct.lpfc_nodelist* %71)
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %2
  ret void
}

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.lpfc_nodelist*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_drop_node(i32, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
