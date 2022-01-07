; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_peer_mw_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_peer_mw_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.intel_ntb_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ntb_peer_mw_get_addr(%struct.ntb_dev* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.intel_ntb_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %13 = call %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev* %12)
  store %struct.intel_ntb_dev* %13, %struct.intel_ntb_dev** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %16 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %21 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %19, %4
  %28 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ndev_mw_to_bar(%struct.intel_ntb_dev* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %27
  %36 = load i64*, i64** %8, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %40 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @pci_resource_start(i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %47 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %52 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %44, %57
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %35
  %61 = load i64*, i64** %9, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %65 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @pci_resource_len(i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %72 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %10, align 8
  %77 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %69, %82
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %60
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @ndev_mw_to_bar(%struct.intel_ntb_dev*, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
