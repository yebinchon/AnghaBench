; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_set_phys_g3_with_ssc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_set_phys_g3_with_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@SAS2_SETTINGS_LOCAL_PHY_0_3_OFFSET = common dso_local global i32 0, align 4
@SAS2_SETTINGS_LOCAL_PHY_0_3_SHIFT_ADDR = common dso_local global i32 0, align 4
@SAS2_SETTINGS_LOCAL_PHY_4_7_OFFSET = common dso_local global i32 0, align 4
@SAS2_SETTINGS_LOCAL_PHY_4_7_SHIFT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32)* @mpi_set_phys_g3_with_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_set_phys_g3_with_ssc(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %10 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %13, i32 196608)
  %15 = icmp eq i32 -1, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %70

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 16384, %26
  %28 = add nsw i32 4212, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %29, i32 2, i32 %30, i32 -2147478271)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %36, i32 262144)
  %38 = icmp eq i32 -1, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %70

44:                                               ; preds = %35
  store i32 4, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 4
  %51 = mul nsw i32 16384, %50
  %52 = add nsw i32 4212, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %53, i32 2, i32 %54, i32 -2147478271)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %60, i32 2, i32 216)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %62, i32 2, i32 216, i32 -2147434474)
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %64, i32 0)
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %67 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %59, %39, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
