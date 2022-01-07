; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_tune_pa_tactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_tune_pa_tactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@RX_MIN_ACTIVATETIME_CAPABILITY = common dso_local global i32 0, align 4
@RX_MIN_ACTIVATETIME_UNIT_US = common dso_local global i32 0, align 4
@PA_TACTIVATE_TIME_UNIT_US = common dso_local global i32 0, align 4
@PA_TACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_tune_pa_tactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_tune_pa_tactivate(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = load i32, i32* @RX_MIN_ACTIVATETIME_CAPABILITY, align 4
  %8 = call i32 @UIC_ARG_MPHY_RX_GEN_SEL_INDEX(i32 0)
  %9 = call i32 @UIC_ARG_MIB_SEL(i32 %7, i32 %8)
  %10 = call i32 @ufshcd_dme_peer_get(%struct.ufs_hba* %6, i32 %9, i32* %4)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RX_MIN_ACTIVATETIME_UNIT_US, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @PA_TACTIVATE_TIME_UNIT_US, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %21 = load i32, i32* @PA_TACTIVATE, align 4
  %22 = call i32 @UIC_ARG_MIB(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %20, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ufshcd_dme_peer_get(%struct.ufs_hba*, i32, i32*) #1

declare dso_local i32 @UIC_ARG_MIB_SEL(i32, i32) #1

declare dso_local i32 @UIC_ARG_MPHY_RX_GEN_SEL_INDEX(i32) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @UIC_ARG_MIB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
