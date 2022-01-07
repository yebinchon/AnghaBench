; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_mb_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_mb_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_mbm = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.timer_list = type { i32 }
%struct.csio_mb = type { i32 (%struct.csio_hw*, %struct.csio_mb*)* }

@timer = common dso_local global i32 0, align 4
@mbm = common dso_local global %struct.csio_mbm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @csio_hw_mb_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_mb_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.csio_mbm*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_mb*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.csio_mbm*, %struct.csio_mbm** %3, align 8
  %7 = ptrtoint %struct.csio_mbm* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.csio_mbm* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.csio_mbm* %10, %struct.csio_mbm** %3, align 8
  %11 = load %struct.csio_mbm*, %struct.csio_mbm** %3, align 8
  %12 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %11, i32 0, i32 0
  %13 = load %struct.csio_hw*, %struct.csio_hw** %12, align 8
  store %struct.csio_hw* %13, %struct.csio_hw** %4, align 8
  store %struct.csio_mb* null, %struct.csio_mb** %5, align 8
  %14 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %18 = call %struct.csio_mb* @csio_mb_tmo_handler(%struct.csio_hw* %17)
  store %struct.csio_mb* %18, %struct.csio_mb** %5, align 8
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %23 = icmp ne %struct.csio_mb* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %26 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %25, i32 0, i32 0
  %27 = load i32 (%struct.csio_hw*, %struct.csio_mb*)*, i32 (%struct.csio_hw*, %struct.csio_mb*)** %26, align 8
  %28 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %29 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %30 = call i32 %27(%struct.csio_hw* %28, %struct.csio_mb* %29)
  br label %31

31:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.csio_mbm* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.csio_mb* @csio_mb_tmo_handler(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
