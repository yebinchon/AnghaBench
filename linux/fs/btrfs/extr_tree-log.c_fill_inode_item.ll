; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_fill_inode_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_fill_inode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_inode_item = type { i32, i32, i32 }
%struct.inode = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.btrfs_map_token = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.extent_buffer*, %struct.btrfs_inode_item*, %struct.inode*, i32, i32)* @fill_inode_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_inode_item(%struct.btrfs_trans_handle* %0, %struct.extent_buffer* %1, %struct.btrfs_inode_item* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.btrfs_inode_item*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_map_token, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %8, align 8
  store %struct.btrfs_inode_item* %2, %struct.btrfs_inode_item** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %15 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %13, %struct.extent_buffer* %14)
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %20 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %21 = call i32 @btrfs_set_token_inode_generation(%struct.extent_buffer* %19, %struct.btrfs_inode_item* %20, i32 0, %struct.btrfs_map_token* %13)
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %23 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @btrfs_set_token_inode_size(%struct.extent_buffer* %22, %struct.btrfs_inode_item* %23, i32 %24, %struct.btrfs_map_token* %13)
  br label %40

26:                                               ; preds = %6
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %28 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @btrfs_set_token_inode_generation(%struct.extent_buffer* %27, %struct.btrfs_inode_item* %28, i32 %32, %struct.btrfs_map_token* %13)
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %35 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @btrfs_set_token_inode_size(%struct.extent_buffer* %34, %struct.btrfs_inode_item* %35, i32 %38, %struct.btrfs_map_token* %13)
  br label %40

40:                                               ; preds = %26, %18
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %42 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @i_uid_read(%struct.inode* %43)
  %45 = call i32 @btrfs_set_token_inode_uid(%struct.extent_buffer* %41, %struct.btrfs_inode_item* %42, i32 %44, %struct.btrfs_map_token* %13)
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %47 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @i_gid_read(%struct.inode* %48)
  %50 = call i32 @btrfs_set_token_inode_gid(%struct.extent_buffer* %46, %struct.btrfs_inode_item* %47, i32 %49, %struct.btrfs_map_token* %13)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %52 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @btrfs_set_token_inode_mode(%struct.extent_buffer* %51, %struct.btrfs_inode_item* %52, i32 %55, %struct.btrfs_map_token* %13)
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %58 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @btrfs_set_token_inode_nlink(%struct.extent_buffer* %57, %struct.btrfs_inode_item* %58, i32 %61, %struct.btrfs_map_token* %13)
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %64 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %65 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %64, i32 0, i32 2
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @btrfs_set_token_timespec_sec(%struct.extent_buffer* %63, i32* %65, i32 %69, %struct.btrfs_map_token* %13)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %72 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %73 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %72, i32 0, i32 2
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @btrfs_set_token_timespec_nsec(%struct.extent_buffer* %71, i32* %73, i32 %77, %struct.btrfs_map_token* %13)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %80 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %81 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %80, i32 0, i32 1
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @btrfs_set_token_timespec_sec(%struct.extent_buffer* %79, i32* %81, i32 %85, %struct.btrfs_map_token* %13)
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %88 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %89 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %88, i32 0, i32 1
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @btrfs_set_token_timespec_nsec(%struct.extent_buffer* %87, i32* %89, i32 %93, %struct.btrfs_map_token* %13)
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %96 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %97 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %96, i32 0, i32 0
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @btrfs_set_token_timespec_sec(%struct.extent_buffer* %95, i32* %97, i32 %101, %struct.btrfs_map_token* %13)
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %104 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %105 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %104, i32 0, i32 0
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @btrfs_set_token_timespec_nsec(%struct.extent_buffer* %103, i32* %105, i32 %109, %struct.btrfs_map_token* %13)
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %112 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = call i32 @inode_get_bytes(%struct.inode* %113)
  %115 = call i32 @btrfs_set_token_inode_nbytes(%struct.extent_buffer* %111, %struct.btrfs_inode_item* %112, i32 %114, %struct.btrfs_map_token* %13)
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %117 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %118 = load %struct.inode*, %struct.inode** %10, align 8
  %119 = call i32 @inode_peek_iversion(%struct.inode* %118)
  %120 = call i32 @btrfs_set_token_inode_sequence(%struct.extent_buffer* %116, %struct.btrfs_inode_item* %117, i32 %119, %struct.btrfs_map_token* %13)
  %121 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %122 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %123 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %124 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @btrfs_set_token_inode_transid(%struct.extent_buffer* %121, %struct.btrfs_inode_item* %122, i32 %125, %struct.btrfs_map_token* %13)
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %128 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @btrfs_set_token_inode_rdev(%struct.extent_buffer* %127, %struct.btrfs_inode_item* %128, i32 %131, %struct.btrfs_map_token* %13)
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %134 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @btrfs_set_token_inode_flags(%struct.extent_buffer* %133, %struct.btrfs_inode_item* %134, i32 %138, %struct.btrfs_map_token* %13)
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %141 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %9, align 8
  %142 = call i32 @btrfs_set_token_inode_block_group(%struct.extent_buffer* %140, %struct.btrfs_inode_item* %141, i32 0, %struct.btrfs_map_token* %13)
  ret void
}

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_token_inode_generation(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_size(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_set_token_inode_uid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @btrfs_set_token_inode_gid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @btrfs_set_token_inode_mode(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_nlink(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_timespec_sec(%struct.extent_buffer*, i32*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_timespec_nsec(%struct.extent_buffer*, i32*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_nbytes(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @inode_get_bytes(%struct.inode*) #1

declare dso_local i32 @btrfs_set_token_inode_sequence(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @inode_peek_iversion(%struct.inode*) #1

declare dso_local i32 @btrfs_set_token_inode_transid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_rdev(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_flags(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_inode_block_group(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32, %struct.btrfs_map_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
