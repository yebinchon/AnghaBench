; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_mbm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_mbm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@cbfn_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_hw_mbm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_mbm_cleanup(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load i32, i32* @cbfn_q, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = call i32 @csio_mb_cancel_all(%struct.csio_hw* %5, i32* @cbfn_q)
  %7 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %8 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %7, i32 0, i32 0
  %9 = call i32 @spin_unlock_irq(i32* %8)
  %10 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %11 = call i32 @csio_mb_completions(%struct.csio_hw* %10, i32* @cbfn_q)
  %12 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @csio_mb_cancel_all(%struct.csio_hw*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_mb_completions(%struct.csio_hw*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
