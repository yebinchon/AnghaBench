; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_clear_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_clear_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_vport = type { i64, i32, i32 }
%struct.Scsi_Host = type { i32* }

@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_EXTRA_RING = common dso_local global i64 0, align 8
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0320 CLEAR_LA mbxStatus error x%x hba state x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@LPFC_HBA_READY = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"0225 Device Discovery completes\0A\00", align 1
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_10__*)* @lpfc_mbx_cmpl_clear_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_clear_la(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_sli*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 4
  store %struct.lpfc_sli* %16, %struct.lpfc_sli** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i64, i64* @LPFC_EXTRA_RING, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %21
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* @LPFC_FCP_RING, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %31
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 5633
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_MBOX, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %106

63:                                               ; preds = %44, %2
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @LPFC_HBA_READY, align 4
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_irq(i32* %75)
  %77 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %78 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @readl(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @HC_LAINT_ENA, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @writel(i32 %89, i32 %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @readl(i32 %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_irq(i32* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mempool_free(%struct.TYPE_10__* %101, i32 %104)
  br label %159

106:                                              ; preds = %49
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_DISCOVERY, align 4
  %110 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mempool_free(%struct.TYPE_10__* %111, i32 %114)
  %116 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %117 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @spin_lock_irq(i32* %118)
  %120 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %123 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %127 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @spin_unlock_irq(i32* %128)
  %130 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %131 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 0
  %134 = call i32 @spin_lock_irq(i32* %133)
  %135 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %136 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %137 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @readl(i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @HC_LAINT_ENA, align 4
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @writel(i32 %147, i32 %150)
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @readl(i32 %154)
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock_irq(i32* %157)
  br label %159

159:                                              ; preds = %106, %73
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
