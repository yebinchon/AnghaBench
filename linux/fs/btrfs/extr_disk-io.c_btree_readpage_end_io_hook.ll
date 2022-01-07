; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_readpage_end_io_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_readpage_end_io_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_bio = type { i32 }
%struct.page = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.extent_buffer = type { i32, i64, i32, i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@EXTENT_BUFFER_READ_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bad tree block start, want %llu have %llu\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bad fsid on block %llu\00", align 1
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"bad tree block level %d on %llu\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"%s checksum verify failed on %llu wanted %x found %x level %d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@EXTENT_BUFFER_CORRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"block=%llu read time tree block corruption detected\00", align 1
@EXTENT_BUFFER_READAHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_bio*, i64, %struct.page*, i64, i64, i32)* @btree_readpage_end_io_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_readpage_end_io_hook(%struct.btrfs_io_bio* %0, i64 %1, %struct.page* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_io_bio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca %struct.btrfs_root*, align 8
  %17 = alloca %struct.btrfs_fs_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.btrfs_io_bio* %0, %struct.btrfs_io_bio** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_6__* @BTRFS_I(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %31, align 8
  store %struct.btrfs_root* %32, %struct.btrfs_root** %16, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %34, align 8
  store %struct.btrfs_fs_info* %35, %struct.btrfs_fs_info** %17, align 8
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @btrfs_super_csum_size(i32 %38)
  store i32 %39, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %40 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %20, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %21, align 8
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %6
  br label %220

49:                                               ; preds = %6
  %50 = load %struct.page*, %struct.page** %9, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.extent_buffer*
  store %struct.extent_buffer* %53, %struct.extent_buffer** %15, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %55 = call i32 @extent_buffer_get(%struct.extent_buffer* %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %57 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %56, i32 0, i32 2
  %58 = call i32 @atomic_dec_and_test(i32* %57)
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %195

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %65 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @EXTENT_BUFFER_READ_ERR, align 4
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %68 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %67, i32 0, i32 3
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %19, align 4
  br label %195

74:                                               ; preds = %62
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %76 = call i64 @btrfs_header_bytenr(%struct.extent_buffer* %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %79 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %85 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 (%struct.btrfs_fs_info*, i8*, i64, ...) @btrfs_err_rl(%struct.btrfs_fs_info* %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %86, i64 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %19, align 4
  br label %195

91:                                               ; preds = %74
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %93 = call i64 @check_tree_block_fsid(%struct.extent_buffer* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %98 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.btrfs_fs_info*, i8*, i64, ...) @btrfs_err_rl(%struct.btrfs_fs_info* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %19, align 4
  br label %195

103:                                              ; preds = %91
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %105 = call i32 @btrfs_header_level(%struct.extent_buffer* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %112 = call i32 @btrfs_header_level(%struct.extent_buffer* %111)
  %113 = sext i32 %112 to i64
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %115 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (%struct.btrfs_fs_info*, i8*, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %113, i64 %116)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %19, align 4
  br label %195

120:                                              ; preds = %103
  %121 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %122 = call i32 @btrfs_header_owner(%struct.extent_buffer* %121)
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @btrfs_set_buffer_lockdep_class(i32 %122, %struct.extent_buffer* %123, i32 %124)
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %127 = call i32 @csum_tree_block(%struct.extent_buffer* %126, i32* %43)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %195

131:                                              ; preds = %120
  %132 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %132, i32* %43, i32 0, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %131
  store i32 0, i32* %24, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @memcpy(i32* %24, i32* %43, i32 %137)
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @read_extent_buffer(%struct.extent_buffer* %139, i32* %23, i32 0, i32 %140)
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %143 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %144 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %149 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %154 = call i32 @btrfs_header_level(%struct.extent_buffer* %153)
  %155 = call i32 @btrfs_warn_rl(%struct.btrfs_fs_info* %142, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %147, i64 %150, i32 %151, i32 %152, i32 %154)
  %156 = load i32, i32* @EUCLEAN, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %19, align 4
  br label %195

158:                                              ; preds = %131
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %163 = call i64 @btrfs_check_leaf_full(%struct.extent_buffer* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %167 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %168 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %167, i32 0, i32 3
  %169 = call i32 @set_bit(i32 %166, i32* %168)
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %165, %161, %158
  %173 = load i32, i32* %14, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %177 = call i64 @btrfs_check_node(%struct.extent_buffer* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %179, %175, %172
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %187 = call i32 @set_extent_buffer_uptodate(%struct.extent_buffer* %186)
  br label %194

188:                                              ; preds = %182
  %189 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  %190 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %191 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (%struct.btrfs_fs_info*, i8*, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %189, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %188, %185
  br label %195

195:                                              ; preds = %194, %136, %130, %109, %95, %82, %71, %61
  %196 = load i32, i32* %22, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32, i32* @EXTENT_BUFFER_READAHEAD, align 4
  %200 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %201 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %200, i32 0, i32 3
  %202 = call i64 @test_and_clear_bit(i32 %199, i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @btree_readahead_hook(%struct.extent_buffer* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %198, %195
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %213 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %212, i32 0, i32 2
  %214 = call i32 @atomic_inc(i32* %213)
  %215 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %216 = call i32 @clear_extent_buffer_uptodate(%struct.extent_buffer* %215)
  br label %217

217:                                              ; preds = %211, %208
  %218 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %219 = call i32 @free_extent_buffer(%struct.extent_buffer* %218)
  br label %220

220:                                              ; preds = %217, %48
  %221 = load i32, i32* %19, align 4
  %222 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %222)
  ret i32 %221
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @btrfs_super_csum_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @btrfs_header_bytenr(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_err_rl(%struct.btrfs_fs_info*, i8*, i64, ...) #1

declare dso_local i64 @check_tree_block_fsid(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, ...) #1

declare dso_local i32 @btrfs_set_buffer_lockdep_class(i32, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local i32 @csum_tree_block(%struct.extent_buffer*, i32*) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i32, i32) #1

declare dso_local i32 @btrfs_warn_rl(%struct.btrfs_fs_info*, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @btrfs_check_leaf_full(%struct.extent_buffer*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @btrfs_check_node(%struct.extent_buffer*) #1

declare dso_local i32 @set_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @btree_readahead_hook(%struct.extent_buffer*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @clear_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
