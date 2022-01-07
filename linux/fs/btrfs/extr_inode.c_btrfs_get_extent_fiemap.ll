; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_get_extent_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_get_extent_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i64, i64, i64, i64, i64, i32, i32* }
%struct.btrfs_inode = type { i32 }

@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_MAP_DELALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_map* @btrfs_get_extent_fiemap(%struct.btrfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.extent_map*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.extent_map* null, %struct.extent_map** %9, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.extent_map* @btrfs_get_extent(%struct.btrfs_inode* %19, i32* null, i32 0, i64 %20, i64 %21, i32 0)
  store %struct.extent_map* %22, %struct.extent_map** %8, align 8
  %23 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %24 = call i64 @IS_ERR(%struct.extent_map* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %27, %struct.extent_map** %4, align 8
  br label %195

28:                                               ; preds = %3
  %29 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %30 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %36 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %37 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %36, i32 0, i32 5
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %41, %struct.extent_map** %4, align 8
  br label %195

42:                                               ; preds = %34, %28
  %43 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %43, %struct.extent_map** %9, align 8
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i64 -1, i64* %11, align 8
  br label %55

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %52, %51
  store %struct.extent_map* null, %struct.extent_map** %8, align 8
  %56 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @EXTENT_DELALLOC, align 4
  %61 = call i64 @count_range_bits(i32* %57, i64* %10, i64 %58, i64 %59, i32 %60, i32 1)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i64 -1, i64* %13, align 8
  br label %69

69:                                               ; preds = %68, %55
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69
  %78 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  store %struct.extent_map* %78, %struct.extent_map** %8, align 8
  store %struct.extent_map* null, %struct.extent_map** %9, align 8
  br label %183

79:                                               ; preds = %73
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @max(i64 %80, i64 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %180

88:                                               ; preds = %79
  %89 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %90 = call i64 @extent_map_end(%struct.extent_map* %89)
  store i64 %90, i64* %17, align 8
  %91 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %91, %struct.extent_map** %8, align 8
  %92 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %93 = icmp ne %struct.extent_map* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %183

97:                                               ; preds = %88
  %98 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %99 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %98, i32 0, i32 6
  store i32* null, i32** %99, align 8
  %100 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %101 = call i32 @ASSERT(%struct.extent_map* %100)
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %107 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %97
  %112 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %113 = call i32 @free_extent_map(%struct.extent_map* %112)
  store %struct.extent_map* null, %struct.extent_map** %9, align 8
  br label %123

114:                                              ; preds = %105
  %115 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %116 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @max(i64 %117, i64 %118)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %15, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %16, align 8
  br label %123

123:                                              ; preds = %114, %111
  %124 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %125 = icmp ne %struct.extent_map* %124, null
  br i1 %125, label %126, label %163

126:                                              ; preds = %123
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %15, align 8
  %134 = sub nsw i64 %132, %133
  %135 = call i64 @min(i64 %131, i64 %134)
  %136 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %137 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %140 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %143 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %145 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %148 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %151 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %153 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %154 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %153, i32 0, i32 5
  %155 = call i64 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %130
  %158 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %159 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %160 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %159, i32 0, i32 5
  %161 = call i32 @set_bit(i32 %158, i32* %160)
  br label %162

162:                                              ; preds = %157, %130
  br label %179

163:                                              ; preds = %126, %123
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %166 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %169 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %172 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* @EXTENT_MAP_DELALLOC, align 8
  %174 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %175 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %178 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %163, %162
  br label %182

180:                                              ; preds = %79
  %181 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  store %struct.extent_map* %181, %struct.extent_map** %4, align 8
  br label %195

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %94, %77
  %184 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %185 = call i32 @free_extent_map(%struct.extent_map* %184)
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %190 = call i32 @free_extent_map(%struct.extent_map* %189)
  %191 = load i32, i32* %14, align 4
  %192 = call %struct.extent_map* @ERR_PTR(i32 %191)
  store %struct.extent_map* %192, %struct.extent_map** %4, align 8
  br label %195

193:                                              ; preds = %183
  %194 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %194, %struct.extent_map** %4, align 8
  br label %195

195:                                              ; preds = %193, %188, %180, %40, %26
  %196 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  ret %struct.extent_map* %196
}

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.btrfs_inode*, i32*, i32, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @count_range_bits(i32*, i64*, i64, i64, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @ASSERT(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
