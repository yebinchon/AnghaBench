; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_ordered_extent = type { i64, i64, i64, i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_ordered_inode_tree = type { i32 }
%struct.TYPE_5__ = type { %struct.btrfs_ordered_inode_tree, %struct.extent_io_tree }

@PAGE_SIZE = common dso_local global i64 0, align 8
@I_FREEING = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DELALLOC_NEW = common dso_local global i32 0, align 4
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@BTRFS_ORDERED_TRUNCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @btrfs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_io_tree*, align 8
  %9 = alloca %struct.btrfs_ordered_extent*, align 8
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  %17 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i64 @page_offset(%struct.page* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add nsw i64 %25, %26
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %12, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I_FREEING, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @wait_on_page_writeback(%struct.page* %34)
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.extent_io_tree* %38, %struct.extent_io_tree** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call i32 @btrfs_releasepage(%struct.page* %42, i32 %43)
  br label %198

45:                                               ; preds = %3
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @lock_extent_bits(%struct.extent_io_tree* %49, i64 %50, i64 %51, %struct.extent_state** %10)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %154, %53
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %56)
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = sub nsw i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_5__* %57, i64 %58, i64 %62)
  store %struct.btrfs_ordered_extent* %63, %struct.btrfs_ordered_extent** %9, align 8
  %64 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %65 = icmp ne %struct.btrfs_ordered_extent* %64, null
  br i1 %65, label %66, label %156

66:                                               ; preds = %54
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %69 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %72 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = sub nsw i64 %74, 1
  %76 = call i64 @min(i64 %67, i64 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %66
  %80 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* @EXTENT_DELALLOC, align 4
  %84 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @EXTENT_LOCKED, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @EXTENT_DEFRAG, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @clear_extent_bit(%struct.extent_io_tree* %80, i64 %81, i64 %82, i32 %91, i32 1, i32 0, %struct.extent_state** %10)
  br label %93

93:                                               ; preds = %79, %66
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i64 @TestClearPagePrivate2(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.btrfs_ordered_inode_tree* %100, %struct.btrfs_ordered_inode_tree** %16, align 8
  %101 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %16, align 8
  %102 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %101, i32 0, i32 0
  %103 = call i32 @spin_lock_irq(i32* %102)
  %104 = load i32, i32* @BTRFS_ORDERED_TRUNCATED, align 4
  %105 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %106 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %105, i32 0, i32 3
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %110 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %115 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %97
  %119 = load i64, i64* %17, align 8
  %120 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %121 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %97
  %123 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %16, align 8
  %124 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock_irq(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub nsw i64 %128, %129
  %131 = add nsw i64 %130, 1
  %132 = call i64 @btrfs_dec_test_ordered_pending(%struct.inode* %126, %struct.btrfs_ordered_extent** %9, i64 %127, i64 %131, i32 1)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %136 = call i32 @btrfs_finish_ordered_io(%struct.btrfs_ordered_extent* %135)
  br label %137

137:                                              ; preds = %134, %122
  br label %138

138:                                              ; preds = %137, %93
  %139 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %140 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %139)
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %144 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @lock_extent_bits(%struct.extent_io_tree* %144, i64 %145, i64 %146, %struct.extent_state** %10)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %54

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %54
  %157 = load %struct.page*, %struct.page** %4, align 8
  %158 = call i64 @PageDirty(%struct.page* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* @PAGE_SIZE, align 8
  %164 = call i32 @btrfs_qgroup_free_data(%struct.inode* %161, i32* null, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %160, %156
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %165
  %169 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i32, i32* @EXTENT_LOCKED, align 4
  %173 = load i32, i32* @EXTENT_DELALLOC, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @EXTENT_DEFRAG, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @clear_extent_bit(%struct.extent_io_tree* %169, i64 %170, i64 %171, i32 %180, i32 1, i32 1, %struct.extent_state** %10)
  %182 = load %struct.page*, %struct.page** %4, align 8
  %183 = load i32, i32* @GFP_NOFS, align 4
  %184 = call i32 @__btrfs_releasepage(%struct.page* %182, i32 %183)
  br label %185

185:                                              ; preds = %168, %165
  %186 = load %struct.page*, %struct.page** %4, align 8
  %187 = call i32 @ClearPageChecked(%struct.page* %186)
  %188 = load %struct.page*, %struct.page** %4, align 8
  %189 = call i64 @PagePrivate(%struct.page* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.page*, %struct.page** %4, align 8
  %193 = call i32 @ClearPagePrivate(%struct.page* %192)
  %194 = load %struct.page*, %struct.page** %4, align 8
  %195 = call i32 @set_page_private(%struct.page* %194, i32 0)
  %196 = load %struct.page*, %struct.page** %4, align 8
  %197 = call i32 @put_page(%struct.page* %196)
  br label %198

198:                                              ; preds = %41, %191, %185
  ret void
}

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local %struct.TYPE_5__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_releasepage(%struct.page*, i32) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, %struct.extent_state**) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, i32, %struct.extent_state**) #1

declare dso_local i64 @TestClearPagePrivate2(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @btrfs_dec_test_ordered_pending(%struct.inode*, %struct.btrfs_ordered_extent**, i64, i64, i32) #1

declare dso_local i32 @btrfs_finish_ordered_io(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @btrfs_qgroup_free_data(%struct.inode*, i32*, i64, i64) #1

declare dso_local i32 @__btrfs_releasepage(%struct.page*, i32) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
