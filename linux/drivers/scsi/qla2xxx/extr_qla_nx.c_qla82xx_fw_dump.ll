; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_fw_dump(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @scsi_block_requests(i32 %17)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i32 @qla82xx_set_reset_owner(%struct.TYPE_7__* %24)
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %27 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @scsi_unblock_requests(i32 %32)
  br label %34

34:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_set_reset_owner(%struct.TYPE_7__*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
