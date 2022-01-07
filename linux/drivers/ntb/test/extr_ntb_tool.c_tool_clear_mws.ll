; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_clear_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_clear_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*)* @tool_clear_mws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_clear_mws(%struct.tool_ctx* %0) #0 {
  %2 = alloca %struct.tool_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @tool_free_peer_mw(%struct.tool_ctx* %12, i32 %13)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %5

18:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @tool_free_mw(%struct.tool_ctx* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %19

49:                                               ; preds = %19
  ret void
}

declare dso_local i32 @tool_free_peer_mw(%struct.tool_ctx*, i32) #1

declare dso_local i32 @tool_free_mw(%struct.tool_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
