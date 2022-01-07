; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_wait_for_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_wait_for_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_2__*, %struct.mvumi_hw_regs* }
%struct.TYPE_2__ = type { i32 }
%struct.mvumi_hw_regs = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HANDSHAKE_READYSTATE = common dso_local global i64 0, align 8
@DRBL_MU_RESET = common dso_local global i32 0, align 4
@FW_MAX_DELAY = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"FW reset failed [0x%x].\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_wait_for_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_wait_for_fw(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_hw_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %7 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %7, i32 0, i32 1
  %9 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  store %struct.mvumi_hw_regs* %9, %struct.mvumi_hw_regs** %4, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %12 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iowrite32(i32 0, i32 %13)
  %15 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %16 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ioread32(i32 %17)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %45, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @HANDSHAKE_READYSTATE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load i32, i32* @DRBL_MU_RESET, align 4
  %25 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %26 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iowrite32(i32 %24, i32 %27)
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @FW_MAX_DELAY, align 8
  %32 = load i64, i64* @HZ, align 8
  %33 = mul i64 %31, %32
  %34 = add i64 %30, %33
  %35 = call i64 @time_after(i64 %29, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @FAILED, align 4
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %23
  %46 = call i32 @msleep(i32 500)
  %47 = call i32 (...) @rmb()
  %48 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %49 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ioread32(i32 %50)
  store i64 %51, i64* %5, align 8
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i64 @ioread32(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
