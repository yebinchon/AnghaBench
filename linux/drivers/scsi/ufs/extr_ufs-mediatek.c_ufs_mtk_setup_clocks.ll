; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-mediatek.c_ufs_mtk_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-mediatek.c_ufs_mtk_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_mtk_host = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32, i32)* @ufs_mtk_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_mtk_setup_clocks(%struct.ufs_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufs_mtk_host*, align 8
  %9 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %11 = call %struct.ufs_mtk_host* @ufshcd_get_variant(%struct.ufs_hba* %10)
  store %struct.ufs_mtk_host* %11, %struct.ufs_mtk_host** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ufs_mtk_host*, %struct.ufs_mtk_host** %8, align 8
  %15 = icmp ne %struct.ufs_mtk_host* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %37 [
    i32 128, label %19
    i32 129, label %28
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.ufs_mtk_host*, %struct.ufs_mtk_host** %8, align 8
  %24 = getelementptr inbounds %struct.ufs_mtk_host, %struct.ufs_mtk_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @phy_power_off(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %22, %19
  br label %37

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.ufs_mtk_host*, %struct.ufs_mtk_host** %8, align 8
  %33 = getelementptr inbounds %struct.ufs_mtk_host, %struct.ufs_mtk_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @phy_power_on(i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %17, %36, %27
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ufs_mtk_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
