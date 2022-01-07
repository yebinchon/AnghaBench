; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_on_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_on_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Return:eh_wait.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ABORT_POLLING_PERIOD = common dso_local global i32 0, align 4
@ABORT_WAIT_ITER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2x00_eh_wait_on_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i64 2, i64* %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_8__* @shost_priv(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %6, align 8
  %17 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_channel_offline(i32 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %1
  %31 = load i32, i32* @ql_dbg_taskm, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @ql_dbg(i32 %31, %struct.TYPE_8__* %32, i32 32773, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %46, %35
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = call i64 @CMD_SP(%struct.scsi_cmnd* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %4, align 8
  %43 = icmp ne i64 %41, 0
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = call i32 @msleep(i32 1000)
  br label %36

48:                                               ; preds = %44
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = call i64 @CMD_SP(%struct.scsi_cmnd* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_8__* @shost_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
