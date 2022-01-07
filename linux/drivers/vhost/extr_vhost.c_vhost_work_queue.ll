; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_work_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32 }
%struct.vhost_work = type { i32, i32 }

@VHOST_WORK_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_work_queue(%struct.vhost_dev* %0, %struct.vhost_work* %1) #0 {
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_work*, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store %struct.vhost_work* %1, %struct.vhost_work** %4, align 8
  %5 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %6 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @VHOST_WORK_QUEUED, align 4
  %12 = load %struct.vhost_work*, %struct.vhost_work** %4, align 8
  %13 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %12, i32 0, i32 1
  %14 = call i32 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.vhost_work*, %struct.vhost_work** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %17, i32 0, i32 0
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %19, i32 0, i32 1
  %21 = call i32 @llist_add(i32* %18, i32* %20)
  %22 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wake_up_process(i32 %24)
  br label %26

26:                                               ; preds = %9, %16, %10
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
