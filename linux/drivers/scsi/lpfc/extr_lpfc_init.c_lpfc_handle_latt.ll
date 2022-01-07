; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_latt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_latt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, %struct.lpfc_sli, %struct.lpfc_vport* }
%struct.lpfc_sli = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_9__ = type { %struct.lpfc_vport*, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_read_topology = common dso_local global i32 0, align 4
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"0300 LATT: Cannot issue READ_LA: Data:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_handle_latt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 6
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %3, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 5
  store %struct.lpfc_sli* %13, %struct.lpfc_sli** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @mempool_alloc(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %122

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.lpfc_dmabuf* @kmalloc(i32 8, i32 %24)
  store %struct.lpfc_dmabuf* %25, %struct.lpfc_dmabuf** %7, align 8
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %27 = icmp ne %struct.lpfc_dmabuf* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 2, i32* %8, align 4
  br label %116

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 0
  %33 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %30, i32 0, i32* %32)
  %34 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %35 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 3, i32* %8, align 4
  br label %113

41:                                               ; preds = %29
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = call i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba* %42)
  %44 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %52 = call i32 @lpfc_read_topology(%struct.lpfc_hba* %49, %struct.TYPE_9__* %50, %struct.lpfc_dmabuf* %51)
  %53 = load i32, i32* @lpfc_mbx_cmpl_read_topology, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store %struct.lpfc_vport* %56, %struct.lpfc_vport** %58, align 8
  %59 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i64, i64* @LPFC_ELS_RING, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %59
  store i32 %68, i32* %66, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load i32, i32* @MBX_NOWAIT, align 4
  %72 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %69, %struct.TYPE_9__* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %41
  store i32 4, i32* %8, align 4
  br label %93

77:                                               ; preds = %41
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 1
  %80 = call i32 @spin_lock_irq(i32* %79)
  %81 = load volatile i32, i32* @HA_LATT, align 4
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @writel(i32 %81, i32 %84)
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @readl(i32 %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_irq(i32* %91)
  br label %169

93:                                               ; preds = %76
  %94 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i64, i64* @LPFC_ELS_RING, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %95
  store i32 %104, i32* %102, align 4
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %93, %40
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %115 = call i32 @kfree(%struct.lpfc_dmabuf* %114)
  br label %116

116:                                              ; preds = %113, %28
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mempool_free(%struct.TYPE_9__* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %22
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 1
  %125 = call i32 @spin_lock_irq(i32* %124)
  %126 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %127 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @readl(i32 %133)
  store volatile i32 %134, i32* %6, align 4
  %135 = load volatile i32, i32* @HC_LAINT_ENA, align 4
  %136 = load volatile i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store volatile i32 %137, i32* %6, align 4
  %138 = load volatile i32, i32* %6, align 4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @writel(i32 %138, i32 %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @readl(i32 %145)
  %147 = load volatile i32, i32* @HA_LATT, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @writel(i32 %147, i32 %150)
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @readl(i32 %154)
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock_irq(i32* %157)
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %160 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %159)
  %161 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = load i32, i32* @LOG_MBOX, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %122, %77
  ret void
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_read_topology(%struct.lpfc_hba*, %struct.TYPE_9__*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
