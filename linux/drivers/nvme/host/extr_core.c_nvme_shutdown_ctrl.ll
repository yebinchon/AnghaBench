; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_shutdown_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_shutdown_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvme_ctrl*, i32, i32)*, i32 (%struct.nvme_ctrl*, i32, i32*)* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NVME_CC_SHN_MASK = common dso_local global i32 0, align 4
@NVME_CC_SHN_NORMAL = common dso_local global i32 0, align 4
@NVME_REG_CC = common dso_local global i32 0, align 4
@NVME_REG_CSTS = common dso_local global i32 0, align 4
@NVME_CSTS_SHST_MASK = common dso_local global i32 0, align 4
@NVME_CSTS_SHST_CMPLT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Device shutdown incomplete; abort shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_shutdown_ctrl(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = mul i64 %10, %11
  %13 = add i64 %7, %12
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @NVME_CC_SHN_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @NVME_CC_SHN_NORMAL, align 4
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nvme_ctrl*, i32, i32)*, i32 (%struct.nvme_ctrl*, i32, i32)** %28, align 8
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %31 = load i32, i32* @NVME_REG_CC, align 4
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %29(%struct.nvme_ctrl* %30, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %78, %40
  %42 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.nvme_ctrl*, i32, i32*)*, i32 (%struct.nvme_ctrl*, i32, i32*)** %45, align 8
  %47 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %48 = load i32, i32* @NVME_REG_CSTS, align 4
  %49 = call i32 %46(%struct.nvme_ctrl* %47, i32 %48, i32* %5)
  store i32 %49, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NVME_CSTS_SHST_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @NVME_CSTS_SHST_CMPLT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %79

58:                                               ; preds = %51
  %59 = call i32 @msleep(i32 100)
  %60 = load i32, i32* @current, align 4
  %61 = call i64 @fatal_signal_pending(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINTR, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %58
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @time_after(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %66
  br label %41

79:                                               ; preds = %57, %41
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %71, %63, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
