; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_fill_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.btrfs_delayed_node = type { i32, %struct.btrfs_inode_item, i32 }
%struct.btrfs_inode_item = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8* }

@ENOENT = common dso_local global i32 0, align 4
@BTRFS_DELAYED_NODE_INODE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_fill_inode(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btrfs_delayed_node*, align 8
  %7 = alloca %struct.btrfs_inode_item*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %8)
  %10 = call %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.TYPE_12__* %9)
  store %struct.btrfs_delayed_node* %10, %struct.btrfs_delayed_node** %6, align 8
  %11 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %12 = icmp ne %struct.btrfs_delayed_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %149

16:                                               ; preds = %2
  %17 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @BTRFS_DELAYED_NODE_INODE_DIRTY, align 4
  %21 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %27 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %30 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %149

33:                                               ; preds = %16
  %34 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %35 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %34, i32 0, i32 1
  store %struct.btrfs_inode_item* %35, %struct.btrfs_inode_item** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %38 = call i32 @btrfs_stack_inode_uid(%struct.btrfs_inode_item* %37)
  %39 = call i32 @i_uid_write(%struct.inode* %36, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %42 = call i32 @btrfs_stack_inode_gid(%struct.btrfs_inode_item* %41)
  %43 = call i32 @i_gid_write(%struct.inode* %40, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %44)
  %46 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %47 = call i32 @btrfs_stack_inode_size(%struct.btrfs_inode_item* %46)
  %48 = call i32 @btrfs_i_size_write(%struct.TYPE_12__* %45, i32 %47)
  %49 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %50 = call i32 @btrfs_stack_inode_mode(%struct.btrfs_inode_item* %49)
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %55 = call i32 @btrfs_stack_inode_nlink(%struct.btrfs_inode_item* %54)
  %56 = call i32 @set_nlink(%struct.inode* %53, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %59 = call i32 @btrfs_stack_inode_nbytes(%struct.btrfs_inode_item* %58)
  %60 = call i32 @inode_set_bytes(%struct.inode* %57, i32 %59)
  %61 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %62 = call i32 @btrfs_stack_inode_generation(%struct.btrfs_inode_item* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %67 = call i32 @btrfs_stack_inode_transid(%struct.btrfs_inode_item* %66)
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %73 = call i32 @btrfs_stack_inode_sequence(%struct.btrfs_inode_item* %72)
  %74 = call i32 @inode_set_iversion_queried(%struct.inode* %71, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %78 = call i32 @btrfs_stack_inode_rdev(%struct.btrfs_inode_item* %77)
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %81 = call i32 @btrfs_stack_inode_flags(%struct.btrfs_inode_item* %80)
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %86 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %85, i32 0, i32 3
  %87 = call i8* @btrfs_stack_timespec_sec(i32* %86)
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %92 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %91, i32 0, i32 3
  %93 = call i8* @btrfs_stack_timespec_nsec(i32* %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %98 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %97, i32 0, i32 2
  %99 = call i8* @btrfs_stack_timespec_sec(i32* %98)
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %104 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %103, i32 0, i32 2
  %105 = call i8* @btrfs_stack_timespec_nsec(i32* %104)
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %110 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %109, i32 0, i32 1
  %111 = call i8* @btrfs_stack_timespec_sec(i32* %110)
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %116 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %115, i32 0, i32 1
  %117 = call i8* @btrfs_stack_timespec_nsec(i32* %116)
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %122 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %121, i32 0, i32 0
  %123 = call i8* @btrfs_stack_timespec_sec(i32* %122)
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %124)
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i8* %123, i8** %127, align 8
  %128 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %129 = getelementptr inbounds %struct.btrfs_inode_item, %struct.btrfs_inode_item* %128, i32 0, i32 0
  %130 = call i8* @btrfs_stack_timespec_nsec(i32* %129)
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %131)
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i8* %130, i8** %134, align 8
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i64 -1, i64* %143, align 8
  %144 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %145 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %6, align 8
  %148 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %33, %25, %13
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_uid(%struct.btrfs_inode_item*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_gid(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @btrfs_stack_inode_size(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_mode(%struct.btrfs_inode_item*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_nlink(%struct.btrfs_inode_item*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_nbytes(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_generation(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_transid(%struct.btrfs_inode_item*) #1

declare dso_local i32 @inode_set_iversion_queried(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_stack_inode_sequence(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_rdev(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_stack_inode_flags(%struct.btrfs_inode_item*) #1

declare dso_local i8* @btrfs_stack_timespec_sec(i32*) #1

declare dso_local i8* @btrfs_stack_timespec_nsec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
