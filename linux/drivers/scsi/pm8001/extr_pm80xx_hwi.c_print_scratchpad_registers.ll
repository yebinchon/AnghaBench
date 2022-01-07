; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_print_scratchpad_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_print_scratchpad_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"MSGU_SCRATCH_PAD_0: 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"MSGU_SCRATCH_PAD_1:0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MSGU_SCRATCH_PAD_2: 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"MSGU_SCRATCH_PAD_3: 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_0: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_1: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_2: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_3: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_4: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"MSGU_HOST_SCRATCH_PAD_5: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"MSGU_RSVD_SCRATCH_PAD_0: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_6 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"MSGU_RSVD_SCRATCH_PAD_1: 0x%x\0A\00", align 1
@MSGU_HOST_SCRATCH_PAD_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @print_scratchpad_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_scratchpad_registers(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  %3 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %4 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %5 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %6 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %4, i32 0, i32 %5)
  %7 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %3, i32 %7)
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %11 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %12 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %10, i32 0, i32 %11)
  %13 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %9, i32 %13)
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %17 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %18 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %16, i32 0, i32 %17)
  %19 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %15, i32 %19)
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %23 = load i32, i32* @MSGU_SCRATCH_PAD_3, align 4
  %24 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %22, i32 0, i32 %23)
  %25 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %21, i32 %25)
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %29 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_0, align 4
  %30 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %28, i32 0, i32 %29)
  %31 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %27, i32 %31)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %35 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_1, align 4
  %36 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %34, i32 0, i32 %35)
  %37 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %33, i32 %37)
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %41 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_2, align 4
  %42 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %40, i32 0, i32 %41)
  %43 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  %44 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %39, i32 %43)
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %47 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_3, align 4
  %48 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %46, i32 0, i32 %47)
  %49 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %45, i32 %49)
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %53 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_4, align 4
  %54 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %52, i32 0, i32 %53)
  %55 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %51, i32 %55)
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %59 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_5, align 4
  %60 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %58, i32 0, i32 %59)
  %61 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %57, i32 %61)
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %65 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_6, align 4
  %66 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %64, i32 0, i32 %65)
  %67 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %66)
  %68 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %63, i32 %67)
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %70 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %71 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_7, align 4
  %72 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %70, i32 0, i32 %71)
  %73 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  %74 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %69, i32 %73)
  ret void
}

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
