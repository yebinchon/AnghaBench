; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_tune_unipro_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_tune_unipro_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@UFS_DEVICE_QUIRK_PA_TACTIVATE = common dso_local global i32 0, align 4
@PA_TACTIVATE = common dso_local global i32 0, align 4
@UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_tune_unipro_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_tune_unipro_params(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = call i64 @ufshcd_is_unipro_pa_params_tuning_req(%struct.ufs_hba* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %8 = call i32 @ufshcd_tune_pa_tactivate(%struct.ufs_hba* %7)
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = call i32 @ufshcd_tune_pa_hibern8time(%struct.ufs_hba* %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UFS_DEVICE_QUIRK_PA_TACTIVATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = load i32, i32* @PA_TACTIVATE, align 4
  %21 = call i32 @UIC_ARG_MIB(i32 %20)
  %22 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %19, i32 %21, i32 10)
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %25 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = call i32 @ufshcd_quirk_tune_host_pa_tactivate(%struct.ufs_hba* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = call i32 @ufshcd_vops_apply_dev_quirks(%struct.ufs_hba* %34)
  ret void
}

declare dso_local i64 @ufshcd_is_unipro_pa_params_tuning_req(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_tune_pa_tactivate(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_tune_pa_hibern8time(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @ufshcd_quirk_tune_host_pa_tactivate(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vops_apply_dev_quirks(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
