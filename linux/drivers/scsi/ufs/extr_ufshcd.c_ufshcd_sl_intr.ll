; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_sl_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_sl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@UFSHCD_ERROR_MASK = common dso_local global i32 0, align 4
@UFSHCD_UIC_HIBERN8_MASK = common dso_local global i32 0, align 4
@UFSHCD_UIC_MASK = common dso_local global i32 0, align 4
@UTP_TASK_REQ_COMPL = common dso_local global i32 0, align 4
@UTP_TRANSFER_REQ_COMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i32)* @ufshcd_sl_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_sl_intr(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @UFSHCD_ERROR_MASK, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %9 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ufshcd_is_auto_hibern8_error(%struct.ufs_hba* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @UFSHCD_UIC_HIBERN8_MASK, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %19 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %29 = call i32 @ufshcd_check_errors(%struct.ufs_hba* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @UFSHCD_UIC_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ufshcd_uic_cmd_compl(%struct.ufs_hba* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @UTP_TASK_REQ_COMPL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %46 = call i32 @ufshcd_tmc_handler(%struct.ufs_hba* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @UTP_TRANSFER_REQ_COMPL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %54 = call i32 @ufshcd_transfer_req_compl(%struct.ufs_hba* %53)
  br label %55

55:                                               ; preds = %52, %47
  ret void
}

declare dso_local i64 @ufshcd_is_auto_hibern8_error(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_check_errors(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_uic_cmd_compl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_tmc_handler(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_transfer_req_compl(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
