; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_bar4_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_bar4_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MEMBASE_II_SHIFT_REGISTER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"TIMEOUT:MEMBASE_II_SHIFT_REGISTER = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm80xx_bar4_shift(%struct.pm8001_hba_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %9 = load i32, i32* @MEMBASE_II_SHIFT_REGISTER, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %8, i32 0, i32 %9, i64 %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %17 = load i32, i32* @MEMBASE_II_SHIFT_REGISTER, align 4
  %18 = call i64 @pm8001_cr32(%struct.pm8001_hba_info* %16, i32 0, i32 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %15, label %30

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %35, i32 %37)
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i64) #1

declare dso_local i64 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
