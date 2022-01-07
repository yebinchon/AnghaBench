; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_i2c_cntrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_intel_scu_ipc_i2c_cntrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32*, i64 }

@ipcdev = common dso_local global %struct.intel_scu_ipc_dev zeroinitializer, align 8
@ipclock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPC_I2C_READ = common dso_local global i32 0, align 4
@IPC_I2C_CNTRL_ADDR = common dso_local global i64 0, align 8
@I2C_DATA_ADDR = common dso_local global i64 0, align 8
@IPC_I2C_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"intel_scu_ipc: I2C INVALID_CMD = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_scu_ipc_i2c_cntrl(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.intel_scu_ipc_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.intel_scu_ipc_dev* @ipcdev, %struct.intel_scu_ipc_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @ipclock)
  %9 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %10 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @mutex_unlock(i32* @ipclock)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IPC_I2C_READ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %27 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPC_I2C_CNTRL_ADDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = call i32 @usleep_range(i32 1000, i32 2000)
  %33 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @I2C_DATA_ADDR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %71

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @IPC_I2C_WRITE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %48 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @I2C_DATA_ADDR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = call i32 @usleep_range(i32 1000, i32 2000)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %56 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPC_I2C_CNTRL_ADDR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  br label %70

61:                                               ; preds = %40
  %62 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %6, align 8
  %63 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = call i32 @mutex_unlock(i32* @ipclock)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %24
  %72 = call i32 @mutex_unlock(i32* @ipclock)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %61, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
