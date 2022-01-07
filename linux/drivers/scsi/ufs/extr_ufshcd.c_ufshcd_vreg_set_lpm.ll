; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_vreg_set_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_vreg_set_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_vreg_set_lpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_vreg_set_lpm(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = call i32 @usleep_range(i32 2000, i32 2100)
  br label %15

15:                                               ; preds = %13, %6, %1
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = call i64 @ufshcd_is_ufs_dev_poweroff(%struct.ufs_hba* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %21 = call i64 @ufshcd_is_link_off(%struct.ufs_hba* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %25 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %31 = call i32 @ufshcd_setup_vreg(%struct.ufs_hba* %30, i32 0)
  br label %63

32:                                               ; preds = %23, %19, %15
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %34 = call i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %38 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ufshcd_toggle_vreg(i32 %39, i32 %43, i32 0)
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %46 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %36
  %49 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ufshcd_config_vreg_lpm(%struct.ufs_hba* %49, i32 %53)
  %55 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ufshcd_config_vreg_lpm(%struct.ufs_hba* %55, i32 %59)
  br label %61

61:                                               ; preds = %48, %36
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62, %29
  ret void
}

declare dso_local i32 @ufshcd_is_link_active(%struct.ufs_hba*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ufshcd_is_ufs_dev_poweroff(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_setup_vreg(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_toggle_vreg(i32, i32, i32) #1

declare dso_local i32 @ufshcd_config_vreg_lpm(%struct.ufs_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
