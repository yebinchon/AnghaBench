; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_lock_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_lock_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_ctx = type { i32**, %struct.dax_ccb* }
%struct.dax_ccb = type { %struct.TYPE_2__, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@DAX_ADDR_TYPE_VA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@OUT = common dso_local global i64 0, align 8
@DAX_ADDR_TYPE_VA_ALT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@PRI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"sec input\00", align 1
@SEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tbl\00", align 1
@TBL = common dso_local global i64 0, align 8
@DAX_SUBMIT_OK = common dso_local global i32 0, align 4
@DAX_SUBMIT_ERR_NOACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dax_ctx*, i32, i32, i64*)* @dax_lock_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_lock_pages(%struct.dax_ctx* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dax_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dax_ccb*, align 8
  store %struct.dax_ctx* %0, %struct.dax_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %176, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %179

16:                                               ; preds = %12
  %17 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %17, i32 0, i32 1
  %19 = load %struct.dax_ccb*, %struct.dax_ccb** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %19, i64 %21
  store %struct.dax_ccb* %22, %struct.dax_ccb** %11, align 8
  %23 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %24 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAX_ADDR_TYPE_VA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %16
  %30 = call i32 @dax_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %32 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %36, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @OUT, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i64 @dax_lock_page(i64 %33, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %49 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %181

52:                                               ; preds = %29
  %53 = load i8*, i8** @DAX_ADDR_TYPE_VA_ALT, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %56 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %16
  %59 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %60 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DAX_ADDR_TYPE_VA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %58
  %66 = call i32 @dax_dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %68 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %72, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @PRI, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i64 @dax_lock_page(i64 %69, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %65
  %84 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %85 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  br label %181

88:                                               ; preds = %65
  %89 = load i8*, i8** @DAX_ADDR_TYPE_VA_ALT, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %92 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %58
  %95 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %96 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DAX_ADDR_TYPE_VA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %94
  %102 = call i32 @dax_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %104 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %108, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @SEC, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i64 @dax_lock_page(i64 %105, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %121 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %9, align 8
  store i64 %122, i64* %123, align 8
  br label %181

124:                                              ; preds = %101
  %125 = load i8*, i8** @DAX_ADDR_TYPE_VA_ALT, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %128 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i64 %126, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %94
  %131 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %132 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DAX_ADDR_TYPE_VA, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %130
  %138 = call i32 @dax_dbg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %139 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %140 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %143 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %144, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @TBL, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i64 @dax_lock_page(i64 %141, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %137
  %156 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %157 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  br label %181

160:                                              ; preds = %137
  %161 = load i8*, i8** @DAX_ADDR_TYPE_VA_ALT, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %164 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %160, %130
  %167 = load %struct.dax_ccb*, %struct.dax_ccb** %11, align 8
  %168 = getelementptr inbounds %struct.dax_ccb, %struct.dax_ccb* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %172, %166
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %12

179:                                              ; preds = %12
  %180 = load i32, i32* @DAX_SUBMIT_OK, align 4
  store i32 %180, i32* %5, align 4
  br label %187

181:                                              ; preds = %155, %119, %83, %47
  %182 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @dax_unlock_pages(%struct.dax_ctx* %182, i32 %183, i32 %184)
  %186 = load i32, i32* @DAX_SUBMIT_ERR_NOACCESS, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %181, %179
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @dax_dbg(i8*) #1

declare dso_local i64 @dax_lock_page(i64, i32*) #1

declare dso_local i32 @dax_unlock_pages(%struct.dax_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
