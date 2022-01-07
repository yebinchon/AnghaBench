; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_fill_stack_inode_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_fill_stack_inode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode_item = type { i32, i32, i32, i32 }
%struct.inode = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_inode_item*, %struct.inode*)* @fill_stack_inode_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stack_inode_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode_item* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_inode_item*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_inode_item* %1, %struct.btrfs_inode_item** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %7 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %6, align 8
  %9 = call i32 @i_uid_read(%struct.inode* %8)
  %10 = call i32 @btrfs_set_stack_inode_uid(%struct.btrfs_inode_item* %7, i32 %9)
  %11 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @i_gid_read(%struct.inode* %12)
  %14 = call i32 @btrfs_set_stack_inode_gid(%struct.btrfs_inode_item* %11, i32 %13)
  %15 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item* %15, i32 %19)
  %21 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item* %21, i32 %24)
  %26 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item* %26, i32 %29)
  %31 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @inode_get_bytes(%struct.inode* %32)
  %34 = call i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item* %31, i32 %33)
  %35 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item* %35, i32 %39)
  %41 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @inode_peek_iversion(%struct.inode* %42)
  %44 = call i32 @btrfs_set_stack_inode_sequence(%struct.btrfs_inode_item* %41, i32 %43)
  %45 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @btrfs_set_stack_inode_transid(%struct.btrfs_inode_item* %45, i32 %48)
  %50 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @btrfs_set_stack_inode_rdev(%struct.btrfs_inode_item* %50, i32 %53)
  %55 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @btrfs_set_stack_inode_flags(%struct.btrfs_inode_item* %55, i32 %59)
  %61 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %62 = call i32 @btrfs_set_stack_inode_block_group(%struct.btrfs_inode_item* %61, i32 0)
  %63 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %63, i32 0, i32 3
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @btrfs_set_stack_timespec_sec(i32* %64, i32 %68)
  %70 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %71 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %70, i32 0, i32 3
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @btrfs_set_stack_timespec_nsec(i32* %71, i32 %75)
  %77 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %77, i32 0, i32 2
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @btrfs_set_stack_timespec_sec(i32* %78, i32 %82)
  %84 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %85 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %84, i32 0, i32 2
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @btrfs_set_stack_timespec_nsec(i32* %85, i32 %89)
  %91 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %91, i32 0, i32 1
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @btrfs_set_stack_timespec_sec(i32* %92, i32 %96)
  %98 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %99 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %98, i32 0, i32 1
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @btrfs_set_stack_timespec_nsec(i32* %99, i32 %103)
  %105 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %106 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %105, i32 0, i32 0
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @btrfs_set_stack_timespec_sec(i32* %106, i32 %111)
  %113 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %114 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %113, i32 0, i32 0
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @btrfs_set_stack_timespec_nsec(i32* %114, i32 %119)
  ret void
}

declare dso_local i32 @btrfs_set_stack_inode_uid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_gid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item*, i32) #1

declare dso_local %struct.TYPE_10__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @inode_get_bytes(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_sequence(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @inode_peek_iversion(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_transid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_rdev(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_flags(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_block_group(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_sec(i32*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_nsec(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
