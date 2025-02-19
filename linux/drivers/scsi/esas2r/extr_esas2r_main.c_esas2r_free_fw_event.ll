; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_free_fw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_free_fw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_fw_event_work = type { i32, %struct.esas2r_adapter* }
%struct.esas2r_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_fw_event_work*)* @esas2r_free_fw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_free_fw_event(%struct.esas2r_fw_event_work* %0) #0 {
  %2 = alloca %struct.esas2r_fw_event_work*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_fw_event_work* %0, %struct.esas2r_fw_event_work** %2, align 8
  %5 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %2, align 8
  %6 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %5, i32 0, i32 1
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_adapter* %7, %struct.esas2r_adapter** %4, align 8
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %2, align 8
  %13 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %2, align 8
  %16 = call i32 @kfree(%struct.esas2r_fw_event_work* %15)
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.esas2r_fw_event_work*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
