; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_hw_chip_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_hw_chip_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"chip reset start\0A\00", align 1
@SPC_REG_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SPC soft reset Complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"chip reset finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @pm80xx_hw_chip_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm80xx_hw_chip_rst(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  %4 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %5 = call i32 @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %4, i32 %5)
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %8 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %9 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %7, i32 0, i32 %8, i32 17)
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %11 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %10, i32 %11)
  %13 = call i32 @udelay(i32 10)
  store i32 20, i32* %3, align 4
  br label %14

14:                                               ; preds = %16, %1
  %15 = call i32 @mdelay(i32 1)
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %16
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %22 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %21, i32 %22)
  ret void
}

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
