; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_start_machine_dev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_start_machine_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32, i32, i32, %struct.TYPE_3__*, %struct.btrfs_fs_info* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.reada_extent = type { i32, i32, i32, %struct.TYPE_4__**, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.btrfs_device* }
%struct.extent_buffer = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_device*)* @reada_start_machine_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_start_machine_dev(%struct.btrfs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_device*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.reada_extent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_device* %0, %struct.btrfs_device** %3, align 8
  %11 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %11, i32 0, i32 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %4, align 8
  store %struct.reada_extent* null, %struct.reada_extent** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %7, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %23 = call i32 @reada_pick_zone(%struct.btrfs_device* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 0, i32* %2, align 4
  br label %187

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %32, i32 0, i32 2
  %34 = bitcast %struct.reada_extent** %5 to i8**
  %35 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = call i32 @radix_tree_gang_lookup(i32* %33, i8** %34, i32 %39, i32 1)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %31
  %44 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %45 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %46, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %43, %31
  %54 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %55 = call i32 @reada_pick_zone(%struct.btrfs_device* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  store i32 0, i32* %2, align 4
  br label %187

62:                                               ; preds = %53
  store %struct.reada_extent* null, %struct.reada_extent** %5, align 8
  %63 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %63, i32 0, i32 2
  %65 = bitcast %struct.reada_extent** %5 to i8**
  %66 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %67 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = call i32 @radix_tree_gang_lookup(i32* %64, i8** %65, i32 %70, i32 1)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %62, %43
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  store i32 0, i32* %2, align 4
  br label %187

79:                                               ; preds = %72
  %80 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %81 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %88 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %90 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %94 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %93, i32 0, i32 1
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %97 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %96, i32 0, i32 4
  %98 = call i32 @spin_lock(i32* %97)
  %99 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %100 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %79
  %104 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %105 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %104, i32 0, i32 5
  %106 = call i64 @list_empty(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103, %79
  %109 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %110 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %109, i32 0, i32 4
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %113 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %114 = call i32 @reada_extent_put(%struct.btrfs_fs_info* %112, %struct.reada_extent* %113)
  store i32 0, i32* %2, align 4
  br label %187

115:                                              ; preds = %103
  %116 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %117 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %119 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %118, i32 0, i32 4
  %120 = call i32 @spin_unlock(i32* %119)
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %143, %115
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %124 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %129 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.btrfs_device*, %struct.btrfs_device** %135, align 8
  %137 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %138 = icmp eq %struct.btrfs_device* %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %146

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %121

146:                                              ; preds = %139, %121
  %147 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %148 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %8, align 4
  %150 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %151 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %150, i32 0, i32 1
  %152 = call i32 @atomic_inc(i32* %151)
  %153 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @reada_tree_block_flagged(%struct.btrfs_fs_info* %153, i32 %154, i32 %155, %struct.extent_buffer** %7)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %146
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %161 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @__readahead_hook(%struct.btrfs_fs_info* %160, %struct.reada_extent* %161, %struct.extent_buffer* null, i32 %162)
  br label %174

164:                                              ; preds = %146
  %165 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %166 = icmp ne %struct.extent_buffer* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %169 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %170 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @__readahead_hook(%struct.btrfs_fs_info* %168, %struct.reada_extent* %169, %struct.extent_buffer* %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173, %159
  %175 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %176 = icmp ne %struct.extent_buffer* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %179 = call i32 @free_extent_buffer(%struct.extent_buffer* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %182 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %181, i32 0, i32 1
  %183 = call i32 @atomic_dec(i32* %182)
  %184 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %185 = load %struct.reada_extent*, %struct.reada_extent** %5, align 8
  %186 = call i32 @reada_extent_put(%struct.btrfs_fs_info* %184, %struct.reada_extent* %185)
  store i32 1, i32* %2, align 4
  br label %187

187:                                              ; preds = %180, %108, %75, %58, %26
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reada_pick_zone(%struct.btrfs_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup(i32*, i8**, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @reada_extent_put(%struct.btrfs_fs_info*, %struct.reada_extent*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reada_tree_block_flagged(%struct.btrfs_fs_info*, i32, i32, %struct.extent_buffer**) #1

declare dso_local i32 @__readahead_hook(%struct.btrfs_fs_info*, %struct.reada_extent*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
