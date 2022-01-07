; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_make_hba_operational.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_make_hba_operational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, i64 }

@UFSHCD_ENABLE_INTRS = common dso_local global i32 0, align 4
@INT_AGGR_DEF_TO = common dso_local global i32 0, align 4
@REG_UTP_TRANSFER_REQ_LIST_BASE_L = common dso_local global i32 0, align 4
@REG_UTP_TRANSFER_REQ_LIST_BASE_H = common dso_local global i32 0, align 4
@REG_UTP_TASK_REQ_LIST_BASE_L = common dso_local global i32 0, align 4
@REG_UTP_TASK_REQ_LIST_BASE_H = common dso_local global i32 0, align 4
@REG_CONTROLLER_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Host controller not ready to process requests\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_make_hba_operational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_make_hba_operational(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %6 = load i32, i32* @UFSHCD_ENABLE_INTRS, align 4
  %7 = call i32 @ufshcd_enable_intr(%struct.ufs_hba* %5, i32 %6)
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = call i64 @ufshcd_is_intr_aggr_allowed(%struct.ufs_hba* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load i32, i32* @INT_AGGR_DEF_TO, align 4
  %18 = call i32 @ufshcd_config_intr_aggr(%struct.ufs_hba* %12, i64 %16, i32 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %21 = call i32 @ufshcd_disable_intr_aggr(%struct.ufs_hba* %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %25 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = load i32, i32* @REG_UTP_TRANSFER_REQ_LIST_BASE_L, align 4
  %29 = call i32 @ufshcd_writel(%struct.ufs_hba* %23, i32 %27, i32 %28)
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @upper_32_bits(i32 %33)
  %35 = load i32, i32* @REG_UTP_TRANSFER_REQ_LIST_BASE_H, align 4
  %36 = call i32 @ufshcd_writel(%struct.ufs_hba* %30, i32 %34, i32 %35)
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %39 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = load i32, i32* @REG_UTP_TASK_REQ_LIST_BASE_L, align 4
  %43 = call i32 @ufshcd_writel(%struct.ufs_hba* %37, i32 %41, i32 %42)
  %44 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %46 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = load i32, i32* @REG_UTP_TASK_REQ_LIST_BASE_H, align 4
  %50 = call i32 @ufshcd_writel(%struct.ufs_hba* %44, i32 %48, i32 %49)
  %51 = call i32 (...) @wmb()
  %52 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %53 = load i32, i32* @REG_CONTROLLER_STATUS, align 4
  %54 = call i32 @ufshcd_readl(%struct.ufs_hba* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ufshcd_get_lists_status(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %22
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %60 = call i32 @ufshcd_enable_run_stop_reg(%struct.ufs_hba* %59)
  br label %68

61:                                               ; preds = %22
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %63 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ufshcd_enable_intr(%struct.ufs_hba*, i32) #1

declare dso_local i64 @ufshcd_is_intr_aggr_allowed(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_config_intr_aggr(%struct.ufs_hba*, i64, i32) #1

declare dso_local i32 @ufshcd_disable_intr_aggr(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_get_lists_status(i32) #1

declare dso_local i32 @ufshcd_enable_run_stop_reg(%struct.ufs_hba*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
