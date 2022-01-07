; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_system_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_system_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, i32, i32, i32 }

@UFS_SYSTEM_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_system_suspend(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 (...) @ktime_get()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = icmp ne %struct.ufs_hba* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %75

15:                                               ; preds = %9
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ufs_get_pm_lvl_to_dev_pwr_mode(i32 %18)
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %21 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %26 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ufs_get_pm_lvl_to_link_pwr_state(i32 %27)
  %29 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %30 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %51

34:                                               ; preds = %24, %15
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %36 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @pm_runtime_suspended(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %42 = call i32 @ufshcd_runtime_resume(%struct.ufs_hba* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %49 = load i32, i32* @UFS_SYSTEM_PM, align 4
  %50 = call i32 @ufshcd_suspend(%struct.ufs_hba* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %45, %33
  %52 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %53 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_name(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (...) @ktime_get()
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ktime_sub(i32 %57, i32 %58)
  %60 = call i32 @ktime_to_us(i32 %59)
  %61 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %62 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %65 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trace_ufshcd_system_suspend(i32 %55, i32 %56, i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %51
  %71 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %72 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %51
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ufs_get_pm_lvl_to_dev_pwr_mode(i32) #1

declare dso_local i32 @ufs_get_pm_lvl_to_link_pwr_state(i32) #1

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @ufshcd_runtime_resume(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_suspend(%struct.ufs_hba*, i32) #1

declare dso_local i32 @trace_ufshcd_system_suspend(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
