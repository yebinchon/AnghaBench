; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_workqueues.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_workqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.btrfs_fs_devices = type { i32 }

@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"delalloc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flush_delalloc\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@u64 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"fixup\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"endio\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"endio-meta\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"endio-meta-write\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"endio-raid56\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"endio-repair\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rmw\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"endio-write\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"freespace-write\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"delayed-meta\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"readahead\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"qgroup-rescan\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_fs_devices*)* @btrfs_init_workqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_init_workqueues(%struct.btrfs_fs_info* %0, %struct.btrfs_fs_devices* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_fs_devices*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_fs_devices* %1, %struct.btrfs_fs_devices** %5, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %12 = load i32, i32* @WQ_FREEZABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WQ_UNBOUND, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WQ_HIGHPRI, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 16)
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 17
  store i8* %21, i8** %23, align 8
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 2)
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 16
  store i8* %27, i8** %29, align 8
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32, i32 0)
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 0)
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @u64, align 4
  %45 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @min_t(i32 %44, i32 %47, i32 %48)
  %50 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %49, i32 64)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 15
  store i8* %50, i8** %52, align 8
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %54, i32 1, i32 0)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %59, i32 %60, i32 4)
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %63 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %66, i32 4)
  %68 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %69 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %68, i32 0, i32 12
  store i8* %67, i8** %69, align 8
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %71, i32 %72, i32 2)
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %75 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %77, i32 %78, i32 4)
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %83, i32 1, i32 0)
  %85 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %86 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %88, i32 %89, i32 2)
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %92 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %94, i32 %95, i32 2)
  %97 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %98 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %100, i32 %101, i32 0)
  %103 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %104 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %106, i32 %107, i32 0)
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %110 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %112, i32 %113, i32 2)
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %116 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %118, i32 1, i32 0)
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %121 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %123 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %122, i32 0, i32 17
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %206

126:                                              ; preds = %2
  %127 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %128 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %127, i32 0, i32 16
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %206

131:                                              ; preds = %126
  %132 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %133 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %132, i32 0, i32 15
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %206

136:                                              ; preds = %131
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %138 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %137, i32 0, i32 14
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %206

141:                                              ; preds = %136
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %143 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %142, i32 0, i32 13
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %206

146:                                              ; preds = %141
  %147 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %148 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %147, i32 0, i32 12
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %206

151:                                              ; preds = %146
  %152 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %153 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %152, i32 0, i32 11
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %206

156:                                              ; preds = %151
  %157 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %158 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %157, i32 0, i32 10
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %206

161:                                              ; preds = %156
  %162 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %163 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %162, i32 0, i32 9
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %206

166:                                              ; preds = %161
  %167 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %168 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %167, i32 0, i32 8
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %206

171:                                              ; preds = %166
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %173 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %172, i32 0, i32 7
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %206

176:                                              ; preds = %171
  %177 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %178 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %177, i32 0, i32 6
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %206

181:                                              ; preds = %176
  %182 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %183 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %206

186:                                              ; preds = %181
  %187 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %188 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  %192 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %193 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %198 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %203 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %201, %196, %191, %186, %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %2
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %210

209:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i8* @btrfs_alloc_workqueue(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
