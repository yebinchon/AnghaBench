; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c___ufshcd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c___ufshcd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i64, %struct.TYPE_2__, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@UFSHCD_STATE_OPERATIONAL = common dso_local global i64 0, align 8
@REQ_CLKS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @__ufshcd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ufshcd_release(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = call i32 @ufshcd_is_clkgating_allowed(%struct.ufs_hba* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %82

7:                                                ; preds = %1
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %7
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %18
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UFSHCD_STATE_OPERATIONAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %24
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %52 = call i64 @ufshcd_eh_in_progress(%struct.ufs_hba* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %45, %40, %35, %30, %24, %18, %7
  br label %82

55:                                               ; preds = %50
  %56 = load i32, i32* @REQ_CLKS_OFF, align 4
  %57 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %58 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %61 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_name(i32 %62)
  %64 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %65 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @trace_ufshcd_clk_gating(i32 %63, i32 %67)
  %69 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %70 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %74 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %77 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @msecs_to_jiffies(i32 %79)
  %81 = call i32 @queue_delayed_work(i32 %72, i32* %75, i32 %80)
  br label %82

82:                                               ; preds = %55, %54, %6
  ret void
}

declare dso_local i32 @ufshcd_is_clkgating_allowed(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_eh_in_progress(%struct.ufs_hba*) #1

declare dso_local i32 @trace_ufshcd_clk_gating(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
