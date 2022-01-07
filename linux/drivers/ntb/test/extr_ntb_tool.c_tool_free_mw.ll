; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_free_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_free_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tool_mw* }
%struct.tool_mw = type { i32*, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*, i32, i32)* @tool_free_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_free_mw(%struct.tool_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tool_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tool_mw*, align 8
  store %struct.tool_ctx* %0, %struct.tool_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.tool_mw*, %struct.tool_mw** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %15, i64 %17
  store %struct.tool_mw* %18, %struct.tool_mw** %7, align 8
  %19 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %20 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @debugfs_remove(i32* %21)
  %23 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %24 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %3
  %28 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ntb_mw_clear_trans(%struct.TYPE_4__* %30, i32 %31, i32 %32)
  %34 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %39 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %42 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %45 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_free_coherent(i32* %37, i64 %40, i32* %43, i64 %46)
  br label %48

48:                                               ; preds = %27, %3
  %49 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %50 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %52 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %54 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %56 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local i32 @debugfs_remove(i32*) #1

declare dso_local i32 @ntb_mw_clear_trans(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
