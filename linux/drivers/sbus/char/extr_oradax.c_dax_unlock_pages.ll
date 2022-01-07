; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_unlock_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_unlock_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_ctx = type { %struct.page*** }
%struct.page = type { i32 }

@NUM_STREAM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"freeing page %p\00", align 1
@OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dax_ctx*, i32, i32)* @dax_unlock_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dax_unlock_pages(%struct.dax_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dax_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.dax_ctx* %0, %struct.dax_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NUM_STREAM_TYPES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load %struct.dax_ctx*, %struct.dax_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %23, i32 0, i32 0
  %25 = load %struct.page***, %struct.page**** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page**, %struct.page*** %25, i64 %27
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  store %struct.page* %33, %struct.page** %9, align 8
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %22
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = call i32 @dax_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.page* %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @OUT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = call i32 @set_page_dirty(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @put_page(%struct.page* %46)
  %48 = load %struct.dax_ctx*, %struct.dax_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %48, i32 0, i32 0
  %50 = load %struct.page***, %struct.page**** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page**, %struct.page*** %50, i64 %52
  %54 = load %struct.page**, %struct.page*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  store %struct.page* null, %struct.page** %57, align 8
  br label %58

58:                                               ; preds = %45, %22
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %18

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dax_dbg(i8*, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
