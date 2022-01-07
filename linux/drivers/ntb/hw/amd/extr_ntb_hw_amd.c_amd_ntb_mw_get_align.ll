; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_mw_get_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_mw_get_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.amd_ntb_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NTB_DEF_PEER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32, i32*, i32*, i32*)* @amd_ntb_mw_get_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_mw_get_align(%struct.ntb_dev* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.amd_ntb_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %17 = call %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev* %16)
  store %struct.amd_ntb_dev* %17, %struct.amd_ntb_dev** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NTB_DEF_PEER_IDX, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %55

24:                                               ; preds = %6
  %25 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ndev_mw_to_bar(%struct.amd_ntb_dev* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %7, align 4
  br label %55

32:                                               ; preds = %24
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @SZ_4K, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %12, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %14, align 8
  %48 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @pci_resource_len(i32 %50, i32 %51)
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %43
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %30, %21
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @ndev_mw_to_bar(%struct.amd_ntb_dev*, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
