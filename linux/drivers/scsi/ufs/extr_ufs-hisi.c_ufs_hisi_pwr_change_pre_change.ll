; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_pwr_change_pre_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_pwr_change_pre_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_hisi_host = type { i32 }

@UFS_HISI_CAP_PHY10nm = common dso_local global i32 0, align 4
@UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ufs flash device must set VS_DebugSaveConfigTime 0x10\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_hisi_pwr_change_pre_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_hisi_pwr_change_pre_change(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_hisi_host*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba* %4)
  store %struct.ufs_hisi_host* %5, %struct.ufs_hisi_host** %3, align 8
  %6 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @UFS_HISI_CAP_PHY10nm, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = call i32 @UIC_ARG_MIB(i32 53408)
  %15 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %13, i32 %14, i32 19)
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = call i32 @UIC_ARG_MIB(i32 5458)
  %18 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %16, i32 %17, i32 79)
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = call i32 @UIC_ARG_MIB(i32 5460)
  %21 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %19, i32 %20, i32 79)
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %23 = call i32 @UIC_ARG_MIB(i32 5462)
  %24 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %22, i32 %23, i32 79)
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = call i32 @UIC_ARG_MIB(i32 5543)
  %27 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %25, i32 %26, i32 10)
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %29 = call i32 @UIC_ARG_MIB(i32 5544)
  %30 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %28, i32 %29, i32 10)
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = call i32 @UIC_ARG_MIB_SEL(i32 53381, i32 0)
  %33 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %36 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %44 = call i32 @UIC_ARG_MIB(i32 53408)
  %45 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %43, i32 %44, i32 16)
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = call i32 @UIC_ARG_MIB(i32 5462)
  %48 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %46, i32 %47, i32 72)
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %51 = call i32 @UIC_ARG_MIB(i32 5544)
  %52 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %50, i32 %51, i32 1)
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %54 = call i32 @UIC_ARG_MIB(i32 5468)
  %55 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %53, i32 %54, i32 0)
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = call i32 @UIC_ARG_MIB(i32 5552)
  %58 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %56, i32 %57, i32 8191)
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %60 = call i32 @UIC_ARG_MIB(i32 5553)
  %61 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %59, i32 %60, i32 65535)
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %63 = call i32 @UIC_ARG_MIB(i32 5554)
  %64 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %62, i32 %63, i32 32767)
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = call i32 @UIC_ARG_MIB(i32 53313)
  %67 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %65, i32 %66, i32 8191)
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %69 = call i32 @UIC_ARG_MIB(i32 53314)
  %70 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %68, i32 %69, i32 65535)
  %71 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %72 = call i32 @UIC_ARG_MIB(i32 53315)
  %73 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %71, i32 %72, i32 32767)
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %75 = call i32 @UIC_ARG_MIB(i32 5555)
  %76 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %74, i32 %75, i32 8191)
  %77 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %78 = call i32 @UIC_ARG_MIB(i32 5556)
  %79 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %77, i32 %78, i32 65535)
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %81 = call i32 @UIC_ARG_MIB(i32 5557)
  %82 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %80, i32 %81, i32 32767)
  %83 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %84 = call i32 @UIC_ARG_MIB(i32 53316)
  %85 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %83, i32 %84, i32 8191)
  %86 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %87 = call i32 @UIC_ARG_MIB(i32 53317)
  %88 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %86, i32 %87, i32 65535)
  %89 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %90 = call i32 @UIC_ARG_MIB(i32 53318)
  %91 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %89, i32 %90, i32 32767)
  ret void
}

declare dso_local %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @UIC_ARG_MIB_SEL(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
