; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_alloc_arena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_alloc_arena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btt = type { i32, %struct.TYPE_2__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@INT_LBASIZE_ALIGNMENT = common dso_local global i32 0, align 4
@BTT_DEFAULT_NFREE = common dso_local global i32 0, align 4
@BTT_PG_SIZE = common dso_local global i32 0, align 4
@LOG_GRP_SIZE = common dso_local global i32 0, align 4
@MAP_ENT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arena_info* (%struct.btt*, i64, i64, i64)* @alloc_arena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arena_info* @alloc_arena(%struct.btt* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.arena_info*, align 8
  %6 = alloca %struct.btt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arena_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btt* %0, %struct.btt** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.arena_info* @kzalloc(i32 96, i32 %17)
  store %struct.arena_info* %18, %struct.arena_info** %10, align 8
  %19 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %20 = icmp ne %struct.arena_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.arena_info* null, %struct.arena_info** %5, align 8
  br label %176

22:                                               ; preds = %4
  %23 = load %struct.btt*, %struct.btt** %6, align 8
  %24 = getelementptr inbounds %struct.btt, %struct.btt* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %27 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %26, i32 0, i32 17
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %27, align 8
  %28 = load %struct.btt*, %struct.btt** %6, align 8
  %29 = getelementptr inbounds %struct.btt, %struct.btt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %32 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %34 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %33, i32 0, i32 15
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  store %struct.arena_info* %39, %struct.arena_info** %5, align 8
  br label %176

40:                                               ; preds = %22
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %43 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %46 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.btt*, %struct.btt** %6, align 8
  %48 = getelementptr inbounds %struct.btt, %struct.btt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %51 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %53 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @INT_LBASIZE_ALIGNMENT, align 4
  %56 = call i8* @roundup(i32 %54, i32 %55)
  %57 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %58 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %57, i32 0, i32 12
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @BTT_DEFAULT_NFREE, align 4
  %60 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %61 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.btt*, %struct.btt** %6, align 8
  %63 = getelementptr inbounds %struct.btt, %struct.btt* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %68 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 4
  %69 = load %struct.btt*, %struct.btt** %6, align 8
  %70 = getelementptr inbounds %struct.btt, %struct.btt* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %75 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @BTT_PG_SIZE, align 4
  %78 = srem i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %40
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @BTT_PG_SIZE, align 4
  %83 = srem i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %80, %40
  %87 = load i32, i32* @BTT_PG_SIZE, align 4
  %88 = mul nsw i32 2, %87
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %92 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LOG_GRP_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* @BTT_PG_SIZE, align 4
  %97 = call i8* @roundup(i32 %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @BTT_PG_SIZE, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %106 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %105, i32 0, i32 12
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @MAP_ENT_SIZE, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %107, i64 %109
  %111 = call i32 @div_u64(i32 %104, i8* %110)
  %112 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %113 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %115 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %118 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %122 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %124 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MAP_ENT_SIZE, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @BTT_PG_SIZE, align 4
  %129 = call i8* @roundup(i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %13, align 4
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %136 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %135, i32 0, i32 6
  store i64 %134, i64* %136, align 8
  %137 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %138 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @BTT_PG_SIZE, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %145 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %147 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %148, %149
  %151 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %152 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 4
  %153 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %154 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %155, %156
  %158 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %159 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 8
  %160 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %161 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %166 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %165, i32 0, i32 10
  store i32 %164, i32* %166, align 4
  %167 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %168 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %167, i32 0, i32 11
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 0, i32* %170, align 4
  %171 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  %172 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %171, i32 0, i32 11
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 1, i32* %174, align 4
  %175 = load %struct.arena_info*, %struct.arena_info** %10, align 8
  store %struct.arena_info* %175, %struct.arena_info** %5, align 8
  br label %176

176:                                              ; preds = %86, %38, %21
  %177 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  ret %struct.arena_info* %177
}

declare dso_local %struct.arena_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @div_u64(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
