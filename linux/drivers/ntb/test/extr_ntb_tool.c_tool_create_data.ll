; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_create_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_create_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, i32, %struct.ntb_dev* }
%struct.ntb_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"doorbell is unsafe\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"scratchpad is unsafe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tool_ctx* (%struct.ntb_dev*)* @tool_create_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tool_ctx* @tool_create_data(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.tool_ctx*, align 8
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca %struct.tool_ctx*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tool_ctx* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.tool_ctx* %8, %struct.tool_ctx** %4, align 8
  %9 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %10 = icmp eq %struct.tool_ctx* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.tool_ctx* @ERR_PTR(i32 %13)
  store %struct.tool_ctx* %14, %struct.tool_ctx** %2, align 8
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %17 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %17, i32 0, i32 3
  store %struct.ntb_dev* %16, %struct.ntb_dev** %18, align 8
  %19 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %19, i32 0, i32 2
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %22, i32 0, i32 1
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %25, i32 0, i32 0
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %29 = call i64 @ntb_db_is_unsafe(%struct.ntb_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %33 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %15
  %36 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %37 = call i64 @ntb_spad_is_unsafe(%struct.ntb_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %41 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  store %struct.tool_ctx* %44, %struct.tool_ctx** %2, align 8
  br label %45

45:                                               ; preds = %43, %11
  %46 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  ret %struct.tool_ctx* %46
}

declare dso_local %struct.tool_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.tool_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @ntb_db_is_unsafe(%struct.ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @ntb_spad_is_unsafe(%struct.ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
