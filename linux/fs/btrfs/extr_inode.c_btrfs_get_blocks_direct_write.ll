; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_get_blocks_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_get_blocks_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.btrfs_dio_data* }
%struct.btrfs_dio_data = type { i64, i64, i32 }
%struct.extent_map = type { i64, i64, i32, i32, i64 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.inode = type { i64, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@BTRFS_ORDERED_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_ORDERED_NOCOW = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_map**, %struct.buffer_head*, %struct.inode*, %struct.btrfs_dio_data*, i64, i64)* @btrfs_get_blocks_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_get_blocks_direct_write(%struct.extent_map** %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.btrfs_dio_data* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.extent_map**, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_dio_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.btrfs_fs_info*, align 8
  %14 = alloca %struct.extent_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.extent_map*, align 8
  store %struct.extent_map** %0, %struct.extent_map*** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.btrfs_dio_data* %3, %struct.btrfs_dio_data** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %24)
  store %struct.btrfs_fs_info* %25, %struct.btrfs_fs_info** %13, align 8
  %26 = load %struct.extent_map**, %struct.extent_map*** %7, align 8
  %27 = load %struct.extent_map*, %struct.extent_map** %26, align 8
  store %struct.extent_map* %27, %struct.extent_map** %14, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %29 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %30 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %6
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %125

41:                                               ; preds = %33
  %42 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %43 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %125

47:                                               ; preds = %41, %6
  %48 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %49 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %50 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %49, i32 0, i32 2
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  store i32 %54, i32* %16, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @BTRFS_ORDERED_NOCOW, align 4
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %60 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %64 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = sub nsw i64 %61, %66
  %68 = call i64 @min(i64 %58, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %70 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %74 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = add nsw i64 %71, %76
  store i64 %77, i64* %17, align 8
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @can_nocow_extent(%struct.inode* %78, i64 %79, i64* %12, i64* %18, i64* %19, i64* %20)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %124

82:                                               ; preds = %57
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i64 @btrfs_inc_nocow_writers(%struct.btrfs_fs_info* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %82
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call %struct.extent_map* @btrfs_create_dio_extent(%struct.inode* %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i32 %96)
  store %struct.extent_map* %97, %struct.extent_map** %21, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @btrfs_dec_nocow_writers(%struct.btrfs_fs_info* %98, i64 %99)
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %87
  %105 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %106 = call i32 @free_extent_map(%struct.extent_map* %105)
  %107 = load %struct.extent_map*, %struct.extent_map** %21, align 8
  store %struct.extent_map* %107, %struct.extent_map** %14, align 8
  %108 = load %struct.extent_map**, %struct.extent_map*** %7, align 8
  store %struct.extent_map* %107, %struct.extent_map** %108, align 8
  br label %109

109:                                              ; preds = %104, %87
  %110 = load %struct.extent_map*, %struct.extent_map** %21, align 8
  %111 = icmp ne %struct.extent_map* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.extent_map*, %struct.extent_map** %21, align 8
  %114 = call i64 @IS_ERR(%struct.extent_map* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.extent_map*, %struct.extent_map** %21, align 8
  %118 = call i32 @PTR_ERR(%struct.extent_map* %117)
  store i32 %118, i32* %15, align 4
  br label %227

119:                                              ; preds = %112, %109
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @btrfs_free_reserved_data_space_noquota(%struct.inode* %120, i64 %121, i64 %122)
  br label %154

124:                                              ; preds = %82, %57
  br label %125

125:                                              ; preds = %124, %41, %33
  %126 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %12, align 8
  %129 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %130 = call i32 @free_extent_map(%struct.extent_map* %129)
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call %struct.extent_map* @btrfs_new_extent_direct(%struct.inode* %131, i64 %132, i64 %133)
  store %struct.extent_map* %134, %struct.extent_map** %14, align 8
  %135 = load %struct.extent_map**, %struct.extent_map*** %7, align 8
  store %struct.extent_map* %134, %struct.extent_map** %135, align 8
  %136 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %137 = call i64 @IS_ERR(%struct.extent_map* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %141 = call i32 @PTR_ERR(%struct.extent_map* %140)
  store i32 %141, i32* %15, align 4
  br label %227

142:                                              ; preds = %125
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %145 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %149 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = sub nsw i64 %146, %151
  %153 = call i64 @min(i64 %143, i64 %152)
  store i64 %153, i64* %12, align 8
  br label %154

154:                                              ; preds = %142, %119
  %155 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %156 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %160 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %158, %161
  %163 = add nsw i64 %157, %162
  %164 = load %struct.inode*, %struct.inode** %9, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = ashr i64 %163, %166
  %168 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %174 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %177 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %179 = call i32 @set_buffer_mapped(%struct.buffer_head* %178)
  %180 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %181 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %182 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %181, i32 0, i32 2
  %183 = call i64 @test_bit(i32 %180, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %154
  %186 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %187 = call i32 @set_buffer_new(%struct.buffer_head* %186)
  br label %188

188:                                              ; preds = %185, %154
  %189 = load %struct.btrfs_dio_data*, %struct.btrfs_dio_data** %10, align 8
  %190 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %188
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* %12, align 8
  %196 = add nsw i64 %194, %195
  %197 = load %struct.inode*, %struct.inode** %9, align 8
  %198 = call i64 @i_size_read(%struct.inode* %197)
  %199 = icmp sgt i64 %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load i64, i64* %12, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @i_size_write(%struct.inode* %201, i64 %204)
  br label %206

206:                                              ; preds = %200, %193, %188
  %207 = load %struct.btrfs_dio_data*, %struct.btrfs_dio_data** %10, align 8
  %208 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %12, align 8
  %211 = icmp slt i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @WARN_ON(i32 %212)
  %214 = load i64, i64* %12, align 8
  %215 = load %struct.btrfs_dio_data*, %struct.btrfs_dio_data** %10, align 8
  %216 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %217, %214
  store i64 %218, i64* %216, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* %12, align 8
  %221 = add nsw i64 %219, %220
  %222 = load %struct.btrfs_dio_data*, %struct.btrfs_dio_data** %10, align 8
  %223 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.btrfs_dio_data*, %struct.btrfs_dio_data** %10, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store %struct.btrfs_dio_data* %224, %struct.btrfs_dio_data** %226, align 8
  br label %227

227:                                              ; preds = %206, %139, %116
  %228 = load i32, i32* %15, align 4
  ret i32 %228
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @can_nocow_extent(%struct.inode*, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @btrfs_inc_nocow_writers(%struct.btrfs_fs_info*, i64) #1

declare dso_local %struct.extent_map* @btrfs_create_dio_extent(%struct.inode*, i64, i64, i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @btrfs_dec_nocow_writers(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_map*) #1

declare dso_local i32 @btrfs_free_reserved_data_space_noquota(%struct.inode*, i64, i64) #1

declare dso_local %struct.extent_map* @btrfs_new_extent_direct(%struct.inode*, i64, i64) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
