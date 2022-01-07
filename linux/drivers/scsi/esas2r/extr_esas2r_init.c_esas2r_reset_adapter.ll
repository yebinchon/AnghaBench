; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@AF_OS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_reset_adapter(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @AF_OS_RESET, align 4
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %8 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %7)
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = call i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter* %9)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
