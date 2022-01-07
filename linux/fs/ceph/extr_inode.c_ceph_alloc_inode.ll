; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ceph_inode_info = type { %struct.inode, i64, i32, i64, i32, i32, i32, i32*, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64*, i64, i32*, i32, i32, i64, i64, i32, i32, i32*, i32, i32, i64, i64, i32*, i8*, %struct.TYPE_4__, i32, i8*, %struct.TYPE_3__, i32, i64, i64, i32*, i32*, i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, i8*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@ceph_inode_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"alloc_inode %p\0A\00", align 1
@RB_ROOT = common dso_local global i8* null, align 8
@CEPH_FILE_MODE_BITS = common dso_local global i32 0, align 4
@ceph_inode_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ceph_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @ceph_inode_cachep, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.ceph_inode_info* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.ceph_inode_info* %8, %struct.ceph_inode_info** %4, align 8
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %10 = icmp ne %struct.ceph_inode_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %216

12:                                               ; preds = %1
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 0
  %15 = call i32 @dout(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.inode* %14)
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 61
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %19, i32 0, i32 60
  store i64 0, i64* %20, align 8
  %21 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %21, i32 0, i32 59
  store i64 0, i64* %22, align 8
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 58
  store i64 0, i64* %24, align 8
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 57
  store i64 0, i64* %26, align 8
  %27 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %27, i32 0, i32 56
  %29 = call i32 @atomic64_set(i32* %28, i32 1)
  %30 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %30, i32 0, i32 55
  %32 = call i32 @atomic64_set(i32* %31, i32 1)
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 54
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @atomic64_set(i32* %36, i32 0)
  %38 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %38, i32 0, i32 54
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @atomic64_set(i32* %41, i32 0)
  %43 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %43, i32 0, i32 53
  store i32* null, i32** %44, align 8
  %45 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %45, i32 0, i32 52
  store i64 0, i64* %46, align 8
  %47 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %47, i32 0, i32 51
  store i64 0, i64* %48, align 8
  %49 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %49, i32 0, i32 50
  %51 = call i32 @memset(i32* %50, i8 signext 0, i32 4)
  %52 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %52, i32 0, i32 49
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @RCU_INIT_POINTER(i32 %55, i32* null)
  %57 = load i8*, i8** @RB_ROOT, align 8
  %58 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %59 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %58, i32 0, i32 48
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %61 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %60, i32 0, i32 47
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %63, i32 0, i32 46
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 8
  store i32* null, i32** %65, align 8
  %66 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %67 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %66, i32 0, i32 46
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %70 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %69, i32 0, i32 46
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i8*, i8** @RB_ROOT, align 8
  %73 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %73, i32 0, i32 46
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  store i8* %72, i8** %75, align 8
  %76 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %77 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %76, i32 0, i32 46
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %79, i32 0, i32 46
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %83 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %82, i32 0, i32 46
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %86 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %85, i32 0, i32 46
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %89 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %88, i32 0, i32 46
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i8*, i8** @RB_ROOT, align 8
  %92 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %93 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %92, i32 0, i32 45
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %95 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %94, i32 0, i32 44
  store i32* null, i32** %95, align 8
  %96 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %97 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %96, i32 0, i32 43
  store i64 0, i64* %97, align 8
  %98 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %99 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %98, i32 0, i32 42
  store i64 0, i64* %99, align 8
  %100 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %101 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %100, i32 0, i32 41
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %104 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %103, i32 0, i32 40
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %107 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %106, i32 0, i32 39
  store i32* null, i32** %107, align 8
  %108 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %109 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %108, i32 0, i32 38
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %112 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %111, i32 0, i32 37
  %113 = call i32 @init_waitqueue_head(i32* %112)
  %114 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %115 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %114, i32 0, i32 36
  store i64 0, i64* %115, align 8
  %116 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %117 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %116, i32 0, i32 35
  store i64 0, i64* %117, align 8
  %118 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %119 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %118, i32 0, i32 34
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %122 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %121, i32 0, i32 33
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %125 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %124, i32 0, i32 32
  store i32* null, i32** %125, align 8
  %126 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %127 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %126, i32 0, i32 31
  store i64 0, i64* %127, align 8
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %139, %12
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @CEPH_FILE_MODE_BITS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %134 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %133, i32 0, i32 30
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %128

142:                                              ; preds = %128
  %143 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %144 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %143, i32 0, i32 29
  %145 = call i32 @mutex_init(i32* %144)
  %146 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %147 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %146, i32 0, i32 28
  store i64 0, i64* %147, align 8
  %148 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %149 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %148, i32 0, i32 27
  store i64 0, i64* %149, align 8
  %150 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %151 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %150, i32 0, i32 26
  store i64 0, i64* %151, align 8
  %152 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %153 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %152, i32 0, i32 25
  store i64 0, i64* %153, align 8
  %154 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %155 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %154, i32 0, i32 24
  store i64 0, i64* %155, align 8
  %156 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %157 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %156, i32 0, i32 23
  store i64 0, i64* %157, align 8
  %158 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %159 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %158, i32 0, i32 22
  store i64 0, i64* %159, align 8
  %160 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %161 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %160, i32 0, i32 21
  store i64 0, i64* %161, align 8
  %162 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %163 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %162, i32 0, i32 20
  store i64 0, i64* %163, align 8
  %164 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %165 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %164, i32 0, i32 19
  store i64 0, i64* %165, align 8
  %166 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %167 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %166, i32 0, i32 18
  store i64 0, i64* %167, align 8
  %168 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %169 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %168, i32 0, i32 17
  store i64 0, i64* %169, align 8
  %170 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %171 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %170, i32 0, i32 16
  store i64 0, i64* %171, align 8
  %172 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %173 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %172, i32 0, i32 15
  store i64 0, i64* %173, align 8
  %174 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %175 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %174, i32 0, i32 14
  %176 = call i32 @atomic_set(i32* %175, i32 0)
  %177 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %178 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %177, i32 0, i32 13
  %179 = call i32 @atomic_set(i32* %178, i32 1)
  %180 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %181 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %180, i32 0, i32 12
  store i64 0, i64* %181, align 8
  %182 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %183 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %182, i32 0, i32 11
  store i64 0, i64* %183, align 8
  %184 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %185 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %184, i32 0, i32 10
  %186 = call i32 @INIT_LIST_HEAD(i32* %185)
  %187 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %188 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %187, i32 0, i32 9
  %189 = call i32 @INIT_LIST_HEAD(i32* %188)
  %190 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %191 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %190, i32 0, i32 8
  %192 = call i32 @spin_lock_init(i32* %191)
  %193 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %194 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %193, i32 0, i32 7
  store i32* null, i32** %194, align 8
  %195 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %196 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %195, i32 0, i32 6
  %197 = call i32 @INIT_LIST_HEAD(i32* %196)
  %198 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %199 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %198, i32 0, i32 5
  %200 = call i32 @INIT_LIST_HEAD(i32* %199)
  %201 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %202 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %201, i32 0, i32 4
  %203 = load i32, i32* @ceph_inode_work, align 4
  %204 = call i32 @INIT_WORK(i32* %202, i32 %203)
  %205 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %206 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %205, i32 0, i32 3
  store i64 0, i64* %206, align 8
  %207 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %208 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %207, i32 0, i32 2
  %209 = call i32 @memset(i32* %208, i8 signext 0, i32 4)
  %210 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %211 = call i32 @ceph_fscache_inode_init(%struct.ceph_inode_info* %210)
  %212 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %213 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %215 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %214, i32 0, i32 0
  store %struct.inode* %215, %struct.inode** %2, align 8
  br label %216

216:                                              ; preds = %142, %11
  %217 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %217
}

declare dso_local %struct.ceph_inode_info* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dout(i8*, %struct.inode*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ceph_fscache_inode_init(%struct.ceph_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
