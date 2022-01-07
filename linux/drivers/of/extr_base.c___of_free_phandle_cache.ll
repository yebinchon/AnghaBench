; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_free_phandle_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_free_phandle_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phandle_cache_mask = common dso_local global i64 0, align 8
@phandle_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__of_free_phandle_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__of_free_phandle_cache() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @phandle_cache_mask, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %1, align 8
  %5 = load i32*, i32** @phandle_cache, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %25

8:                                                ; preds = %0
  store i64 0, i64* %2, align 8
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** @phandle_cache, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_node_put(i32 %17)
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %2, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load i32*, i32** @phandle_cache, align 8
  %24 = call i32 @kfree(i32* %23)
  store i32* null, i32** @phandle_cache, align 8
  br label %25

25:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
