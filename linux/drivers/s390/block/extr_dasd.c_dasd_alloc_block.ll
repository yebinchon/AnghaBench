; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dasd_block_tasklet = common dso_local global i32 0, align 4
@dasd_block_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_block* @dasd_alloc_block() #0 {
  %1 = alloca %struct.dasd_block*, align 8
  %2 = alloca %struct.dasd_block*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.dasd_block* @kzalloc(i32 28, i32 %3)
  store %struct.dasd_block* %4, %struct.dasd_block** %2, align 8
  %5 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %6 = icmp ne %struct.dasd_block* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dasd_block* @ERR_PTR(i32 %9)
  store %struct.dasd_block* %10, %struct.dasd_block** %1, align 8
  br label %39

11:                                               ; preds = %0
  %12 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 6
  %14 = call i32 @atomic_set(i32* %13, i32 -1)
  %15 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %15, i32 0, i32 5
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %18, i32 0, i32 4
  %20 = load i32, i32* @dasd_block_tasklet, align 4
  %21 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %22 = ptrtoint %struct.dasd_block* %21 to i64
  %23 = call i32 @tasklet_init(i32* %19, i32 %20, i64 %22)
  %24 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %25 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %28 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %30, i32 0, i32 1
  %32 = load i32, i32* @dasd_block_timeout, align 4
  %33 = call i32 @timer_setup(i32* %31, i32 %32, i32 0)
  %34 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %35 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  store %struct.dasd_block* %38, %struct.dasd_block** %1, align 8
  br label %39

39:                                               ; preds = %11, %7
  %40 = load %struct.dasd_block*, %struct.dasd_block** %1, align 8
  ret %struct.dasd_block* %40
}

declare dso_local %struct.dasd_block* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_block* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
