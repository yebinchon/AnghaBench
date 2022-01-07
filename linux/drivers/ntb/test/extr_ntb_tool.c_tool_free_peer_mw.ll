; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_free_peer_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_free_peer_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.tool_mw* }
%struct.tool_mw = type { i32, i32*, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*, i32)* @tool_free_peer_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_free_peer_mw(%struct.tool_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tool_mw*, align 8
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %6, i32 0, i32 1
  %8 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %8, i64 %10
  store %struct.tool_mw* %11, %struct.tool_mw** %5, align 8
  %12 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %13 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @debugfs_remove(i32* %14)
  %16 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %17 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %21, i32 0, i32 1
  %23 = load %struct.tool_mw*, %struct.tool_mw** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %23, i64 %25
  %27 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @iounmap(i32* %28)
  %30 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %34 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ntb_peer_mw_clear_trans(i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %20, %2
  %39 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %40 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %42 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %44 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %46 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.tool_mw*, %struct.tool_mw** %5, align 8
  %48 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local i32 @debugfs_remove(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @ntb_peer_mw_clear_trans(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
