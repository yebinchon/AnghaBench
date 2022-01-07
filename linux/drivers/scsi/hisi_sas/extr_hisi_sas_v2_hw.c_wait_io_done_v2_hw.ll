; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_wait_io_done_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_wait_io_done_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@LINK_DFX2 = common dso_local global i32 0, align 4
@DMA_TX_DFX0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IO not done phy%d, port264:0x%x port200:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32)* @wait_io_done_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_io_done_v2_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %7, align 4
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LINK_DFX2, align 4
  %22 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 16320
  %25 = ashr i32 %24, 6
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %49

29:                                               ; preds = %18
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DMA_TX_DFX0, align 4
  %33 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 511
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %49

38:                                               ; preds = %29
  %39 = call i32 @udelay(i32 10)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %37, %28
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
