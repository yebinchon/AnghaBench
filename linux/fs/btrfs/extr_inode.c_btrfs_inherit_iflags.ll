; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_inherit_iflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_inherit_iflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_COMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.inode*)* @btrfs_inherit_iflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_inherit_iflags(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = icmp ne %struct.inode* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %80

9:                                                ; preds = %2
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %52

32:                                               ; preds = %9
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %37, %32
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISREG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %57
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = call i32 @btrfs_sync_inode_flags_to_i_flags(%struct.inode* %78)
  br label %80

80:                                               ; preds = %77, %8
  ret void
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @btrfs_sync_inode_flags_to_i_flags(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
