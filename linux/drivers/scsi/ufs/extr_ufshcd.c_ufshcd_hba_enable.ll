; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32 }

@UFSHCI_QUIRK_BROKEN_HCE = common dso_local global i32 0, align 4
@PRE_CHANGE = common dso_local global i32 0, align 4
@UFSHCD_UIC_MASK = common dso_local global i32 0, align 4
@POST_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Host controller enable failed with non-hce\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_hba_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_hba_enable(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UFSHCI_QUIRK_BROKEN_HCE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %12 = call i32 @ufshcd_set_link_off(%struct.ufs_hba* %11)
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = load i32, i32* @PRE_CHANGE, align 4
  %15 = call i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba* %13, i32 %14)
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = load i32, i32* @UFSHCD_UIC_MASK, align 4
  %18 = call i32 @ufshcd_enable_intr(%struct.ufs_hba* %16, i32 %17)
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = call i32 @ufshcd_dme_reset(%struct.ufs_hba* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %10
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %25 = call i32 @ufshcd_dme_enable(%struct.ufs_hba* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %30 = load i32, i32* @POST_CHANGE, align 4
  %31 = call i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %10
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %44 = call i32 @ufshcd_hba_execute_hce(%struct.ufs_hba* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ufshcd_set_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_enable_intr(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_dme_reset(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_dme_enable(%struct.ufs_hba*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ufshcd_hba_execute_hce(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
