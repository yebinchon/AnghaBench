; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_soft_reset_ready_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_soft_reset_ready_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"MPI state is not ready\0A\00", align 1
@MSGU_SCRATCH_PAD_2 = common dso_local global i32 0, align 4
@SCRATCH_PAD2_FWRDY_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware is ready for reset .\0A\00", align 1
@RB6_ACCESS_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@SPC_RB6_OFFSET = common dso_local global i32 0, align 4
@RB6_MAGIC_NUMBER_RST = common dso_local global i32 0, align 4
@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"TIMEOUT:MSGU_SCRATCH_PAD1=0x%x, MSGU_SCRATCH_PAD2=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SCRATCH_PAD0 value = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"SCRATCH_PAD3 value = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @soft_reset_ready_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soft_reset_ready_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %9 = call i64 @mpi_uninit_check(%struct.pm8001_hba_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %13 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %12, i32 %13)
  store i32 -1, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %18 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %16, i32 0, i32 %17)
  %19 = load i32, i32* @SCRATCH_PAD2_FWRDY_RST, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SCRATCH_PAD2_FWRDY_RST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %25, i32 %26)
  br label %97

28:                                               ; preds = %15
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = load i32, i32* @RB6_ACCESS_REG, align 4
  %35 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %33, i32 %34)
  %36 = icmp eq i32 -1, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = load i32, i32* @RB6_ACCESS_REG, align 4
  %44 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %42, i32 %44)
  store i32 -1, i32* %2, align 4
  br label %98

46:                                               ; preds = %28
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = load i32, i32* @SPC_RB6_OFFSET, align 4
  %49 = load i32, i32* @RB6_MAGIC_NUMBER_RST, align 4
  %50 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %47, i32 2, i32 %48, i32 %49)
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = load i32, i32* @SPC_RB6_OFFSET, align 4
  %53 = load i32, i32* @RB6_MAGIC_NUMBER_RST, align 4
  %54 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %51, i32 2, i32 %52, i32 %53)
  %55 = call i32 @mdelay(i32 100)
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %58 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %56, i32 0, i32 %57)
  %59 = load i32, i32* @SCRATCH_PAD2_FWRDY_RST, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SCRATCH_PAD2_FWRDY_RST, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %46
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %67 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %65, i32 0, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %69 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %70 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %68, i32 0, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %71, i32 %74)
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %78 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %79 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %77, i32 0, i32 %78)
  %80 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %76, i32 %80)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %84 = load i32, i32* @MSGU_SCRATCH_PAD_3, align 4
  %85 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %83, i32 0, i32 %84)
  %86 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %82, i32 %86)
  %88 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %89 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  store i32 -1, i32* %2, align 4
  br label %98

92:                                               ; preds = %46
  %93 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %94 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %93, i32 0, i32 0
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %24
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %64, %37, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @mpi_uninit_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
