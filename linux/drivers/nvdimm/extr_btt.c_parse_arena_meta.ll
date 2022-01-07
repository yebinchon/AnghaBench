; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_parse_arena_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_parse_arena_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, i64, i8*, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.btt_sb = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@BTT_PG_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arena_info*, %struct.btt_sb*, i64)* @parse_arena_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_arena_meta(%struct.arena_info* %0, %struct.btt_sb* %1, i64 %2) #0 {
  %4 = alloca %struct.arena_info*, align 8
  %5 = alloca %struct.btt_sb*, align 8
  %6 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %4, align 8
  store %struct.btt_sb* %1, %struct.btt_sb** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %8 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @le32_to_cpu(i32 %9)
  %11 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %12 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %11, i32 0, i32 14
  store i8* %10, i8** %12, align 8
  %13 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %14 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @le32_to_cpu(i32 %15)
  %17 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %18 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %17, i32 0, i32 13
  store i8* %16, i8** %18, align 8
  %19 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %20 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %24 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %23, i32 0, i32 12
  store i8* %22, i8** %24, align 8
  %25 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %26 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @le32_to_cpu(i32 %27)
  %29 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %30 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %29, i32 0, i32 11
  store i8* %28, i8** %30, align 8
  %31 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %32 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %36 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %35, i32 0, i32 10
  store i8* %34, i8** %36, align 8
  %37 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %38 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %42 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %41, i32 0, i32 9
  store i8* %40, i8** %42, align 8
  %43 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %44 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %48 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %50 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %61

54:                                               ; preds = %3
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %57 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @le64_to_cpu(i64 %58)
  %60 = add nsw i64 %55, %59
  br label %61

61:                                               ; preds = %54, %53
  %62 = phi i64 [ 0, %53 ], [ %60, %54 ]
  %63 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %64 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %63, i32 0, i32 7
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %67 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %70 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @le64_to_cpu(i64 %71)
  %73 = add nsw i64 %68, %72
  %74 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %75 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %74, i32 0, i32 6
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %78 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @le64_to_cpu(i64 %79)
  %81 = add nsw i64 %76, %80
  %82 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %83 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %86 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @le64_to_cpu(i64 %87)
  %89 = add nsw i64 %84, %88
  %90 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %91 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %94 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @le64_to_cpu(i64 %95)
  %97 = add nsw i64 %92, %96
  %98 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %99 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %101 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @le64_to_cpu(i64 %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %61
  %106 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %107 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @le64_to_cpu(i64 %108)
  br label %120

110:                                              ; preds = %61
  %111 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %112 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %115 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = load i64, i64* @BTT_PG_SIZE, align 8
  %119 = add nsw i64 %117, %118
  br label %120

120:                                              ; preds = %110, %105
  %121 = phi i64 [ %109, %105 ], [ %119, %110 ]
  %122 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %123 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %125 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @le32_to_cpu(i32 %126)
  %128 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %129 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
