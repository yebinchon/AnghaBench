; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_free_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_free_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_evt_msg = type { i32 }

@n_evt_activeq = common dso_local global i32 0, align 4
@n_evt_freeq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_evt_msg*)* @csio_free_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_free_evt(%struct.csio_hw* %0, %struct.csio_evt_msg* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_evt_msg*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_evt_msg* %1, %struct.csio_evt_msg** %4, align 8
  %5 = load %struct.csio_evt_msg*, %struct.csio_evt_msg** %4, align 8
  %6 = icmp ne %struct.csio_evt_msg* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.csio_evt_msg*, %struct.csio_evt_msg** %4, align 8
  %12 = getelementptr inbounds %struct.csio_evt_msg, %struct.csio_evt_msg* %11, i32 0, i32 0
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.csio_evt_msg*, %struct.csio_evt_msg** %4, align 8
  %15 = getelementptr inbounds %struct.csio_evt_msg, %struct.csio_evt_msg* %14, i32 0, i32 0
  %16 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %20 = load i32, i32* @n_evt_activeq, align 4
  %21 = call i32 @CSIO_DEC_STATS(%struct.csio_hw* %19, i32 %20)
  %22 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %23 = load i32, i32* @n_evt_freeq, align 4
  %24 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %22, i32 %23)
  %25 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %26 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  br label %28

28:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @CSIO_DEC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
