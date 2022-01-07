; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_peer_mw_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_peer_mw_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.amd_ntb_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32*, i32*)* @amd_ntb_peer_mw_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_peer_mw_get_addr(%struct.ntb_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.amd_ntb_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %13 = call %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev* %12)
  store %struct.amd_ntb_dev* %13, %struct.amd_ntb_dev** %10, align 8
  %14 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ndev_mw_to_bar(%struct.amd_ntb_dev* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %10, align 8
  %26 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pci_resource_start(i32 %28, i32 %29)
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %10, align 8
  %37 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @pci_resource_len(i32 %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @ndev_mw_to_bar(%struct.amd_ntb_dev*, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
