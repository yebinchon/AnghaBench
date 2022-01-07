; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_alloc_volume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_alloc_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume = type { i64, i32, %struct.afs_server_list*, i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.afs_server_list = type { i32 }
%struct.afs_fs_context = type { i64, i32, i32, i32, i32 }
%struct.afs_vldb_entry = type { i32, i64*, i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@afs_volume_record_life = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_volume* (%struct.afs_fs_context*, %struct.afs_vldb_entry*, i64)* @afs_alloc_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_volume* @afs_alloc_volume(%struct.afs_fs_context* %0, %struct.afs_vldb_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.afs_volume*, align 8
  %5 = alloca %struct.afs_fs_context*, align 8
  %6 = alloca %struct.afs_vldb_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.afs_server_list*, align 8
  %9 = alloca %struct.afs_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.afs_fs_context* %0, %struct.afs_fs_context** %5, align 8
  store %struct.afs_vldb_entry* %1, %struct.afs_vldb_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %18 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %23 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.afs_volume* @kzalloc(i32 80, i32 %40)
  store %struct.afs_volume* %41, %struct.afs_volume** %9, align 8
  %42 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %43 = icmp ne %struct.afs_volume* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %138

45:                                               ; preds = %39
  %46 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %47 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %50 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %55 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 8
  %56 = call i64 (...) @ktime_get_real_seconds()
  %57 = load i64, i64* @afs_volume_record_life, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %60 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %59, i32 0, i32 10
  store i64 %58, i64* %60, align 8
  %61 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %62 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @afs_get_cell(i32 %63)
  %65 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %66 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %68 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %71 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %73 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %76 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %78 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %81 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %80, i32 0, i32 8
  store i64 %79, i64* %81, align 8
  %82 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %83 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %82, i32 0, i32 7
  %84 = call i32 @atomic_set(i32* %83, i32 1)
  %85 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %86 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %85, i32 0, i32 6
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %89 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %88, i32 0, i32 5
  %90 = call i32 @rwlock_init(i32* %89)
  %91 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %92 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %91, i32 0, i32 4
  %93 = call i32 @rwlock_init(i32* %92)
  %94 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %95 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %98 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %101 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @memcpy(i32 %96, i32 %99, i64 %103)
  %105 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %106 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %109 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call %struct.afs_server_list* @afs_alloc_server_list(i32 %107, i32 %110, %struct.afs_vldb_entry* %111, i64 %112)
  store %struct.afs_server_list* %113, %struct.afs_server_list** %8, align 8
  %114 = load %struct.afs_server_list*, %struct.afs_server_list** %8, align 8
  %115 = call i64 @IS_ERR(%struct.afs_server_list* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %45
  %118 = load %struct.afs_server_list*, %struct.afs_server_list** %8, align 8
  %119 = call i32 @PTR_ERR(%struct.afs_server_list* %118)
  store i32 %119, i32* %10, align 4
  br label %128

120:                                              ; preds = %45
  %121 = load %struct.afs_server_list*, %struct.afs_server_list** %8, align 8
  %122 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %121, i32 0, i32 0
  %123 = call i32 @refcount_set(i32* %122, i32 1)
  %124 = load %struct.afs_server_list*, %struct.afs_server_list** %8, align 8
  %125 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %126 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %125, i32 0, i32 2
  store %struct.afs_server_list* %124, %struct.afs_server_list** %126, align 8
  %127 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  store %struct.afs_volume* %127, %struct.afs_volume** %4, align 8
  br label %141

128:                                              ; preds = %117
  %129 = load %struct.afs_fs_context*, %struct.afs_fs_context** %5, align 8
  %130 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %133 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @afs_put_cell(i32 %131, i32 %134)
  %136 = load %struct.afs_volume*, %struct.afs_volume** %9, align 8
  %137 = call i32 @kfree(%struct.afs_volume* %136)
  br label %138

138:                                              ; preds = %128, %44
  %139 = load i32, i32* %10, align 4
  %140 = call %struct.afs_volume* @ERR_PTR(i32 %139)
  store %struct.afs_volume* %140, %struct.afs_volume** %4, align 8
  br label %141

141:                                              ; preds = %138, %120
  %142 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  ret %struct.afs_volume* %142
}

declare dso_local %struct.afs_volume* @kzalloc(i32, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @afs_get_cell(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local %struct.afs_server_list* @afs_alloc_server_list(i32, i32, %struct.afs_vldb_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.afs_server_list*) #1

declare dso_local i32 @PTR_ERR(%struct.afs_server_list*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @afs_put_cell(i32, i32) #1

declare dso_local i32 @kfree(%struct.afs_volume*) #1

declare dso_local %struct.afs_volume* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
