; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_check_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_check_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@MSGU_SCRATCH_PAD_2 = common dso_local global i32 0, align 4
@SCRATCH_PAD1_ERR = common dso_local global i32 0, align 4
@SCRATCH_PAD_STATE_MASK = common dso_local global i32 0, align 4
@MSGU_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@SCRATCH_PAD2_ERR = common dso_local global i32 0, align 4
@MSGU_SCRATCH_PAD_3 = common dso_local global i32 0, align 4
@SCRATCH_PAD1_STATE_MASK = common dso_local global i32 0, align 4
@SCRATCH_PAD2_STATE_MASK = common dso_local global i32 0, align 4
@SCRATCH_PAD1_RDY = common dso_local global i32 0, align 4
@SCRATCH_PAD2_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @check_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fw_ready(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %9 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %7, i32 0, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %12 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %10, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @SCRATCH_PAD1_ERR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCRATCH_PAD_STATE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %21 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %19, i32 0, i32 %20)
  store i32 %21, i32* %4, align 4
  store i32 -1, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = load i32, i32* @SCRATCH_PAD2_ERR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SCRATCH_PAD_STATE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = load i32, i32* @MSGU_SCRATCH_PAD_3, align 4
  %31 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %29, i32 0, i32 %30)
  store i32 %31, i32* %5, align 4
  store i32 -1, i32* %2, align 4
  br label %76

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SCRATCH_PAD1_STATE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %40 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %38, i32 0, i32 %39)
  store i32 -1, i32* %2, align 4
  br label %76

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SCRATCH_PAD2_STATE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %76

47:                                               ; preds = %41
  store i32 1000000, i32* %6, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %52 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %50, i32 0, i32 %51)
  %53 = load i32, i32* @SCRATCH_PAD1_RDY, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %57 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %55, i32 0, i32 %56)
  %58 = load i32, i32* @SCRATCH_PAD2_RDY, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %76

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SCRATCH_PAD1_RDY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SCRATCH_PAD2_RDY, align 4
  %72 = icmp ne i32 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ true, %65 ], [ %72, %69 ]
  br i1 %74, label %48, label %75

75:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %63, %46, %37, %28, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
