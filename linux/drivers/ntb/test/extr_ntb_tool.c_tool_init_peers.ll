; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_init_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_init_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.tool_ctx* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tool_ctx*)* @tool_init_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_init_peers(%struct.tool_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tool_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %3, align 8
  %5 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i32 @ntb_peer_port_count(%struct.TYPE_3__* %7)
  %9 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_4__* @devm_kcalloc(i32* %14, i32 %17, i32 16, i32 %18)
  %20 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %20, i32 0, i32 1
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  %45 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %46 = load %struct.tool_ctx*, %struct.tool_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store %struct.tool_ctx* %45, %struct.tool_ctx** %52, align 8
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ntb_peer_port_count(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
