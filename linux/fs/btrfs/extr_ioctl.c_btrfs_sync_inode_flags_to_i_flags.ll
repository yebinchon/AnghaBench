; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_sync_inode_flags_to_i_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_sync_inode_flags_to_i_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_inode = type { i32 }

@BTRFS_INODE_SYNC = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@BTRFS_INODE_IMMUTABLE = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@BTRFS_INODE_APPEND = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@BTRFS_INODE_NOATIME = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@BTRFS_INODE_DIRSYNC = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sync_inode_flags_to_i_flags(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %5)
  store %struct.btrfs_inode* %6, %struct.btrfs_inode** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BTRFS_INODE_SYNC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @S_SYNC, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BTRFS_INODE_IMMUTABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @S_IMMUTABLE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BTRFS_INODE_APPEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @S_APPEND, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BTRFS_INODE_NOATIME, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @S_NOATIME, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BTRFS_INODE_DIRSYNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @S_DIRSYNC, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* @S_SYNC, align 4
  %65 = load i32, i32* @S_APPEND, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IMMUTABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_NOATIME, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @S_DIRSYNC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @set_mask_bits(i32* %63, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
