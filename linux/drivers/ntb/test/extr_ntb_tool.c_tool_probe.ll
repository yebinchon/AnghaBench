; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.tool_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_client*, %struct.ntb_dev*)* @tool_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_probe(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_client*, align 8
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca %struct.tool_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_client* %0, %struct.ntb_client** %4, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %5, align 8
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %9 = call %struct.tool_ctx* @tool_create_data(%struct.ntb_dev* %8)
  store %struct.tool_ctx* %9, %struct.tool_ctx** %6, align 8
  %10 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %11 = call i64 @IS_ERR(%struct.tool_ctx* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.tool_ctx* %14)
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %18 = call i32 @tool_init_peers(%struct.tool_ctx* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %52

22:                                               ; preds = %16
  %23 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %24 = call i32 @tool_init_mws(%struct.tool_ctx* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %52

28:                                               ; preds = %22
  %29 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %30 = call i32 @tool_init_spads(%struct.tool_ctx* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %36 = call i32 @tool_init_msgs(%struct.tool_ctx* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %42 = call i32 @tool_init_ntb(%struct.tool_ctx* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %48 = call i32 @tool_setup_dbgfs(%struct.tool_ctx* %47)
  store i32 0, i32* %3, align 4
  br label %56

49:                                               ; preds = %45, %39, %33
  %50 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %51 = call i32 @tool_clear_mws(%struct.tool_ctx* %50)
  br label %52

52:                                               ; preds = %49, %27, %21
  %53 = load %struct.tool_ctx*, %struct.tool_ctx** %6, align 8
  %54 = call i32 @tool_clear_data(%struct.tool_ctx* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %46, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.tool_ctx* @tool_create_data(%struct.ntb_dev*) #1

declare dso_local i64 @IS_ERR(%struct.tool_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_peers(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_mws(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_spads(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_msgs(%struct.tool_ctx*) #1

declare dso_local i32 @tool_init_ntb(%struct.tool_ctx*) #1

declare dso_local i32 @tool_setup_dbgfs(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_mws(%struct.tool_ctx*) #1

declare dso_local i32 @tool_clear_data(%struct.tool_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
