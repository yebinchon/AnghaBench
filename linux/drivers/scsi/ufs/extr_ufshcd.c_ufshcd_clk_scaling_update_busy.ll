; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clk_scaling_update_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clk_scaling_update_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.ufs_clk_scaling }
%struct.ufs_clk_scaling = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_clk_scaling_update_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_clk_scaling_update_busy(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_clk_scaling*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %4, i32 0, i32 1
  store %struct.ufs_clk_scaling* %5, %struct.ufs_clk_scaling** %3, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = call i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %3, align 8
  %17 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = call i32 (...) @ktime_get()
  %22 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %3, align 8
  %23 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ktime_sub(i32 %21, i64 %24)
  %26 = call i64 @ktime_to_us(i32 %25)
  %27 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %3, align 8
  %28 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %3, align 8
  %34 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.ufs_clk_scaling*, %struct.ufs_clk_scaling** %3, align 8
  %36 = getelementptr inbounds %struct.ufs_clk_scaling, %struct.ufs_clk_scaling* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %9, %20, %15, %10
  ret void
}

declare dso_local i32 @ufshcd_is_clkscaling_supported(%struct.ufs_hba*) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
