; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_set_open_retry_interval_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_set_open_retry_interval_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@OPEN_RETRY_INTERVAL_PHY_0_3_OFFSET = common dso_local global i32 0, align 4
@OPEN_RETRY_INTERVAL_PHY_0_3_SHIFT_ADDR = common dso_local global i32 0, align 4
@OPEN_RETRY_INTERVAL_PHY_4_7_OFFSET = common dso_local global i32 0, align 4
@OPEN_RETRY_INTERVAL_PHY_4_7_SHIFT_ADDR = common dso_local global i32 0, align 4
@OPEN_RETRY_INTERVAL_REG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32)* @mpi_set_open_retry_interval_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_set_open_retry_interval_reg(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 65535
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %16 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %15, i32 196608)
  %17 = icmp eq i32 -1, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  br label %70

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 16384, %28
  %30 = add nsw i32 12468, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %31, i32 2, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %39, i32 262144)
  %41 = icmp eq i32 -1, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %70

47:                                               ; preds = %38
  store i32 4, i32* %7, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 4
  %54 = mul nsw i32 16384, %53
  %55 = add nsw i32 12468, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %56, i32 2, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %64, i32 0)
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %67 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %42, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
