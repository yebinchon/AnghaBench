; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_remove_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_remove_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i64, i64, i32 }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_free_space_ctl*, align 8
  %8 = alloca %struct.btrfs_free_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %13, i32 0, i32 0
  %15 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %14, align 8
  store %struct.btrfs_free_space_ctl* %15, %struct.btrfs_free_space_ctl** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  br label %19

19:                                               ; preds = %160, %121, %85, %3
  store i32 0, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %162

23:                                               ; preds = %19
  %24 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %24, i64 %25, i32 0, i32 0)
  store %struct.btrfs_free_space* %26, %struct.btrfs_free_space** %8, align 8
  %27 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %28 = icmp ne %struct.btrfs_free_space* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %31 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl* %31, i64 %32)
  %34 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %30, i64 %33, i32 1, i32 0)
  store %struct.btrfs_free_space* %34, %struct.btrfs_free_space** %8, align 8
  %35 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %36 = icmp ne %struct.btrfs_free_space* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @WARN_ON(i32 %38)
  br label %162

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %23
  store i32 0, i32* %10, align 4
  %42 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %152, label %46

46:                                               ; preds = %41
  %47 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %48 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %49 = call i32 @unlink_free_space(%struct.btrfs_free_space_ctl* %47, %struct.btrfs_free_space* %48)
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @min(i64 %56, i64 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %63 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %68 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %72 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %55
  %76 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %77 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %78 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %76, %struct.btrfs_free_space* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @WARN_ON(i32 %79)
  br label %85

81:                                               ; preds = %55
  %82 = load i32, i32* @btrfs_free_space_cachep, align 4
  %83 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %84 = call i32 @kmem_cache_free(i32 %82, %struct.btrfs_free_space* %83)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %19

92:                                               ; preds = %46
  %93 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %97 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %102 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %106 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %108 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %109 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %107, %struct.btrfs_free_space* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @WARN_ON(i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  br label %162

115:                                              ; preds = %92
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %117, %118
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %5, align 8
  %124 = sub nsw i64 %122, %123
  %125 = load i64, i64* %6, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %12, align 8
  store i64 %127, i64* %5, align 8
  br label %19

128:                                              ; preds = %115
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = add nsw i64 %130, %131
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %162

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %138 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* %6, align 8
  %143 = add nsw i64 %141, %142
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* %6, align 8
  %147 = add nsw i64 %145, %146
  %148 = sub nsw i64 %144, %147
  %149 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %140, i64 %143, i64 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @WARN_ON(i32 %150)
  br label %166

152:                                              ; preds = %41
  %153 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %154 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %155 = call i32 @remove_from_bitmap(%struct.btrfs_free_space_ctl* %153, %struct.btrfs_free_space* %154, i64* %5, i64* %6)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @EAGAIN, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  store i32 1, i32* %10, align 4
  br label %19

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %134, %114, %37, %22
  %163 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %164 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock(i32* %164)
  br label %166

166:                                              ; preds = %162, %136
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl*, i64, i32, i32) #1

declare dso_local i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @unlink_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @link_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @remove_from_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
