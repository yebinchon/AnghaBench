; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_update_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_update_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume = type { i64, i32, %struct.TYPE_3__*, i32, i32, i64, i64, %struct.afs_vldb_entry*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_vldb_entry = type { i64, i64, i32 }
%struct.key = type { i32 }
%struct.afs_server_list = type { i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@AFS_MAXVOLNAME = common dso_local global i32 0, align 4
@afs_volume_record_life = common dso_local global i64 0, align 8
@AFS_VOLUME_NEEDS_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_volume*, %struct.key*)* @afs_update_volume_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_update_volume_status(%struct.afs_volume* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.afs_volume*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.afs_server_list*, align 8
  %6 = alloca %struct.afs_server_list*, align 8
  %7 = alloca %struct.afs_server_list*, align 8
  %8 = alloca %struct.afs_vldb_entry*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.afs_volume* %0, %struct.afs_volume** %3, align 8
  store %struct.key* %1, %struct.key** %4, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %14 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %15 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %19 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.key*, %struct.key** %4, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.afs_vldb_entry* @afs_vl_lookup_vldb(%struct.TYPE_3__* %20, %struct.key* %21, i8* %22, i32 %23)
  store %struct.afs_vldb_entry* %24, %struct.afs_vldb_entry** %8, align 8
  %25 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %26 = call i64 @IS_ERR(%struct.afs_vldb_entry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.afs_vldb_entry* %29)
  store i32 %30, i32* %10, align 4
  br label %141

31:                                               ; preds = %2
  %32 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %33 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %36 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %31
  %40 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %41 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %44 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %47 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @memcmp(i32 %42, i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %39, %31
  %52 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %53 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %56 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AFS_MAXVOLNAME, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %61 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %64 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %51, %39
  %66 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %67 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.key*, %struct.key** %4, align 8
  %70 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %71 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %72 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 1, %73
  %75 = call %struct.afs_vldb_entry* @afs_alloc_server_list(%struct.TYPE_3__* %68, %struct.key* %69, %struct.afs_vldb_entry* %70, i32 %74)
  %76 = bitcast %struct.afs_vldb_entry* %75 to %struct.afs_server_list*
  store %struct.afs_server_list* %76, %struct.afs_server_list** %5, align 8
  %77 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %78 = bitcast %struct.afs_server_list* %77 to %struct.afs_vldb_entry*
  %79 = call i64 @IS_ERR(%struct.afs_vldb_entry* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %83 = bitcast %struct.afs_server_list* %82 to %struct.afs_vldb_entry*
  %84 = call i32 @PTR_ERR(%struct.afs_vldb_entry* %83)
  store i32 %84, i32* %10, align 4
  br label %138

85:                                               ; preds = %65
  %86 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %87 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %86, i32 0, i32 3
  %88 = call i32 @write_lock(i32* %87)
  %89 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  store %struct.afs_server_list* %89, %struct.afs_server_list** %7, align 8
  %90 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %91 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %90, i32 0, i32 7
  %92 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %91, align 8
  %93 = bitcast %struct.afs_vldb_entry* %92 to %struct.afs_server_list*
  store %struct.afs_server_list* %93, %struct.afs_server_list** %6, align 8
  %94 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %95 = bitcast %struct.afs_server_list* %94 to %struct.afs_vldb_entry*
  %96 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %97 = bitcast %struct.afs_server_list* %96 to %struct.afs_vldb_entry*
  %98 = call i64 @afs_annotate_server_list(%struct.afs_vldb_entry* %95, %struct.afs_vldb_entry* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %85
  %101 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %102 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  %105 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %106 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %108 = bitcast %struct.afs_server_list* %107 to %struct.afs_vldb_entry*
  %109 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %110 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %109, i32 0, i32 7
  store %struct.afs_vldb_entry* %108, %struct.afs_vldb_entry** %110, align 8
  %111 = call i32 (...) @smp_wmb()
  %112 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %113 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  store %struct.afs_server_list* %116, %struct.afs_server_list** %7, align 8
  br label %117

117:                                              ; preds = %100, %85
  %118 = call i64 (...) @ktime_get_real_seconds()
  %119 = load i64, i64* @afs_volume_record_life, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %122 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @AFS_VOLUME_NEEDS_UPDATE, align 4
  %124 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %125 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %124, i32 0, i32 4
  %126 = call i32 @clear_bit(i32 %123, i32* %125)
  %127 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %128 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %127, i32 0, i32 3
  %129 = call i32 @write_unlock(i32* %128)
  store i32 0, i32* %10, align 4
  %130 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %131 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.afs_server_list*, %struct.afs_server_list** %7, align 8
  %136 = bitcast %struct.afs_server_list* %135 to %struct.afs_vldb_entry*
  %137 = call i32 @afs_put_serverlist(i32 %134, %struct.afs_vldb_entry* %136)
  br label %138

138:                                              ; preds = %117, %81
  %139 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %140 = call i32 @kfree(%struct.afs_vldb_entry* %139)
  br label %141

141:                                              ; preds = %138, %28
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.afs_vldb_entry* @afs_vl_lookup_vldb(%struct.TYPE_3__*, %struct.key*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.afs_vldb_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.afs_vldb_entry*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.afs_vldb_entry* @afs_alloc_server_list(%struct.TYPE_3__*, %struct.key*, %struct.afs_vldb_entry*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @afs_annotate_server_list(%struct.afs_vldb_entry*, %struct.afs_vldb_entry*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @afs_put_serverlist(i32, %struct.afs_vldb_entry*) #1

declare dso_local i32 @kfree(%struct.afs_vldb_entry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
