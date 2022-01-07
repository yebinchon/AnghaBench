; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_trim_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_trim_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i64, i32, i32, i32, i32 }
%struct.btrfs_free_space = type { i64 }
%struct.btrfs_trim_range = type { i32, i64, i64 }

@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i64*, i64, i64, i64)* @trim_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trim_bitmaps(%struct.btrfs_block_group_cache* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_free_space_ctl*, align 8
  %12 = alloca %struct.btrfs_free_space*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_trim_range, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 0
  %21 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %20, align 8
  store %struct.btrfs_free_space_ctl* %21, %struct.btrfs_free_space_ctl** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl* %22, i64 %23)
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %178, %5
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %180

29:                                               ; preds = %25
  store i32 0, i32* %17, align 4
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %31 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %34 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %33, i32 0, i32 4
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %37 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %43 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %42, i32 0, i32 4
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %46 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %180

48:                                               ; preds = %29
  %49 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %50 = load i64, i64* %16, align 8
  %51 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %49, i64 %50, i32 1, i32 0)
  store %struct.btrfs_free_space* %51, %struct.btrfs_free_space** %12, align 8
  %52 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %53 = icmp ne %struct.btrfs_free_space* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %56 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %55, i32 0, i32 4
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %59 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  store i32 1, i32* %17, align 4
  br label %135

61:                                               ; preds = %48
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %15, align 8
  %63 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %64 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %65 = call i32 @search_bitmap(%struct.btrfs_free_space_ctl* %63, %struct.btrfs_free_space* %64, i64* %8, i64* %15, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %61
  %73 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %74 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %73, i32 0, i32 4
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %77 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 1, i32* %17, align 4
  br label %135

79:                                               ; preds = %68
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i64 @min(i64 %80, i64 %83)
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %90 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %89, i32 0, i32 4
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %93 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %135

95:                                               ; preds = %79
  %96 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %97 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %96, %struct.btrfs_free_space* %97, i64 %98, i64 %99)
  %101 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %102 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %107 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %108 = call i32 @free_bitmap(%struct.btrfs_free_space_ctl* %106, %struct.btrfs_free_space* %107)
  br label %109

109:                                              ; preds = %105, %95
  %110 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %111 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %110, i32 0, i32 4
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.btrfs_trim_range, %struct.btrfs_trim_range* %18, i32 0, i32 2
  store i64 %113, i64* %114, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.btrfs_trim_range, %struct.btrfs_trim_range* %18, i32 0, i32 1
  store i64 %115, i64* %116, align 8
  %117 = getelementptr inbounds %struct.btrfs_trim_range, %struct.btrfs_trim_range* %18, i32 0, i32 0
  %118 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %119 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %118, i32 0, i32 3
  %120 = call i32 @list_add_tail(i32* %117, i32* %119)
  %121 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %122 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %121, i32 0, i32 2
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %125 = load i64*, i64** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @do_trimming(%struct.btrfs_block_group_cache* %124, i64* %125, i64 %126, i64 %127, i64 %128, i64 %129, %struct.btrfs_trim_range* %18)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %109
  br label %180

134:                                              ; preds = %109
  br label %135

135:                                              ; preds = %134, %88, %72, %54
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32, i32* @BITS_PER_BITMAP, align 4
  %140 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %141 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %16, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %16, align 8
  br label %171

147:                                              ; preds = %135
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %8, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i32, i32* @BITS_PER_BITMAP, align 4
  %154 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %155 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %152, %158
  %160 = icmp sge i64 %151, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %147
  %162 = load i32, i32* @BITS_PER_BITMAP, align 4
  %163 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %164 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %16, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %16, align 8
  br label %170

170:                                              ; preds = %161, %147
  br label %171

171:                                              ; preds = %170, %138
  %172 = load i32, i32* @current, align 4
  %173 = call i64 @fatal_signal_pending(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* @ERESTARTSYS, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %13, align 4
  br label %180

178:                                              ; preds = %171
  %179 = call i32 (...) @cond_resched()
  br label %25

180:                                              ; preds = %175, %133, %41, %25
  %181 = load i32, i32* %13, align 4
  ret i32 %181
}

declare dso_local i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl*, i64, i32, i32) #1

declare dso_local i32 @search_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64*, i64*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @free_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @do_trimming(%struct.btrfs_block_group_cache*, i64*, i64, i64, i64, i64, %struct.btrfs_trim_range*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
