; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_update_ioctl_balance_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_update_ioctl_balance_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32, %struct.btrfs_balance_control* }
%struct.btrfs_balance_control = type { i32, i32, i32, i32, i32 }
%struct.btrfs_ioctl_balance_args = type { i32, i32, i32, i32, i32, i32 }

@BTRFS_FS_BALANCE_RUNNING = common dso_local global i32 0, align 4
@BTRFS_BALANCE_STATE_RUNNING = common dso_local global i32 0, align 4
@BTRFS_BALANCE_STATE_PAUSE_REQ = common dso_local global i32 0, align 4
@BTRFS_BALANCE_STATE_CANCEL_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_update_ioctl_balance_args(%struct.btrfs_fs_info* %0, %struct.btrfs_ioctl_balance_args* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_ioctl_balance_args*, align 8
  %5 = alloca %struct.btrfs_balance_control*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_ioctl_balance_args* %1, %struct.btrfs_ioctl_balance_args** %4, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 4
  %8 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %7, align 8
  store %struct.btrfs_balance_control* %8, %struct.btrfs_balance_control** %5, align 8
  %9 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @BTRFS_FS_BALANCE_RUNNING, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 3
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @BTRFS_BALANCE_STATE_RUNNING, align 4
  %21 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 2
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @BTRFS_BALANCE_STATE_PAUSE_REQ, align 4
  %32 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 1
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @BTRFS_BALANCE_STATE_CANCEL_REQ, align 4
  %43 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %49 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %48, i32 0, i32 3
  %50 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %50, i32 0, i32 3
  %52 = call i32 @memcpy(i32* %49, i32* %51, i32 4)
  %53 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %53, i32 0, i32 2
  %55 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %5, align 8
  %56 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %55, i32 0, i32 2
  %57 = call i32 @memcpy(i32* %54, i32* %56, i32 4)
  %58 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %59 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %58, i32 0, i32 1
  %60 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %60, i32 0, i32 1
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 4)
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.btrfs_ioctl_balance_args*, %struct.btrfs_ioctl_balance_args** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_ioctl_balance_args, %struct.btrfs_ioctl_balance_args* %66, i32 0, i32 0
  %68 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %68, i32 0, i32 0
  %70 = call i32 @memcpy(i32* %67, i32* %69, i32 4)
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %72 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
