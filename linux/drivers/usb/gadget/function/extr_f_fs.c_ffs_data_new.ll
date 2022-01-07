; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FFS_READ_DESCRIPTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ffs_data* (i8*)* @ffs_data_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ffs_data* @ffs_data_new(i8* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ffs_data*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ffs_data* @kzalloc(i32 40, i32 %5)
  store %struct.ffs_data* %6, %struct.ffs_data** %4, align 8
  %7 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %8 = icmp ne %struct.ffs_data* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.ffs_data* null, %struct.ffs_data** %2, align 8
  br label %57

14:                                               ; preds = %1
  %15 = call i32 (...) @ENTER()
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i8* %16)
  %18 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %19 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %21 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %26 = call i32 @kfree(%struct.ffs_data* %25)
  store %struct.ffs_data* null, %struct.ffs_data** %2, align 8
  br label %57

27:                                               ; preds = %14
  %28 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %29 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %28, i32 0, i32 7
  %30 = call i32 @refcount_set(i32* %29, i32 1)
  %31 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %32 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %31, i32 0, i32 6
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load i32, i32* @FFS_READ_DESCRIPTORS, align 4
  %35 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %36 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %38 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %37, i32 0, i32 4
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %41 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %44 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %48 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %47, i32 0, i32 2
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %51 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %50, i32 0, i32 1
  %52 = call i32 @init_completion(i32* %51)
  %53 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %54 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  store %struct.ffs_data* %56, %struct.ffs_data** %2, align 8
  br label %57

57:                                               ; preds = %27, %24, %13
  %58 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  ret %struct.ffs_data* %58
}

declare dso_local %struct.ffs_data* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.ffs_data*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
