; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_btrfs_reada_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_btrfs_reada_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reada_control = type { i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@HZ = common dso_local global i32 0, align 4
@reada_control_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_reada_wait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.reada_control*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.reada_control*
  store %struct.reada_control* %6, %struct.reada_control** %3, align 8
  %7 = load %struct.reada_control*, %struct.reada_control** %3, align 8
  %8 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %7, i32 0, i32 3
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %4, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.reada_control*, %struct.reada_control** %3, align 8
  %12 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 0
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %22 = call i32 @reada_start_machine(%struct.btrfs_fs_info* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.reada_control*, %struct.reada_control** %3, align 8
  %25 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.reada_control*, %struct.reada_control** %3, align 8
  %28 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @HZ, align 4
  %33 = add nsw i32 %32, 9
  %34 = sdiv i32 %33, 10
  %35 = call i32 @wait_event_timeout(i32 %26, i32 %31, i32 %34)
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.reada_control*, %struct.reada_control** %3, align 8
  %38 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %37, i32 0, i32 0
  %39 = load i32, i32* @reada_control_release, align 4
  %40 = call i32 @kref_put(i32* %38, i32 %39)
  ret i32 0
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @reada_start_machine(%struct.btrfs_fs_info*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
