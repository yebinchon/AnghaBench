; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_raw_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_raw_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i64, i32* }

@ipcdev = common dso_local global %struct.intel_scu_ipc_dev zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@ipclock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPC_DPTR = common dso_local global i64 0, align 8
@IPC_SPTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_scu_ipc_raw_command(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.intel_scu_ipc_dev*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.intel_scu_ipc_dev* @ipcdev, %struct.intel_scu_ipc_dev** %18, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 4)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp sgt i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %108

30:                                               ; preds = %8
  %31 = call i32 @mutex_lock(i32* @ipclock)
  %32 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %33 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @mutex_unlock(i32* @ipclock)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %108

40:                                               ; preds = %30
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %43 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPC_DPTR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %50 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPC_SPTR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %72, %40
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %21, align 4
  %70 = mul nsw i32 4, %69
  %71 = call i32 @ipc_data_writel(%struct.intel_scu_ipc_dev* %64, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %21, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 %77, 16
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 12
  %81 = or i32 %78, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @ipc_command(%struct.intel_scu_ipc_dev* %76, i32 %83)
  %85 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %86 = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %85)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %75
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %101, %89
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %18, align 8
  %96 = load i32, i32* %21, align 4
  %97 = mul nsw i32 4, %96
  %98 = call i32 @ipc_data_readl(%struct.intel_scu_ipc_dev* %95, i32 %97)
  %99 = load i32*, i32** %14, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %14, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %90

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %75
  %106 = call i32 @mutex_unlock(i32* @ipclock)
  %107 = load i32, i32* %22, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %105, %36, %27
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipc_data_writel(%struct.intel_scu_ipc_dev*, i32, i32) #1

declare dso_local i32 @ipc_command(%struct.intel_scu_ipc_dev*, i32) #1

declare dso_local i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev*) #1

declare dso_local i32 @ipc_data_readl(%struct.intel_scu_ipc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
