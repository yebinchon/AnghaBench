; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_task_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_handle_task_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.fc_port* (%struct.scsi_qla_host*, i32)* }
%struct.fc_port = type { i64 }
%struct.atio_from_isp = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_lun = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*)* @qlt_handle_task_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_handle_task_mgmt(%struct.scsi_qla_host* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atio_from_isp*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.fc_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.atio_from_isp*
  store %struct.atio_from_isp* %13, %struct.atio_from_isp** %6, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %7, align 8
  %17 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %18 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.fc_port* (%struct.scsi_qla_host*, i32)*, %struct.fc_port* (%struct.scsi_qla_host*, i32)** %32, align 8
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %35 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %36 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.fc_port* %33(%struct.scsi_qla_host* %34, i32 %40)
  store %struct.fc_port* %41, %struct.fc_port** %8, align 8
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %48 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to %struct.scsi_lun*
  %53 = call i32 @scsilun_to_int(%struct.scsi_lun* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %55 = icmp eq %struct.fc_port* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %2
  %57 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %58 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %2
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @qlt_issue_task_mgmt(%struct.fc_port* %65, i32 %66, i32 %67, i8* %68, i32 0)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

declare dso_local i32 @qlt_issue_task_mgmt(%struct.fc_port*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
