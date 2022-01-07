; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { i32, i32, i32, i32, i32, %struct.se_cmd, %struct.qla_tgt* }
%struct.se_cmd = type { i32, %struct.se_cmd*, %struct.qla_tgt_cmd*, i32 }
%struct.qla_tgt = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.qla_tgt_cmd* }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"qla_target(%d): terminating exchange for aborted cmd=%p (se_cmd=%p, tag=%llu)\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"multiple abort. %p transport_state %x, t_state %x, se_cmd_flags %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TRC_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlt_abort_cmd(%struct.qla_tgt_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_tgt_cmd*, align 8
  %4 = alloca %struct.qla_tgt*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca i64, align 8
  store %struct.qla_tgt_cmd* %0, %struct.qla_tgt_cmd** %3, align 8
  %8 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %8, i32 0, i32 6
  %10 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  store %struct.qla_tgt* %10, %struct.qla_tgt** %4, align 8
  %11 = load %struct.qla_tgt*, %struct.qla_tgt** %4, align 8
  %12 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %11, i32 0, i32 0
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  store %struct.scsi_qla_host* %13, %struct.scsi_qla_host** %5, align 8
  %14 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %14, i32 0, i32 5
  store %struct.se_cmd* %15, %struct.se_cmd** %6, align 8
  %16 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %19, align 8
  %21 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %22 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %22, i32 0, i32 5
  %24 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ql_dbg(i32 %16, %struct.scsi_qla_host* %17, i32 61460, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), %struct.qla_tgt_cmd* %20, %struct.qla_tgt_cmd* %21, %struct.se_cmd* %23, i32 %26)
  %28 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %28, i32 0, i32 3
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %1
  %37 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %37, i32 0, i32 3
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %43 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %44 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 2
  %47 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %46, align 8
  %48 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 1
  %51 = load %struct.se_cmd*, %struct.se_cmd** %50, align 8
  %52 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ql_dbg(i32 %41, %struct.scsi_qla_host* %42, i32 61462, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.qla_tgt_cmd* %43, %struct.qla_tgt_cmd* %47, %struct.se_cmd* %51, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %2, align 4
  br label %77

58:                                               ; preds = %1
  %59 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @TRC_ABORT, align 4
  %62 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %66, i32 0, i32 3
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %74 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %75 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %74, i32 0, i32 1
  %76 = call i32 @qlt_send_term_exchange(i32 %72, %struct.qla_tgt_cmd* %73, i32* %75, i32 0, i32 1)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %58, %36
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd*, %struct.se_cmd*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qlt_send_term_exchange(i32, %struct.qla_tgt_cmd*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
