; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.ceph_fs_client = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.ceph_mon_client }
%struct.ceph_mon_client = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ceph_statfs = type { i32, i32, i32 }

@CEPH_NOPOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"statfs\0A\00", align 1
@CEPH_SUPER_MAGIC = common dso_local global i32 0, align 4
@CEPH_BLOCK_SHIFT = common dso_local global i32 0, align 4
@NOQUOTADF = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ceph_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.ceph_fs_client*, align 8
  %7 = alloca %struct.ceph_mon_client*, align 8
  %8 = alloca %struct.ceph_statfs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call %struct.ceph_fs_client* @ceph_inode_to_client(i32 %13)
  store %struct.ceph_fs_client* %14, %struct.ceph_fs_client** %6, align 8
  %15 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.ceph_mon_client* %18, %struct.ceph_mon_client** %7, align 8
  %19 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %20 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @CEPH_NOPOOL, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = call i32 @dout(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ceph_monc_do_statfs(%struct.ceph_mon_client* %41, i32 %42, %struct.ceph_statfs* %8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %138

48:                                               ; preds = %39
  %49 = load i32, i32* @CEPH_SUPER_MAGIC, align 4
  %50 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %59 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %61 = load i32, i32* @NOQUOTADF, align 4
  %62 = call i64 @ceph_test_mount_opt(%struct.ceph_fs_client* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %66 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %67 = call i32 @ceph_quota_update_statfs(%struct.ceph_fs_client* %65, %struct.kstatfs* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %64, %48
  %70 = getelementptr inbounds %struct.ceph_statfs, %struct.ceph_statfs* %8, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le64_to_cpu(i32 %71)
  %73 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %74 = sub nsw i32 %73, 10
  %75 = ashr i32 %72, %74
  %76 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %77 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = getelementptr inbounds %struct.ceph_statfs, %struct.ceph_statfs* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le64_to_cpu(i32 %79)
  %81 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %82 = sub nsw i32 %81, 10
  %83 = ashr i32 %80, %82
  %84 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %85 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ceph_statfs, %struct.ceph_statfs* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le64_to_cpu(i32 %87)
  %89 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %90 = sub nsw i32 %89, 10
  %91 = ashr i32 %88, %90
  %92 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %93 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %69, %64
  %95 = getelementptr inbounds %struct.ceph_statfs, %struct.ceph_statfs* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le64_to_cpu(i32 %96)
  %98 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %99 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 6
  store i32 -1, i32* %101, align 8
  %102 = load i32, i32* @NAME_MAX, align 4
  %103 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %104 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %106 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %109 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le64_to_cpu(i32 %112)
  %114 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %115 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le64_to_cpu(i32 %119)
  %121 = xor i32 %113, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %123 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %127 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = ashr i32 %131, 32
  %133 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %134 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %132, i32* %137, align 4
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %94, %46
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @ceph_monc_do_statfs(%struct.ceph_mon_client*, i32, %struct.ceph_statfs*) #1

declare dso_local i64 @ceph_test_mount_opt(%struct.ceph_fs_client*, i32) #1

declare dso_local i32 @ceph_quota_update_statfs(%struct.ceph_fs_client*, %struct.kstatfs*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
