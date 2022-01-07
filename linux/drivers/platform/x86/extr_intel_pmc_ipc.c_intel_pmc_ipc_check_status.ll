; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_intel_pmc_ipc_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_intel_pmc_ipc_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@ipcdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IPC_MAX_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IPC_LOOP_CNT = common dso_local global i32 0, align 4
@IPC_STATUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"IPC timed out, TS=0x%x, CMD=0x%x\0A\00", align 1
@IPC_STATUS_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPC_CMD_SIZE = common dso_local global i32 0, align 4
@ipc_err_sources = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"IPC failed: %s, STS=0x%x, CMD=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"IPC failed: unknown, STS=0x%x, CMD=0x%x\0A\00", align 1
@IPC_ERR_UNSIGNEDKERNEL = common dso_local global i32 0, align 4
@IPC_ERR_EMSECURITY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_pmc_ipc_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmc_ipc_check_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 3), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* @IPC_MAX_SEC, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i64 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 2), i32 %11)
  %13 = icmp eq i64 0, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %8
  br label %40

18:                                               ; preds = %0
  %19 = load i32, i32* @IPC_LOOP_CNT, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %31, %18
  %21 = call i32 (...) @ipc_read_status()
  %22 = load i32, i32* @IPC_STATUS_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call i32 @udelay(i32 1)
  br label %20

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %17
  %41 = call i32 (...) @ipc_read_status()
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  %50 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %1, align 4
  br label %97

52:                                               ; preds = %40
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @IPC_STATUS_ERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @IPC_CMD_SIZE, align 4
  %62 = ashr i32 %60, %61
  %63 = and i32 %62, 255
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** @ipc_err_sources, align 8
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 4
  %70 = load i32*, i32** @ipc_err_sources, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  %77 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %57
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 4
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  %82 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %68
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IPC_ERR_UNSIGNEDKERNEL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @IPC_ERR_EMSECURITY, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @EACCES, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %52
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %95, %46
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ipc_read_status(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
