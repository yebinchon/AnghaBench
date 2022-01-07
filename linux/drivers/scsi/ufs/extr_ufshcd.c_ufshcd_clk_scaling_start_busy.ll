; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clk_scaling_start_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clk_scaling_start_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_clk_scaling_start_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_clk_scaling_start_busy(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %71

8:                                                ; preds = %1
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %8
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %16
  br label %71

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %33 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = call i32 @queue_work(i32 %35, i32* %38)
  br label %40

40:                                               ; preds = %31, %28
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %49 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %52 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %55 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %46, %40
  %58 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %59 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = call i32 (...) @ktime_get()
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %69 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %7, %27, %63, %57
  ret void
}

declare dso_local i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
