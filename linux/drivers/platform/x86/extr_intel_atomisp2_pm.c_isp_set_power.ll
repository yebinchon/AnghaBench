; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_atomisp2_pm.c_isp_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_atomisp2_pm.c_isp_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ISPSSPM0_IUNIT_POWER_ON = common dso_local global i32 0, align 4
@ISPSSPM0_IUNIT_POWER_OFF = common dso_local global i32 0, align 4
@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@ISPSSPM0 = common dso_local global i32 0, align 4
@ISPSSPM0_ISPSSC_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ISPSSPM0_ISPSSS_MASK = common dso_local global i32 0, align 4
@ISPSSPM0_ISPSSS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IUNIT power-%s timeout.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @isp_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_set_power(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ISPSSPM0_IUNIT_POWER_ON, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ISPSSPM0_IUNIT_POWER_OFF, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %18 = load i32, i32* @MBI_REG_READ, align 4
  %19 = load i32, i32* @ISPSSPM0, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ISPSSPM0_ISPSSC_MASK, align 4
  %22 = call i32 @iosf_mbi_modify(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i64 @msecs_to_jiffies(i32 50)
  %25 = add i64 %23, %24
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %15, %55
  %27 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %28 = load i32, i32* @MBI_REG_READ, align 4
  %29 = load i32, i32* @ISPSSPM0, align 4
  %30 = call i32 @iosf_mbi_read(i32 %27, i32 %28, i32 %29, i32* %8)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ISPSSPM0_ISPSSS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @ISPSSPM0_ISPSSS_OFFSET, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %57

40:                                               ; preds = %26
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @time_after(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %40
  %56 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %26

57:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @iosf_mbi_modify(i32, i32, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
