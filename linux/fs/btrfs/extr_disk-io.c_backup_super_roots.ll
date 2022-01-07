; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_backup_super_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_backup_super_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { %struct.btrfs_root_backup* }
%struct.btrfs_root_backup = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@BTRFS_NUM_BACKUP_ROOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @backup_super_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backup_super_roots(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root_backup*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %11 = add nsw i32 %9, %10
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.btrfs_root_backup, %struct.btrfs_root_backup* %19, i64 %21
  store %struct.btrfs_root_backup* %22, %struct.btrfs_root_backup** %4, align 8
  %23 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %24 = call i64 @btrfs_backup_tree_root_gen(%struct.btrfs_root_backup* %23)
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %29)
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.btrfs_root_backup, %struct.btrfs_root_backup* %39, i64 %41
  store %struct.btrfs_root_backup* %42, %struct.btrfs_root_backup** %4, align 8
  %43 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %44 = call i32 @memset(%struct.btrfs_root_backup* %43, i32 0, i32 4)
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %48 = srem i32 %46, %47
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @btrfs_set_backup_tree_root(%struct.btrfs_root_backup* %51, i32 %58)
  %60 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %61 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %62 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %61, i32 0, i32 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %65)
  %67 = call i32 @btrfs_set_backup_tree_root_gen(%struct.btrfs_root_backup* %60, i64 %66)
  %68 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %70 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %69, i32 0, i32 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = call i32 @btrfs_header_level(%struct.TYPE_13__* %73)
  %75 = call i32 @btrfs_set_backup_tree_root_level(%struct.btrfs_root_backup* %68, i32 %74)
  %76 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %78 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %77, i32 0, i32 7
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @btrfs_set_backup_chunk_root(%struct.btrfs_root_backup* %76, i32 %83)
  %85 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 7
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %90)
  %92 = call i32 @btrfs_set_backup_chunk_root_gen(%struct.btrfs_root_backup* %85, i64 %91)
  %93 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 7
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = call i32 @btrfs_header_level(%struct.TYPE_13__* %98)
  %100 = call i32 @btrfs_set_backup_chunk_root_level(%struct.btrfs_root_backup* %93, i32 %99)
  %101 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %103 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %102, i32 0, i32 6
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @btrfs_set_backup_extent_root(%struct.btrfs_root_backup* %101, i32 %108)
  %110 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %111 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %112 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %111, i32 0, i32 6
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %115)
  %117 = call i32 @btrfs_set_backup_extent_root_gen(%struct.btrfs_root_backup* %110, i64 %116)
  %118 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 6
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = call i32 @btrfs_header_level(%struct.TYPE_13__* %123)
  %125 = call i32 @btrfs_set_backup_extent_root_level(%struct.btrfs_root_backup* %118, i32 %124)
  %126 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %127 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %126, i32 0, i32 5
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = icmp ne %struct.TYPE_17__* %128, null
  br i1 %129, label %130, label %163

130:                                              ; preds = %34
  %131 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %132 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %131, i32 0, i32 5
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = icmp ne %struct.TYPE_13__* %135, null
  br i1 %136, label %137, label %163

137:                                              ; preds = %130
  %138 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %139 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %140 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %139, i32 0, i32 5
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @btrfs_set_backup_fs_root(%struct.btrfs_root_backup* %138, i32 %145)
  %147 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %148 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %149 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %148, i32 0, i32 5
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %152)
  %154 = call i32 @btrfs_set_backup_fs_root_gen(%struct.btrfs_root_backup* %147, i64 %153)
  %155 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %156 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %157 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %156, i32 0, i32 5
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = call i32 @btrfs_header_level(%struct.TYPE_13__* %160)
  %162 = call i32 @btrfs_set_backup_fs_root_level(%struct.btrfs_root_backup* %155, i32 %161)
  br label %163

163:                                              ; preds = %137, %130, %34
  %164 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %165 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %166 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %165, i32 0, i32 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @btrfs_set_backup_dev_root(%struct.btrfs_root_backup* %164, i32 %171)
  %173 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %174 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %175 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %174, i32 0, i32 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %178)
  %180 = call i32 @btrfs_set_backup_dev_root_gen(%struct.btrfs_root_backup* %173, i64 %179)
  %181 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %182 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %183 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %182, i32 0, i32 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = call i32 @btrfs_header_level(%struct.TYPE_13__* %186)
  %188 = call i32 @btrfs_set_backup_dev_root_level(%struct.btrfs_root_backup* %181, i32 %187)
  %189 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %190 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %191 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %190, i32 0, i32 3
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @btrfs_set_backup_csum_root(%struct.btrfs_root_backup* %189, i32 %196)
  %198 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %199 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %200 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %199, i32 0, i32 3
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = call i64 @btrfs_header_generation(%struct.TYPE_13__* %203)
  %205 = call i32 @btrfs_set_backup_csum_root_gen(%struct.btrfs_root_backup* %198, i64 %204)
  %206 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %207 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %208 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %207, i32 0, i32 3
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = call i32 @btrfs_header_level(%struct.TYPE_13__* %211)
  %213 = call i32 @btrfs_set_backup_csum_root_level(%struct.btrfs_root_backup* %206, i32 %212)
  %214 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %215 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %216 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %215, i32 0, i32 2
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = call i32 @btrfs_super_total_bytes(%struct.TYPE_21__* %217)
  %219 = call i32 @btrfs_set_backup_total_bytes(%struct.btrfs_root_backup* %214, i32 %218)
  %220 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %221 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %222 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %221, i32 0, i32 2
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = call i32 @btrfs_super_bytes_used(%struct.TYPE_21__* %223)
  %225 = call i32 @btrfs_set_backup_bytes_used(%struct.btrfs_root_backup* %220, i32 %224)
  %226 = load %struct.btrfs_root_backup*, %struct.btrfs_root_backup** %4, align 8
  %227 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %228 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %227, i32 0, i32 2
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = call i32 @btrfs_super_num_devices(%struct.TYPE_21__* %229)
  %231 = call i32 @btrfs_set_backup_num_devices(%struct.btrfs_root_backup* %226, i32 %230)
  %232 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %233 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %232, i32 0, i32 2
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 0
  %236 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %237 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %236, i32 0, i32 1
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* @BTRFS_NUM_BACKUP_ROOTS, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 4, %241
  %243 = trunc i64 %242 to i32
  %244 = call i32 @memcpy(i32* %235, %struct.btrfs_root_backup** %239, i32 %243)
  ret void
}

declare dso_local i64 @btrfs_backup_tree_root_gen(%struct.btrfs_root_backup*) #1

declare dso_local i64 @btrfs_header_generation(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.btrfs_root_backup*, i32, i32) #1

declare dso_local i32 @btrfs_set_backup_tree_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_tree_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_tree_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.TYPE_13__*) #1

declare dso_local i32 @btrfs_set_backup_chunk_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_chunk_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_chunk_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_extent_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_extent_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_extent_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_fs_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_fs_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_fs_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_dev_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_dev_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_dev_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_csum_root(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_csum_root_gen(%struct.btrfs_root_backup*, i64) #1

declare dso_local i32 @btrfs_set_backup_csum_root_level(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_set_backup_total_bytes(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_super_total_bytes(%struct.TYPE_21__*) #1

declare dso_local i32 @btrfs_set_backup_bytes_used(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_super_bytes_used(%struct.TYPE_21__*) #1

declare dso_local i32 @btrfs_set_backup_num_devices(%struct.btrfs_root_backup*, i32) #1

declare dso_local i32 @btrfs_super_num_devices(%struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_root_backup**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
