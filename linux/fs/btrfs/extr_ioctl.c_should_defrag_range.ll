; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_should_defrag_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_should_defrag_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i64 }

@EXTENT_MAP_LAST_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i64*, i64*, i64*, i32)* @should_defrag_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_defrag_range(%struct.inode* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_map*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i64*, i64** %14, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %91

25:                                               ; preds = %7
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call %struct.extent_map* @defrag_lookup_extent(%struct.inode* %27, i64 %28)
  store %struct.extent_map* %29, %struct.extent_map** %16, align 8
  %30 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %31 = icmp ne %struct.extent_map* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %35 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EXTENT_MAP_LAST_BYTE, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  br label %74

40:                                               ; preds = %33
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %48 = call i32 @defrag_check_next_extent(%struct.inode* %46, %struct.extent_map* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %45
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %55, %51
  %61 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %62 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %60
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %69, %66, %55, %45
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %79 = call i64 @extent_map_end(%struct.extent_map* %78)
  %80 = load i64*, i64** %14, align 8
  store i64 %79, i64* %80, align 8
  br label %87

81:                                               ; preds = %74
  %82 = load i64*, i64** %12, align 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %84 = call i64 @extent_map_end(%struct.extent_map* %83)
  %85 = load i64*, i64** %13, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64*, i64** %14, align 8
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %77
  %88 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %89 = call i32 @free_extent_map(%struct.extent_map* %88)
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %32, %24
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.extent_map* @defrag_lookup_extent(%struct.inode*, i64) #1

declare dso_local i32 @defrag_check_next_extent(%struct.inode*, %struct.extent_map*) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
