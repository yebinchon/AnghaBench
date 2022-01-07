; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_emit_fiemap_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_emit_fiemap_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiemap_extent_info = type { i32 }
%struct.fiemap_cache = type { i32, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fiemap_extent_info*, %struct.fiemap_cache*, i64, i64, i64, i32)* @emit_fiemap_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_fiemap_extent(%struct.fiemap_extent_info* %0, %struct.fiemap_cache* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fiemap_extent_info*, align 8
  %9 = alloca %struct.fiemap_cache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fiemap_extent_info* %0, %struct.fiemap_extent_info** %8, align 8
  store %struct.fiemap_cache* %1, %struct.fiemap_cache** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %16 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %99

20:                                               ; preds = %6
  %21 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %22 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %25 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* %10, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %140

34:                                               ; preds = %20
  %35 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %36 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %39 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %34
  %45 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %46 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %49 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %44
  %55 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %56 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %69 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %74 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %114

77:                                               ; preds = %54, %44, %34
  %78 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %79 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %80 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %83 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %86 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %89 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %78, i64 %81, i64 %84, i64 %87, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %93 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %77
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %140

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %19
  %100 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %101 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %104 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %107 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %110 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %113 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %99, %66
  %115 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %116 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %114
  %122 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %123 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %124 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %127 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %130 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %133 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %122, i64 %125, i64 %128, i64 %131, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load %struct.fiemap_cache*, %struct.fiemap_cache** %9, align 8
  %137 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %121, %114
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %138, %96, %30
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
