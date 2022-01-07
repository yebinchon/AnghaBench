; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_real_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_real_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.TYPE_4__ = type { i32, i8* }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"mount start %p\0A\00", align 1
@CEPH_MOUNT_OPT_FSCACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mount opening path \\t\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mount opening path %s\0A\00", align 1
@CEPH_MOUNT_MOUNTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"mount success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.ceph_fs_client*)* @ceph_real_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_real_mount(%struct.ceph_fs_client* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ceph_fs_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %10 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.ceph_fs_client* %9)
  %11 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %1
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @__ceph_open_session(%struct.TYPE_6__* %25, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %105

31:                                               ; preds = %22
  %32 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CEPH_MOUNT_OPT_FSCACHE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %42 = call i32 @ceph_fscache_register_fs(%struct.ceph_fs_client* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %105

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %55 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %65

56:                                               ; preds = %47
  %57 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %58 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %56, %54
  %66 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %67 = call i32 @ceph_fs_debugfs_init(%struct.ceph_fs_client* %66)
  %68 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call %struct.dentry* @open_root_dentry(%struct.ceph_fs_client* %68, i8* %69, i64 %70)
  store %struct.dentry* %71, %struct.dentry** %6, align 8
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call i64 @IS_ERR(%struct.dentry* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = call i32 @PTR_ERR(%struct.dentry* %76)
  store i32 %77, i32* %4, align 4
  br label %105

78:                                               ; preds = %65
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = call i8* @dget(%struct.dentry* %79)
  %81 = bitcast i8* %80 to %struct.dentry*
  %82 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %83 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store %struct.dentry* %81, %struct.dentry** %85, align 8
  br label %94

86:                                               ; preds = %1
  %87 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %88 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.dentry*, %struct.dentry** %90, align 8
  %92 = call i8* @dget(%struct.dentry* %91)
  %93 = bitcast i8* %92 to %struct.dentry*
  store %struct.dentry* %93, %struct.dentry** %6, align 8
  br label %94

94:                                               ; preds = %86, %78
  %95 = load i32, i32* @CEPH_MOUNT_MOUNTED, align 4
  %96 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %97 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %100 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %104, %struct.dentry** %2, align 8
  br label %113

105:                                              ; preds = %75, %45, %30
  %106 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %107 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %4, align 4
  %112 = call %struct.dentry* @ERR_PTR(i32 %111)
  store %struct.dentry* %112, %struct.dentry** %2, align 8
  br label %113

113:                                              ; preds = %105, %94
  %114 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %114
}

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ceph_open_session(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ceph_fscache_register_fs(%struct.ceph_fs_client*) #1

declare dso_local i32 @ceph_fs_debugfs_init(%struct.ceph_fs_client*) #1

declare dso_local %struct.dentry* @open_root_dentry(%struct.ceph_fs_client*, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i8* @dget(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
