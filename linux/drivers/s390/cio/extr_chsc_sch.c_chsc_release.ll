; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@on_close_mutex = common dso_local global i32 0, align 4
@on_close_chsc_area = common dso_local global i32* null, align 8
@on_close_request = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"on_close\00", align 1
@chsc_lock = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"relret:%d\00", align 1
@chsc_ready_for_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @chsc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca [13 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i32 @mutex_lock(i32* @on_close_mutex)
  %8 = load i32*, i32** @on_close_chsc_area, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_close_request, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @init_completion(i32* %13)
  %15 = call i32 @CHSC_LOG(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** @on_close_chsc_area, align 8
  %17 = call i32 @chsc_log_command(i32* %16)
  %18 = call i32 @spin_lock_irq(i32* @chsc_lock)
  %19 = load i32*, i32** @on_close_chsc_area, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_close_request, align 8
  %21 = call i32 @chsc_async(i32* %19, %struct.TYPE_5__* %20)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @spin_unlock_irq(i32* @chsc_lock)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_close_request, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @wait_for_completion(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_close_request, align 8
  %32 = call i32 @chsc_examine_irb(%struct.TYPE_5__* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %11
  %34 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @snprintf(i8* %34, i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %38 = call i32 @CHSC_LOG(i32 0, i8* %37)
  %39 = load i32*, i32** @on_close_chsc_area, align 8
  %40 = ptrtoint i32* %39 to i64
  %41 = call i32 @free_page(i64 %40)
  store i32* null, i32** @on_close_chsc_area, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_close_request, align 8
  %43 = call i32 @kfree(%struct.TYPE_5__* %42)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @on_close_request, align 8
  br label %44

44:                                               ; preds = %33, %10
  %45 = call i32 @mutex_unlock(i32* @on_close_mutex)
  %46 = call i32 @atomic_inc(i32* @chsc_ready_for_use)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @CHSC_LOG(i32, i8*) #1

declare dso_local i32 @chsc_log_command(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @chsc_async(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @chsc_examine_irb(%struct.TYPE_5__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
