; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@hmcdrv_cache_order = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@hmcdrv_cache_file = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [57 x i8] c"Allocating the requested cache size of %zu bytes failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"content cache enabled, size is %zu bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmcdrv_cache_startup(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ugt i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @get_order(i64 %7)
  store i32 %8, i32* @hmcdrv_cache_order, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @hmcdrv_cache_order, align 4
  %13 = call i64 @__get_free_pages(i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %6
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i64, i64* %3, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
