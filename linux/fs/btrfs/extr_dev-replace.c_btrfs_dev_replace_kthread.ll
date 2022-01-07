; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_dev_replace }
%struct.btrfs_dev_replace = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"continuing dev_replace from %s (devid %llu) to target %s @%u%%\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@BTRFS_FS_EXCL_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @btrfs_dev_replace_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_dev_replace_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_dev_replace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.btrfs_fs_info*
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %3, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 1
  store %struct.btrfs_dev_replace* %10, %struct.btrfs_dev_replace** %4, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = call i64 @btrfs_dev_replace_progress(%struct.btrfs_fs_info* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @div_u64(i64 %13, i32 10)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %16 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @btrfs_dev_name(%struct.TYPE_3__* %18)
  %20 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @btrfs_dev_name(%struct.TYPE_3__* %27)
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %28, i32 %30)
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %33 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @btrfs_device_get_total_bytes(%struct.TYPE_3__* %43)
  %45 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %45, i32 0, i32 0
  %47 = call i32 @btrfs_scrub_dev(%struct.btrfs_fs_info* %32, i32 %37, i32 %40, i32 %44, i32* %46, i32 0, i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @btrfs_dev_replace_finishing(%struct.btrfs_fs_info* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ECANCELED, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br label %58

58:                                               ; preds = %53, %1
  %59 = phi i1 [ false, %1 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load i32, i32* @BTRFS_FS_EXCL_OP, align 4
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  ret i32 0
}

declare dso_local i64 @btrfs_dev_replace_progress(%struct.btrfs_fs_info*) #1

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_dev_name(%struct.TYPE_3__*) #1

declare dso_local i32 @btrfs_scrub_dev(%struct.btrfs_fs_info*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @btrfs_device_get_total_bytes(%struct.TYPE_3__*) #1

declare dso_local i32 @btrfs_dev_replace_finishing(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
