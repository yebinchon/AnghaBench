; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_resume_dev_replace_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_resume_dev_replace_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_dev_replace }
%struct.btrfs_dev_replace = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"cannot continue dev_replace, tgtdev is missing\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"you may cancel the operation after 'mount -o degraded'\00", align 1
@BTRFS_FS_EXCL_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"cannot resume dev-replace, other exclusive operation running\00", align 1
@btrfs_dev_replace_kthread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"btrfs-devrepl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_resume_dev_replace_async(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.btrfs_dev_replace*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 1
  store %struct.btrfs_dev_replace* %7, %struct.btrfs_dev_replace** %5, align 8
  %8 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %8, i32 0, i32 1
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 131, label %14
    i32 132, label %14
    i32 129, label %18
    i32 128, label %19
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %15, i32 0, i32 1
  %17 = call i32 @up_write(i32* %16)
  store i32 0, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %20, i32 0, i32 0
  store i32 129, i32* %21, align 8
  br label %22

22:                                               ; preds = %1, %19, %18
  %23 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %36 = call i32 @btrfs_info(%struct.btrfs_fs_info* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = call i32 @btrfs_info(%struct.btrfs_fs_info* %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %39, i32 0, i32 0
  store i32 128, i32* %40, align 8
  %41 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %41, i32 0, i32 1
  %43 = call i32 @up_write(i32* %42)
  store i32 0, i32* %2, align 4
  br label %70

44:                                               ; preds = %27
  %45 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %45, i32 0, i32 1
  %47 = call i32 @up_write(i32* %46)
  %48 = load i32, i32* @BTRFS_FS_EXCL_OP, align 4
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  %51 = call i64 @test_and_set_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %54, i32 0, i32 1
  %56 = call i32 @down_write(i32* %55)
  %57 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %58 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %57, i32 0, i32 0
  store i32 128, i32* %58, align 8
  %59 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %5, align 8
  %60 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %59, i32 0, i32 1
  %61 = call i32 @up_write(i32* %60)
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %63 = call i32 @btrfs_info(%struct.btrfs_fs_info* %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

64:                                               ; preds = %44
  %65 = load i32, i32* @btrfs_dev_replace_kthread, align 4
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %67 = call %struct.task_struct* @kthread_run(i32 %65, %struct.btrfs_fs_info* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.task_struct* %67, %struct.task_struct** %4, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.task_struct* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %53, %34, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
