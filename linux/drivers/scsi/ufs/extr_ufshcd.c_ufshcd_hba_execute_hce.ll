; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_execute_hce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_execute_hce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@PRE_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Controller enable failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UFSHCD_UIC_MASK = common dso_local global i32 0, align 4
@POST_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_hba_execute_hce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_hba_execute_hce(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %6 = call i64 @ufshcd_is_hba_active(%struct.ufs_hba* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %10 = call i32 @ufshcd_hba_stop(%struct.ufs_hba* %9, i32 1)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = call i32 @ufshcd_set_link_off(%struct.ufs_hba* %12)
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %15 = load i32, i32* @PRE_CHANGE, align 4
  %16 = call i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba* %14, i32 %15)
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %18 = call i32 @ufshcd_hba_start(%struct.ufs_hba* %17)
  %19 = call i32 @usleep_range(i32 1000, i32 1100)
  store i32 10, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %11
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %22 = call i64 @ufshcd_is_hba_active(%struct.ufs_hba* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %27
  %38 = call i32 @usleep_range(i32 5000, i32 5100)
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %41 = load i32, i32* @UFSHCD_UIC_MASK, align 4
  %42 = call i32 @ufshcd_enable_intr(%struct.ufs_hba* %40, i32 %41)
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %44 = load i32, i32* @POST_CHANGE, align 4
  %45 = call i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba* %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %30
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @ufshcd_is_hba_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_hba_stop(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_set_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vops_hce_enable_notify(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_hba_start(%struct.ufs_hba*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ufshcd_enable_intr(%struct.ufs_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
