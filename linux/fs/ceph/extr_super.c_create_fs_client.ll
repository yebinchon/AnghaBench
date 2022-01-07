; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_create_fs_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_create_fs_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { i32, %struct.TYPE_6__*, i8*, i8*, i32, %struct.ceph_mount_options*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ceph_mount_options = type { i32, i32 }
%struct.ceph_options = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@extra_mon_dispatch = common dso_local global i32 0, align 4
@ABORT_ON_FULL = common dso_local global i32 0, align 4
@CEPH_SUB_MDSMAP = common dso_local global i32 0, align 4
@CEPH_SUB_FSMAP = common dso_local global i32 0, align 4
@CEPH_MOUNT_MOUNTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ceph-inode\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ceph-cap\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_fs_client* (%struct.ceph_mount_options*, %struct.ceph_options*)* @create_fs_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_fs_client* @create_fs_client(%struct.ceph_mount_options* %0, %struct.ceph_options* %1) #0 {
  %3 = alloca %struct.ceph_fs_client*, align 8
  %4 = alloca %struct.ceph_mount_options*, align 8
  %5 = alloca %struct.ceph_options*, align 8
  %6 = alloca %struct.ceph_fs_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_mount_options* %0, %struct.ceph_mount_options** %4, align 8
  store %struct.ceph_options* %1, %struct.ceph_options** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ceph_fs_client* @kzalloc(i32 64, i32 %10)
  store %struct.ceph_fs_client* %11, %struct.ceph_fs_client** %6, align 8
  %12 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %13 = icmp ne %struct.ceph_fs_client* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %141

17:                                               ; preds = %2
  %18 = load %struct.ceph_options*, %struct.ceph_options** %5, align 8
  %19 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %20 = call %struct.TYPE_6__* @ceph_create_client(%struct.ceph_options* %18, %struct.ceph_fs_client* %19)
  %21 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %21, i32 0, i32 1
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %22, align 8
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i64 @IS_ERR(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.TYPE_6__* %31)
  store i32 %32, i32* %9, align 4
  br label %141

33:                                               ; preds = %17
  store %struct.ceph_options* null, %struct.ceph_options** %5, align 8
  %34 = load i32, i32* @extra_mon_dispatch, align 4
  %35 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %36 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %40 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* @ABORT_ON_FULL, align 4
  %43 = call i32 @ceph_set_opt(%struct.TYPE_6__* %41, i32 %42)
  %44 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %33
  %49 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %50 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* @CEPH_SUB_MDSMAP, align 4
  %54 = call i32 @ceph_monc_want_map(i32* %52, i32 %53, i32 0, i32 1)
  br label %62

55:                                               ; preds = %33
  %56 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %57 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* @CEPH_SUB_FSMAP, align 4
  %61 = call i32 @ceph_monc_want_map(i32* %59, i32 %60, i32 0, i32 0)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %4, align 8
  %64 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %65 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %64, i32 0, i32 5
  store %struct.ceph_mount_options* %63, %struct.ceph_mount_options** %65, align 8
  %66 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %67 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %66, i32 0, i32 8
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* @CEPH_MOUNT_MOUNTING, align 4
  %69 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %70 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %72 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %74 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %73, i32 0, i32 6
  %75 = call i32 @atomic_long_set(i32* %74, i32 0)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @WQ_UNBOUND, align 4
  %79 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %78, i32 0)
  %80 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %81 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %83 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %62
  br label %136

87:                                               ; preds = %62
  %88 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  %89 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %90 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %92 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %131

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %100 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %99, i32 0, i32 5
  %101 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %100, align 8
  %102 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PAGE_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %7, align 4
  br label %111

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 1, %110 ]
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @mempool_create_kmalloc_pool(i32 10, i64 %115)
  %117 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %118 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %120 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %126

124:                                              ; preds = %111
  %125 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  store %struct.ceph_fs_client* %125, %struct.ceph_fs_client** %3, align 8
  br label %154

126:                                              ; preds = %123
  %127 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %128 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @destroy_workqueue(i8* %129)
  br label %131

131:                                              ; preds = %126, %95
  %132 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %133 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @destroy_workqueue(i8* %134)
  br label %136

136:                                              ; preds = %131, %86
  %137 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %138 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @ceph_destroy_client(%struct.TYPE_6__* %139)
  br label %141

141:                                              ; preds = %136, %28, %14
  %142 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %143 = call i32 @kfree(%struct.ceph_fs_client* %142)
  %144 = load %struct.ceph_options*, %struct.ceph_options** %5, align 8
  %145 = icmp ne %struct.ceph_options* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.ceph_options*, %struct.ceph_options** %5, align 8
  %148 = call i32 @ceph_destroy_options(%struct.ceph_options* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %4, align 8
  %151 = call i32 @destroy_mount_options(%struct.ceph_mount_options* %150)
  %152 = load i32, i32* %9, align 4
  %153 = call %struct.ceph_fs_client* @ERR_PTR(i32 %152)
  store %struct.ceph_fs_client* %153, %struct.ceph_fs_client** %3, align 8
  br label %154

154:                                              ; preds = %149, %124
  %155 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  ret %struct.ceph_fs_client* %155
}

declare dso_local %struct.ceph_fs_client* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @ceph_create_client(%struct.ceph_options*, %struct.ceph_fs_client*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @ceph_set_opt(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ceph_monc_want_map(i32*, i32, i32, i32) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @mempool_create_kmalloc_pool(i32, i64) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @ceph_destroy_client(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ceph_fs_client*) #1

declare dso_local i32 @ceph_destroy_options(%struct.ceph_options*) #1

declare dso_local i32 @destroy_mount_options(%struct.ceph_mount_options*) #1

declare dso_local %struct.ceph_fs_client* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
