; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_upref_sleepers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_upref_sleepers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtproc_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtproc_info*)* @rpmsg_upref_sleepers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_upref_sleepers(%struct.virtproc_info* %0) #0 {
  %2 = alloca %struct.virtproc_info*, align 8
  store %struct.virtproc_info* %0, %struct.virtproc_info** %2, align 8
  %3 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %4 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %7 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %6, i32 0, i32 2
  %8 = call i32 @atomic_inc_return(i32* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %12 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @virtqueue_enable_cb(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %17 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @virtqueue_enable_cb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
