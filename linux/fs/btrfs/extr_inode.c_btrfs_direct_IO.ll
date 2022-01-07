; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.btrfs_dio_data* }
%struct.btrfs_dio_data = type { i32, i64, i64, i64, i32 }
%struct.kiocb = type { i64, i32, %struct.file* }
%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i64, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.btrfs_fs_info = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@BTRFS_INODE_HAS_ASYNC_EXTENT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@BTRFS_INODE_READDIO_NEED_LOCK = common dso_local global i32 0, align 4
@DIO_LOCKING = common dso_local global i32 0, align 4
@DIO_SKIP_HOLES = common dso_local global i32 0, align 4
@btrfs_get_blocks_direct = common dso_local global i32 0, align 4
@btrfs_submit_direct = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @btrfs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_dio_data, align 8
  %10 = alloca %struct.extent_changeset*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %17 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 2
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %6, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %27)
  store %struct.btrfs_fs_info* %28, %struct.btrfs_fs_info** %8, align 8
  %29 = bitcast %struct.btrfs_dio_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 40, i1 false)
  store %struct.extent_changeset* null, %struct.extent_changeset** %10, align 8
  %30 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @check_direct_IO(%struct.btrfs_fs_info* %33, %struct.iov_iter* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %230

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i32 @inode_dio_begin(%struct.inode* %40)
  %42 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %43 = call i64 @iov_iter_count(%struct.iov_iter* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* @BTRFS_INODE_HAS_ASYNC_EXTENT, align 4
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %44, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = call i32 @filemap_fdatawrite_range(i32 %53, i64 %54, i64 %58)
  br label %60

60:                                               ; preds = %50, %39
  %61 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %62 = call i64 @iov_iter_rw(%struct.iov_iter* %61)
  %63 = load i64, i64* @WRITE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %117

65:                                               ; preds = %60
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ule i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @inode_unlock(%struct.inode* %75)
  store i32 1, i32* %15, align 4
  br label %88

77:                                               ; preds = %65
  %78 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %79 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IOCB_NOWAIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %214

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %89, %struct.extent_changeset** %10, i64 %90, i64 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %214

96:                                               ; preds = %88
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @round_up(i64 %97, i32 %100)
  %102 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 1
  store i64 %101, i64* %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = ptrtoint i8* %104 to i64
  %106 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 2
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 3
  store i64 %109, i64* %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store %struct.btrfs_dio_data* %9, %struct.btrfs_dio_data** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = call i32 @down_read(i32* %115)
  br label %131

117:                                              ; preds = %60
  %118 = load i32, i32* @BTRFS_INODE_READDIO_NEED_LOCK, align 4
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = call i64 @test_bit(i32 %118, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = call i32 @inode_dio_end(%struct.inode* %125)
  %127 = load i32, i32* @DIO_LOCKING, align 4
  %128 = load i32, i32* @DIO_SKIP_HOLES, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %124, %117
  br label %131

131:                                              ; preds = %130, %96
  %132 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %135 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %140 = load i32, i32* @btrfs_get_blocks_direct, align 4
  %141 = load i32, i32* @btrfs_submit_direct, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @__blockdev_direct_IO(%struct.kiocb* %132, %struct.inode* %133, i32 %138, %struct.iov_iter* %139, i32 %140, i32* null, i32 %141, i32 %142)
  store i32 %143, i32* %16, align 4
  %144 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %145 = call i64 @iov_iter_rw(%struct.iov_iter* %144)
  %146 = load i64, i64* @WRITE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %213

148:                                              ; preds = %131
  %149 = load %struct.inode*, %struct.inode** %7, align 8
  %150 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %149)
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = call i32 @up_read(i32* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store %struct.btrfs_dio_data* null, %struct.btrfs_dio_data** %154, align 8
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %148
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* @EIOCBQUEUED, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @btrfs_delalloc_release_space(%struct.inode* %167, %struct.extent_changeset* %168, i64 %169, i64 %171, i32 1)
  br label %173

173:                                              ; preds = %166, %162
  %174 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load %struct.inode*, %struct.inode** %7, align 8
  %181 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.btrfs_dio_data, %struct.btrfs_dio_data* %9, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %184, %186
  %188 = call i32 @__endio_write_update_ordered(%struct.inode* %180, i64 %182, i64 %187, i32 0)
  br label %189

189:                                              ; preds = %179, %173
  br label %208

190:                                              ; preds = %157, %148
  %191 = load i32, i32* %16, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %12, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %12, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 %202, %204
  %206 = call i32 @btrfs_delalloc_release_space(%struct.inode* %199, %struct.extent_changeset* %200, i64 %201, i64 %205, i32 1)
  br label %207

207:                                              ; preds = %198, %193, %190
  br label %208

208:                                              ; preds = %207, %189
  %209 = load %struct.inode*, %struct.inode** %7, align 8
  %210 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %209)
  %211 = load i64, i64* %12, align 8
  %212 = call i32 @btrfs_delalloc_release_extents(%struct.TYPE_9__* %210, i64 %211)
  br label %213

213:                                              ; preds = %208, %131
  br label %214

214:                                              ; preds = %213, %95, %84
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.inode*, %struct.inode** %7, align 8
  %219 = call i32 @inode_dio_end(%struct.inode* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.inode*, %struct.inode** %7, align 8
  %225 = call i32 @inode_lock(%struct.inode* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %228 = call i32 @extent_changeset_free(%struct.extent_changeset* %227)
  %229 = load i32, i32* %16, align 4
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %226, %38
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @check_direct_IO(%struct.btrfs_fs_info*, %struct.iov_iter*, i64) #1

declare dso_local i32 @inode_dio_begin(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i64, i64) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, %struct.extent_changeset**, i64, i64) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @inode_dio_end(%struct.inode*) #1

declare dso_local i32 @__blockdev_direct_IO(%struct.kiocb*, %struct.inode*, i32, %struct.iov_iter*, i32, i32*, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @btrfs_delalloc_release_space(%struct.inode*, %struct.extent_changeset*, i64, i64, i32) #1

declare dso_local i32 @__endio_write_update_ordered(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @btrfs_delalloc_release_extents(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @extent_changeset_free(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
