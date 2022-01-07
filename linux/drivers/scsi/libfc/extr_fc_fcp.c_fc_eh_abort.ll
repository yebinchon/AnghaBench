; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_fcp_pkt = type { i32 }
%struct.fc_lport = type { i64, i32 }
%struct.fc_fcp_internal = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@LPORT_ST_READY = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fc_fcp_pkt*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_fcp_internal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load i32, i32* @FAILED, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.fc_lport* @shost_priv(i32 %22)
  store %struct.fc_lport* %23, %struct.fc_lport** %5, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPORT_ST_READY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %17
  %32 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %77

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %41 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %40)
  store %struct.fc_fcp_internal* %41, %struct.fc_fcp_internal** %6, align 8
  %42 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %6, align 8
  %43 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = call %struct.fc_fcp_pkt* @CMD_SP(%struct.scsi_cmnd* %46)
  store %struct.fc_fcp_pkt* %47, %struct.fc_fcp_pkt** %4, align 8
  %48 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %49 = icmp ne %struct.fc_fcp_pkt* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %6, align 8
  %52 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @SUCCESS, align 4
  store i32 %55, i32* %2, align 4
  br label %77

56:                                               ; preds = %39
  %57 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %58 = call i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt* %57)
  %59 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %6, align 8
  %60 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %64 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %7, align 4
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %70 = call i32 @fc_fcp_pkt_abort(%struct.fc_fcp_pkt* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %72 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %71)
  br label %73

73:                                               ; preds = %68, %66
  %74 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %75 = call i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %50, %36, %29, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local %struct.fc_lport* @shost_priv(i32) #1

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.fc_fcp_pkt* @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_abort(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
