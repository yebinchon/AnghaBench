; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_devfreq_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_devfreq_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@POST_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_devfreq_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_devfreq_scale(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %8 = call i32 @ufshcd_hold(%struct.ufs_hba* %7, i32 0)
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %10 = call i32 @ufshcd_clock_scaling_prepare(%struct.ufs_hba* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %20 = call i32 @ufshcd_scale_gear(%struct.ufs_hba* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %55

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ufshcd_scale_clks(%struct.ufs_hba* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %36 = call i32 @ufshcd_scale_gear(%struct.ufs_hba* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %31
  br label %55

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %43 = call i32 @ufshcd_scale_gear(%struct.ufs_hba* %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %48 = call i32 @ufshcd_scale_clks(%struct.ufs_hba* %47, i32 0)
  br label %55

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @POST_CHANGE, align 4
  %54 = call i32 @ufshcd_vops_clk_scale_notify(%struct.ufs_hba* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %46, %37, %23
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %57 = call i32 @ufshcd_clock_scaling_unprepare(%struct.ufs_hba* %56)
  %58 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %59 = call i32 @ufshcd_release(%struct.ufs_hba* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ufshcd_hold(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_clock_scaling_prepare(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_scale_gear(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_scale_clks(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_vops_clk_scale_notify(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_clock_scaling_unprepare(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_release(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
