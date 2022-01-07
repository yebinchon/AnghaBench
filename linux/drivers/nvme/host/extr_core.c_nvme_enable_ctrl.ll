; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_enable_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_enable_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvme_ctrl*, i32, i32*)*, i32 (%struct.nvme_ctrl*, i32, i32)* }

@NVME_REG_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Reading CAP failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Minimum device page size %u too large for host (%u)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NVME_CC_CSS_NVM = common dso_local global i32 0, align 4
@NVME_CC_MPS_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_AMS_RR = common dso_local global i32 0, align 4
@NVME_CC_SHN_NONE = common dso_local global i32 0, align 4
@NVME_CC_IOSQES = common dso_local global i32 0, align 4
@NVME_CC_IOCQES = common dso_local global i32 0, align 4
@NVME_CC_ENABLE = common dso_local global i32 0, align 4
@NVME_REG_CC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_enable_ctrl(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 12, i32* %5, align 4
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.nvme_ctrl*, i32, i32*)*, i32 (%struct.nvme_ctrl*, i32, i32*)** %10, align 8
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %13 = load i32, i32* @NVME_REG_CAP, align 4
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 2
  %16 = call i32 %11(%struct.nvme_ctrl* %12, i32 %13, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %102

26:                                               ; preds = %1
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NVME_CAP_MPSMIN(i32 %29)
  %31 = add nsw i32 %30, 12
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %102

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 1, %47
  %49 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @NVME_CC_CSS_NVM, align 4
  %52 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %54, 12
  %56 = load i32, i32* @NVME_CC_MPS_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @NVME_CC_AMS_RR, align 4
  %63 = load i32, i32* @NVME_CC_SHN_NONE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @NVME_CC_IOSQES, align 4
  %70 = load i32, i32* @NVME_CC_IOCQES, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @NVME_CC_ENABLE, align 4
  %77 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %82 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (%struct.nvme_ctrl*, i32, i32)*, i32 (%struct.nvme_ctrl*, i32, i32)** %84, align 8
  %86 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %87 = load i32, i32* @NVME_REG_CC, align 4
  %88 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %89 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 %85(%struct.nvme_ctrl* %86, i32 %87, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %46
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %102

96:                                               ; preds = %46
  %97 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %98 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %99 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @nvme_wait_ready(%struct.nvme_ctrl* %97, i32 %100, i32 1)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %94, %35, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @NVME_CAP_MPSMIN(i32) #1

declare dso_local i32 @nvme_wait_ready(%struct.nvme_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
