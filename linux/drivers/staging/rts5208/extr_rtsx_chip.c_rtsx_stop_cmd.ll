; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@RTSX_HCBAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BAR (0x%02x): 0x%08x\0A\00", align 1
@RTSX_HCBCTLR = common dso_local global i32 0, align 4
@STOP_CMD = common dso_local global i32 0, align 4
@RTSX_HDBCTLR = common dso_local global i32 0, align 4
@STOP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"0x%04X: 0x%02x\0A\00", align 1
@DMACTL = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_stop_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 8
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* @RTSX_HCBAR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtsx_readl(%struct.rtsx_chip* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = call i32 @rtsx_dev(%struct.rtsx_chip* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = load i32, i32* @RTSX_HCBCTLR, align 4
  %32 = load i32, i32* @STOP_CMD, align 4
  %33 = call i32 @rtsx_writel(%struct.rtsx_chip* %30, i32 %31, i32 %32)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = load i32, i32* @RTSX_HDBCTLR, align 4
  %36 = load i32, i32* @STOP_DMA, align 4
  %37 = call i32 @rtsx_writel(%struct.rtsx_chip* %34, i32 %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %52, %29
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 65056, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rtsx_read_register(%struct.rtsx_chip* %44, i32 %45, i32* %9)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %48 = call i32 @rtsx_dev(%struct.rtsx_chip* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = load i32, i32* @DMACTL, align 4
  %58 = call i32 @rtsx_write_register(%struct.rtsx_chip* %56, i32 %57, i32 128, i32 128)
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %60 = load i32, i32* @RBCTL, align 4
  %61 = call i32 @rtsx_write_register(%struct.rtsx_chip* %59, i32 %60, i32 128, i32 128)
  ret void
}

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
