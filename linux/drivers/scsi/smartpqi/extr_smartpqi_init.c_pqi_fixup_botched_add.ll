; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_fixup_botched_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_fixup_botched_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_fixup_botched_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_fixup_botched_add(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %10, i32 0, i32 1
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
