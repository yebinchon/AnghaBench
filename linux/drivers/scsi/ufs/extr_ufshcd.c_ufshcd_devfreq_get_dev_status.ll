; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_devfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_devfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i64, i32 }
%struct.ufs_hba = type { %struct.TYPE_2__*, i64, %struct.ufs_clk_scaling }
%struct.TYPE_2__ = type { i32 }
%struct.ufs_clk_scaling = type { i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @ufshcd_devfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_devfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.devfreq_dev_status*, align 8
  %6 = alloca %struct.ufs_hba*, align 8
  %7 = alloca %struct.ufs_clk_scaling*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ufs_hba* @dev_get_drvdata(%struct.device* %9)
  store %struct.ufs_hba* %10, %struct.ufs_hba** %6, align 8
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 2
  store %struct.ufs_clk_scaling* %12, %struct.ufs_clk_scaling** %7, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %14 = call i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %21 = call i32 @memset(%struct.devfreq_dev_status* %20, i32 0, i32 16)
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %23 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %30 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %64

34:                                               ; preds = %19
  %35 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %36 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = call i64 (...) @ktime_get()
  %41 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %42 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ktime_sub(i64 %40, i64 %43)
  %45 = call i64 @ktime_to_us(i32 %44)
  %46 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %47 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %39, %34
  %51 = load i64, i64* @jiffies, align 8
  %52 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %53 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = call i32 @jiffies_to_usecs(i64 %55)
  %57 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %58 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %60 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %63 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %50, %33
  %65 = load i64, i64* @jiffies, align 8
  %66 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %67 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %69 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %71 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = call i64 (...) @ktime_get()
  %76 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %77 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %79 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %85

80:                                               ; preds = %64
  %81 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %82 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %7, align 8
  %84 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %87 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32 %90, i64 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.ufs_hba* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba*) #1

declare dso_local i32 @memset(%struct.devfreq_dev_status*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i64, i64) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
