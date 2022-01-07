; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32* }

@ipcdev = common dso_local global %struct.intel_scu_ipc_dev zeroinitializer, align 8
@ipclock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_scu_ipc_command(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_scu_ipc_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.intel_scu_ipc_dev* @ipcdev, %struct.intel_scu_ipc_dev** %14, align 8
  %17 = call i32 @mutex_lock(i32* @ipclock)
  %18 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %14, align 8
  %19 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = call i32 @mutex_unlock(i32* @ipclock)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %75

26:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %14, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %33, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul nsw i32 4, %36
  %38 = call i32 @ipc_data_writel(%struct.intel_scu_ipc_dev* %32, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %14, align 8
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 12
  %48 = or i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ipc_command(%struct.intel_scu_ipc_dev* %43, i32 %50)
  %52 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %14, align 8
  %53 = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %14, align 8
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 4, %63
  %65 = call i32 @ipc_data_readl(%struct.intel_scu_ipc_dev* %62, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %57

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %42
  %73 = call i32 @mutex_unlock(i32* @ipclock)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %22
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

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
