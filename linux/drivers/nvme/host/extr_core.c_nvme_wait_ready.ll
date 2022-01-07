; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvme_ctrl*, i32, i32*)* }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@NVME_REG_CSTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Device not ready; aborting %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"initialisation\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32, i32)* @nvme_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_wait_ready(%struct.nvme_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @NVME_CAP_TIMEOUT(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  %18 = load i32, i32* @jiffies, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NVME_CSTS_RDY, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %75, %26
  %29 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nvme_ctrl*, i32, i32*)*, i32 (%struct.nvme_ctrl*, i32, i32*)** %32, align 8
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %35 = load i32, i32* @NVME_REG_CSTS, align 4
  %36 = call i32 %33(%struct.nvme_ctrl* %34, i32 %35, i32* %9)
  store i32 %36, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NVME_CSTS_RDY, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %76

51:                                               ; preds = %44
  %52 = call i32 @msleep(i32 100)
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @fatal_signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EINTR, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %51
  %60 = load i32, i32* @jiffies, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @time_after(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %78

75:                                               ; preds = %59
  br label %28

76:                                               ; preds = %50, %28
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %64, %56, %41
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @NVME_CAP_TIMEOUT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
