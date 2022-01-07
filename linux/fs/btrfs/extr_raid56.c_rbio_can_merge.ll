; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_can_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_can_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64* }

@RBIO_RMW_LOCKED_BIT = common dso_local global i32 0, align 4
@RBIO_CACHE_BIT = common dso_local global i32 0, align 4
@BTRFS_RBIO_PARITY_SCRUB = common dso_local global i64 0, align 8
@BTRFS_RBIO_REBUILD_MISSING = common dso_local global i64 0, align 8
@BTRFS_RBIO_READ_REBUILD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*, %struct.btrfs_raid_bio*)* @rbio_can_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbio_can_merge(%struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_raid_bio*, align 8
  %5 = alloca %struct.btrfs_raid_bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %4, align 8
  store %struct.btrfs_raid_bio* %1, %struct.btrfs_raid_bio** %5, align 8
  %10 = load i32, i32* @RBIO_RMW_LOCKED_BIT, align 4
  %11 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %11, i32 0, i32 4
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @RBIO_RMW_LOCKED_BIT, align 4
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 4
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %134

22:                                               ; preds = %15
  %23 = load i32, i32* @RBIO_CACHE_BIT, align 4
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %24, i32 0, i32 4
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @RBIO_CACHE_BIT, align 4
  %30 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %30, i32 0, i32 4
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %134

35:                                               ; preds = %28
  %36 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %134

52:                                               ; preds = %35
  %53 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %134

61:                                               ; preds = %52
  %62 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %63 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BTRFS_RBIO_PARITY_SCRUB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %134

68:                                               ; preds = %61
  %69 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %134

75:                                               ; preds = %68
  %76 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %77 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %75
  %82 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %83 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %6, align 4
  %85 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %86 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %89 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %8, align 4
  %91 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %95 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %98 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %81
  %102 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %103 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %4, align 8
  %106 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %81
  %109 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %110 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %113 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %118 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  %120 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %5, align 8
  %121 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %116, %108
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %123
  store i32 0, i32* %3, align 4
  br label %134

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %75
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %131, %74, %67, %60, %51, %34, %21
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
