; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_create_volume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_create_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume = type { i32 }
%struct.afs_fs_context = type { i64, i64, i32, i32, i32, i32 }
%struct.afs_vldb_entry = type { i64, i32 }

@AFS_VLDB_QUERY_ERROR = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@AFS_VLDB_HAS_RO = common dso_local global i32 0, align 4
@AFSVL_ROVOL = common dso_local global i64 0, align 8
@AFS_VLDB_HAS_RW = common dso_local global i32 0, align 4
@AFSVL_RWVOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_volume* @afs_create_volume(%struct.afs_fs_context* %0) #0 {
  %2 = alloca %struct.afs_volume*, align 8
  %3 = alloca %struct.afs_fs_context*, align 8
  %4 = alloca %struct.afs_vldb_entry*, align 8
  %5 = alloca %struct.afs_volume*, align 8
  %6 = alloca i64, align 8
  store %struct.afs_fs_context* %0, %struct.afs_fs_context** %3, align 8
  %7 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %8 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = shl i64 1, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %12 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %15 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %18 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %21 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.afs_vldb_entry* @afs_vl_lookup_vldb(i32 %13, i32 %16, i32 %19, i32 %22)
  store %struct.afs_vldb_entry* %23, %struct.afs_vldb_entry** %4, align 8
  %24 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %25 = call i64 @IS_ERR(%struct.afs_vldb_entry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %29 = call %struct.afs_volume* @ERR_CAST(%struct.afs_vldb_entry* %28)
  store %struct.afs_volume* %29, %struct.afs_volume** %2, align 8
  br label %94

30:                                               ; preds = %1
  %31 = load i32, i32* @AFS_VLDB_QUERY_ERROR, align 4
  %32 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %33 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %38 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.afs_volume* @ERR_PTR(i32 %39)
  store %struct.afs_volume* %40, %struct.afs_volume** %5, align 8
  br label %90

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEDIUM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.afs_volume* @ERR_PTR(i32 %43)
  store %struct.afs_volume* %44, %struct.afs_volume** %5, align 8
  %45 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %46 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %51 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %90

57:                                               ; preds = %49
  br label %81

58:                                               ; preds = %41
  %59 = load i32, i32* @AFS_VLDB_HAS_RO, align 4
  %60 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %61 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* @AFSVL_ROVOL, align 8
  %66 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %67 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %80

68:                                               ; preds = %58
  %69 = load i32, i32* @AFS_VLDB_HAS_RW, align 4
  %70 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %71 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %69, i64* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @AFSVL_RWVOL, align 8
  %76 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %77 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %79

78:                                               ; preds = %68
  br label %90

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %57
  %82 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %83 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 1, %84
  store i64 %85, i64* %6, align 8
  %86 = load %struct.afs_fs_context*, %struct.afs_fs_context** %3, align 8
  %87 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call %struct.afs_volume* @afs_alloc_volume(%struct.afs_fs_context* %86, %struct.afs_vldb_entry* %87, i64 %88)
  store %struct.afs_volume* %89, %struct.afs_volume** %5, align 8
  br label %90

90:                                               ; preds = %81, %78, %56, %36
  %91 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  %92 = call i32 @kfree(%struct.afs_vldb_entry* %91)
  %93 = load %struct.afs_volume*, %struct.afs_volume** %5, align 8
  store %struct.afs_volume* %93, %struct.afs_volume** %2, align 8
  br label %94

94:                                               ; preds = %90, %27
  %95 = load %struct.afs_volume*, %struct.afs_volume** %2, align 8
  ret %struct.afs_volume* %95
}

declare dso_local %struct.afs_vldb_entry* @afs_vl_lookup_vldb(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.afs_vldb_entry*) #1

declare dso_local %struct.afs_volume* @ERR_CAST(%struct.afs_vldb_entry*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local %struct.afs_volume* @ERR_PTR(i32) #1

declare dso_local %struct.afs_volume* @afs_alloc_volume(%struct.afs_fs_context*, %struct.afs_vldb_entry*, i64) #1

declare dso_local i32 @kfree(%struct.afs_vldb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
