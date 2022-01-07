; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_hba_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_hba_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_hba_exit(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = call i32 @ufshcd_variant_hba_exit(%struct.ufs_hba* %8)
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %11 = call i32 @ufshcd_setup_vreg(%struct.ufs_hba* %10, i32 0)
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = call i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba* %12)
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %15 = call i64 @ufshcd_is_clkscaling_supported(%struct.ufs_hba* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = call i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba* %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %7
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %28 = call i32 @ufshcd_setup_clocks(%struct.ufs_hba* %27, i32 0)
  %29 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %30 = call i32 @ufshcd_setup_hba_vreg(%struct.ufs_hba* %29, i32 0)
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ufshcd_variant_hba_exit(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_setup_vreg(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_clkscaling_supported(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_setup_clocks(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_setup_hba_vreg(%struct.ufs_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
