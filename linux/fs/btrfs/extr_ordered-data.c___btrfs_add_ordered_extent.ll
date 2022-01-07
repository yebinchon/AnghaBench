; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c___btrfs_add_ordered_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c___btrfs_add_ordered_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, i32, i32 }
%struct.btrfs_root = type { i32, i32, i32, i32 }
%struct.btrfs_ordered_inode_tree = type { i32, i32 }
%struct.rb_node = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.btrfs_ordered_inode_tree, %struct.btrfs_root* }

@btrfs_ordered_extent_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ORDERED_IO_DONE = common dso_local global i32 0, align 4
@BTRFS_ORDERED_COMPLETE = common dso_local global i32 0, align 4
@BTRFS_ORDERED_DIRECT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i8*, i8*, i32, i32, i32)* @__btrfs_add_ordered_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_add_ordered_extent(%struct.inode* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_fs_info*, align 8
  %19 = alloca %struct.btrfs_root*, align 8
  %20 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  %21 = alloca %struct.rb_node*, align 8
  %22 = alloca %struct.btrfs_ordered_extent*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %25)
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  store %struct.btrfs_root* %30, %struct.btrfs_root** %19, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.btrfs_ordered_inode_tree* %33, %struct.btrfs_ordered_inode_tree** %20, align 8
  %34 = load i32, i32* @btrfs_ordered_extent_cache, align 4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.btrfs_ordered_extent* @kmem_cache_zalloc(i32 %34, i32 %35)
  store %struct.btrfs_ordered_extent* %36, %struct.btrfs_ordered_extent** %22, align 8
  %37 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %38 = icmp ne %struct.btrfs_ordered_extent* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %193

42:                                               ; preds = %8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %45 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %44, i32 0, i32 17
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %48 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %47, i32 0, i32 16
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %51 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %50, i32 0, i32 15
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %54 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %53, i32 0, i32 14
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %57 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %56, i32 0, i32 13
  store i8* %55, i8** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = call i32 @igrab(%struct.inode* %58)
  %60 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %61 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %64 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %66 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %65, i32 0, i32 11
  store i8* inttoptr (i64 -1 to i8*), i8** %66, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @BTRFS_ORDERED_IO_DONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %42
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @BTRFS_ORDERED_COMPLETE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %77 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %76, i32 0, i32 10
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %70, %42
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 3
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @percpu_counter_add_batch(i32* %84, i8* %85, i32 %88)
  %90 = load i32, i32* @BTRFS_ORDERED_DIRECT, align 4
  %91 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %92 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %91, i32 0, i32 10
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %82, %79
  %95 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %96 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %95, i32 0, i32 9
  %97 = call i32 @refcount_set(i32* %96, i32 1)
  %98 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %99 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %98, i32 0, i32 8
  %100 = call i32 @init_waitqueue_head(i32* %99)
  %101 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %102 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %101, i32 0, i32 7
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %105 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %104, i32 0, i32 1
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %108 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %107, i32 0, i32 6
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %111 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %110, i32 0, i32 5
  %112 = call i32 @init_completion(i32* %111)
  %113 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %114 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %113, i32 0, i32 4
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %117 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %116, i32 0, i32 3
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %121 = call i32 @trace_btrfs_ordered_extent_add(%struct.inode* %119, %struct.btrfs_ordered_extent* %120)
  %122 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %20, align 8
  %123 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %122, i32 0, i32 0
  %124 = call i32 @spin_lock_irq(i32* %123)
  %125 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %20, align 8
  %126 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %125, i32 0, i32 1
  %127 = load i8*, i8** %11, align 8
  %128 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %129 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %128, i32 0, i32 2
  %130 = call %struct.rb_node* @tree_insert(i32* %126, i8* %127, i32* %129)
  store %struct.rb_node* %130, %struct.rb_node** %21, align 8
  %131 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  %132 = icmp ne %struct.rb_node* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %94
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = load i32, i32* @EEXIST, align 4
  %136 = sub nsw i32 0, %135
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @ordered_data_tree_panic(%struct.inode* %134, i32 %136, i8* %137)
  br label %139

139:                                              ; preds = %133, %94
  %140 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %20, align 8
  %141 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %144 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %143, i32 0, i32 1
  %145 = call i32 @spin_lock(i32* %144)
  %146 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %22, align 8
  %147 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %146, i32 0, i32 1
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %149 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %148, i32 0, i32 3
  %150 = call i32 @list_add_tail(i32* %147, i32* %149)
  %151 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %152 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %156 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %178

159:                                              ; preds = %139
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %161 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %160, i32 0, i32 0
  %162 = call i32 @spin_lock(i32* %161)
  %163 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %164 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %163, i32 0, i32 2
  %165 = call i32 @list_empty(i32* %164)
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i32 @BUG_ON(i32 %168)
  %170 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %171 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %170, i32 0, i32 2
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %173 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %172, i32 0, i32 1
  %174 = call i32 @list_add_tail(i32* %171, i32* %173)
  %175 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %176 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock(i32* %176)
  br label %178

178:                                              ; preds = %159, %139
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  %180 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %179, i32 0, i32 1
  %181 = call i32 @spin_unlock(i32* %180)
  %182 = load %struct.inode*, %struct.inode** %10, align 8
  %183 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = call i32 @spin_lock(i32* %184)
  %186 = load %struct.inode*, %struct.inode** %10, align 8
  %187 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %186)
  %188 = call i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__* %187, i32 1)
  %189 = load %struct.inode*, %struct.inode** %10, align 8
  %190 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %189)
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = call i32 @spin_unlock(i32* %191)
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %178, %39
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_ordered_extent* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i8*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @trace_btrfs_ordered_extent_add(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.rb_node* @tree_insert(i32*, i8*, i32*) #1

declare dso_local i32 @ordered_data_tree_panic(%struct.inode*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
