; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_add_page_to_wr_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_add_page_to_wr_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_ctx = type { i64, i32, %struct.TYPE_3__*, %struct.scrub_bio* }
%struct.TYPE_3__ = type { i32 }
%struct.scrub_bio = type { i32, i32, i64, %struct.scrub_page**, %struct.bio*, i64, %struct.TYPE_3__*, %struct.scrub_ctx* }
%struct.bio = type { i32, %struct.TYPE_4__, i32, %struct.scrub_bio* }
%struct.TYPE_4__ = type { i32 }
%struct.scrub_page = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scrub_wr_bio_end_io = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scrub_ctx*, %struct.scrub_page*)* @scrub_add_page_to_wr_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_add_page_to_wr_bio(%struct.scrub_ctx* %0, %struct.scrub_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scrub_ctx*, align 8
  %5 = alloca %struct.scrub_page*, align 8
  %6 = alloca %struct.scrub_bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.scrub_ctx* %0, %struct.scrub_ctx** %4, align 8
  store %struct.scrub_page* %1, %struct.scrub_page** %5, align 8
  %9 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %167, %134, %2
  %13 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %13, i32 0, i32 3
  %15 = load %struct.scrub_bio*, %struct.scrub_bio** %14, align 8
  %16 = icmp ne %struct.scrub_bio* %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.scrub_bio* @kzalloc(i32 56, i32 %18)
  %20 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %20, i32 0, i32 3
  store %struct.scrub_bio* %19, %struct.scrub_bio** %21, align 8
  %22 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %22, i32 0, i32 3
  %24 = load %struct.scrub_bio*, %struct.scrub_bio** %23, align 8
  %25 = icmp ne %struct.scrub_bio* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %201

32:                                               ; preds = %17
  %33 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %34 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %34, i32 0, i32 3
  %36 = load %struct.scrub_bio*, %struct.scrub_bio** %35, align 8
  %37 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %36, i32 0, i32 7
  store %struct.scrub_ctx* %33, %struct.scrub_ctx** %37, align 8
  %38 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %38, i32 0, i32 3
  %40 = load %struct.scrub_bio*, %struct.scrub_bio** %39, align 8
  %41 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %32, %12
  %43 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %43, i32 0, i32 3
  %45 = load %struct.scrub_bio*, %struct.scrub_bio** %44, align 8
  store %struct.scrub_bio* %45, %struct.scrub_bio** %6, align 8
  %46 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %47 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %42
  %51 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %52 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %55 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %57 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %60 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %65 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %64, i32 0, i32 6
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %67 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %66, i32 0, i32 4
  %68 = load %struct.bio*, %struct.bio** %67, align 8
  store %struct.bio* %68, %struct.bio** %8, align 8
  %69 = load %struct.bio*, %struct.bio** %8, align 8
  %70 = icmp ne %struct.bio* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %50
  %72 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.bio* @btrfs_io_bio_alloc(i64 %74)
  store %struct.bio* %75, %struct.bio** %8, align 8
  %76 = load %struct.bio*, %struct.bio** %8, align 8
  %77 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %78 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %77, i32 0, i32 4
  store %struct.bio* %76, %struct.bio** %78, align 8
  br label %79

79:                                               ; preds = %71, %50
  %80 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 3
  store %struct.scrub_bio* %80, %struct.scrub_bio** %82, align 8
  %83 = load i32, i32* @scrub_wr_bio_end_io, align 4
  %84 = load %struct.bio*, %struct.bio** %8, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.bio*, %struct.bio** %8, align 8
  %87 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %88 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %87, i32 0, i32 6
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bio_set_dev(%struct.bio* %86, i32 %91)
  %93 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %94 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 9
  %97 = load %struct.bio*, %struct.bio** %8, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @REQ_OP_WRITE, align 4
  %101 = load %struct.bio*, %struct.bio** %8, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %104 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  br label %138

105:                                              ; preds = %42
  %106 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %107 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %110 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %108, %113
  %115 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %116 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %134, label %119

119:                                              ; preds = %105
  %120 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %121 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %124 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %122, %128
  %130 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %131 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %119, %105
  %135 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %136 = call i32 @scrub_wr_submit(%struct.scrub_ctx* %135)
  br label %12

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %79
  %139 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %140 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %139, i32 0, i32 4
  %141 = load %struct.bio*, %struct.bio** %140, align 8
  %142 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %143 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = call i32 @bio_add_page(%struct.bio* %141, i32 %144, i32 %145, i32 0)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @PAGE_SIZE, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %138
  %151 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %152 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %167

155:                                              ; preds = %150
  %156 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %157 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %156, i32 0, i32 4
  %158 = load %struct.bio*, %struct.bio** %157, align 8
  %159 = call i32 @bio_put(%struct.bio* %158)
  %160 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %161 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %160, i32 0, i32 4
  store %struct.bio* null, %struct.bio** %161, align 8
  %162 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %163 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %162, i32 0, i32 1
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %201

167:                                              ; preds = %150
  %168 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %169 = call i32 @scrub_wr_submit(%struct.scrub_ctx* %168)
  br label %12

170:                                              ; preds = %138
  %171 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %172 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %173 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %172, i32 0, i32 3
  %174 = load %struct.scrub_page**, %struct.scrub_page*** %173, align 8
  %175 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %176 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %174, i64 %178
  store %struct.scrub_page* %171, %struct.scrub_page** %179, align 8
  %180 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %181 = call i32 @scrub_page_get(%struct.scrub_page* %180)
  %182 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %183 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.scrub_bio*, %struct.scrub_bio** %6, align 8
  %187 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %170
  %195 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %196 = call i32 @scrub_wr_submit(%struct.scrub_ctx* %195)
  br label %197

197:                                              ; preds = %194, %170
  %198 = load %struct.scrub_ctx*, %struct.scrub_ctx** %4, align 8
  %199 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %198, i32 0, i32 1
  %200 = call i32 @mutex_unlock(i32* %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %197, %155, %26
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.scrub_bio* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i64) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @scrub_wr_submit(%struct.scrub_ctx*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @scrub_page_get(%struct.scrub_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
