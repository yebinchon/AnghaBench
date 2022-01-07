; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_intel_pmc_ipc_raw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_intel_pmc_ipc_raw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@IPC_DATA_BUFFER_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ipclock = common dso_local global i32 0, align 4
@ipcdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@IPC_DPTR = common dso_local global i64 0, align 8
@IPC_SPTR = common dso_local global i64 0, align 8
@IPC_CMD_SIZE = common dso_local global i32 0, align 4
@IPC_CMD_SUBCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pmc_ipc_raw_cmd(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @IPC_DATA_BUFFER_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @IPC_DATA_BUFFER_SIZE, align 4
  %28 = sdiv i32 %27, 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %105

33:                                               ; preds = %25
  %34 = call i32 @mutex_lock(i32* @ipclock)
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @mutex_unlock(i32* @ipclock)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %105

41:                                               ; preds = %33
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %16, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  %48 = load i64, i64* @IPC_DPTR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %46, i64 %49)
  %51 = load i32, i32* %17, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  %53 = load i64, i64* @IPC_SPTR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %51, i64 %54)
  store i32 0, i32* %20, align 4
  br label %56

56:                                               ; preds = %70, %41
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 3
  %60 = sdiv i32 %59, 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %20, align 4
  %68 = mul nsw i32 4, %67
  %69 = call i32 @ipc_data_writel(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %20, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @IPC_CMD_SIZE, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @IPC_CMD_SUBCMD, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @ipc_send_command(i32 %82)
  %84 = call i32 (...) @intel_pmc_ipc_check_status()
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %73
  store i32 0, i32* %20, align 4
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %20, align 4
  %94 = mul nsw i32 4, %93
  %95 = call i32 @ipc_data_readl(i32 %94)
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %88

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %73
  %103 = call i32 @mutex_unlock(i32* @ipclock)
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %37, %30
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @ipc_data_writel(i32, i32) #2

declare dso_local i32 @ipc_send_command(i32) #2

declare dso_local i32 @intel_pmc_ipc_check_status(...) #2

declare dso_local i32 @ipc_data_readl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
