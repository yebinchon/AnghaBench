; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_file.c_bfs_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_file.c_bfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_sb_info = type { i64, i64, i32, i32 }
%struct.bfs_inode_info = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"c=%d, b=%08lx, phys=%09lx (granted)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"c=%d, b=%08lx, phys=%08lx (interim block granted)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"c=%d, b=%08lx, phys=%08lx (simple extension)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to move ino=%08lx -> fs corruption\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"c=%d, b=%08lx, phys=%08lx (moved)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @bfs_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.bfs_sb_info*, align 8
  %14 = alloca %struct.bfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.super_block*, %struct.super_block** %12, align 8
  %19 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %18)
  store %struct.bfs_sb_info* %19, %struct.bfs_sb_info** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.bfs_inode_info* @BFS_I(%struct.inode* %20)
  store %struct.bfs_inode_info* %21, %struct.bfs_inode_info** %14, align 8
  %22 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %23 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %32 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ule i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i64 %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = load %struct.super_block*, %struct.super_block** %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @map_bh(%struct.buffer_head* %40, %struct.super_block* %41, i64 %42)
  br label %44

44:                                               ; preds = %35, %29
  store i32 0, i32* %5, align 4
  br label %198

45:                                               ; preds = %4
  %46 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %47 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %53 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58, i64 %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = load %struct.super_block*, %struct.super_block** %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @map_bh(%struct.buffer_head* %61, %struct.super_block* %62, i64 %63)
  store i32 0, i32* %5, align 4
  br label %198

65:                                               ; preds = %50, %45
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %68 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %198

74:                                               ; preds = %65
  %75 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %76 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %75, i32 0, i32 2
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %79 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %82 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %86, i64 %87, i64 %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %91 = load %struct.super_block*, %struct.super_block** %12, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @map_bh(%struct.buffer_head* %90, %struct.super_block* %91, i64 %92)
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %96 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %100 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %107 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %109 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = call i32 @mark_inode_dirty(%struct.inode* %110)
  store i32 0, i32* %11, align 4
  br label %193

112:                                              ; preds = %74
  %113 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %114 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %121 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp uge i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  br label %193

127:                                              ; preds = %112
  %128 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %129 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  %135 = load %struct.super_block*, %struct.super_block** %134, align 8
  %136 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %137 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %140 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @bfs_move_blocks(%struct.super_block* %135, i64 %138, i64 %141, i64 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %193

151:                                              ; preds = %132
  br label %153

152:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i32, i32* %9, align 4
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %160 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %166 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %168 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %167, i32 0, i32 1
  store i64 %164, i64* %168, align 8
  %169 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %170 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %14, align 8
  %173 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub i64 %171, %174
  %176 = add i64 %175, 1
  %177 = load %struct.inode*, %struct.inode** %6, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub i64 %176, %179
  %181 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %182 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = sub i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.inode*, %struct.inode** %6, align 8
  %188 = call i32 @mark_inode_dirty(%struct.inode* %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = load %struct.super_block*, %struct.super_block** %12, align 8
  %191 = load i64, i64* %10, align 8
  %192 = call i32 @map_bh(%struct.buffer_head* %189, %struct.super_block* %190, i64 %191)
  br label %193

193:                                              ; preds = %153, %146, %124, %85
  %194 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %195 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %194, i32 0, i32 2
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %193, %71, %56, %44
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.bfs_inode_info* @BFS_I(%struct.inode*) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @bfs_move_blocks(%struct.super_block*, i64, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
