; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_mw_get_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_mw_get_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.intel_ntb_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NTB_DEF_PEER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ntb_mw_get_align(%struct.ntb_dev* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.intel_ntb_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %19 = call %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev* %18)
  store %struct.intel_ntb_dev* %19, %struct.intel_ntb_dev** %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NTB_DEF_PEER_IDX, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %91

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %29 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %34 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %32, %26
  %41 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ndev_mw_to_bar(%struct.intel_ntb_dev* %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %7, align 4
  br label %91

48:                                               ; preds = %40
  %49 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %50 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @pci_resource_len(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %57 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %63 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %16, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %14, align 8
  %73 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @pci_resource_len(i32 %75, i32 %76)
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32*, i32** %12, align 8
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %46, %23
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @ndev_mw_to_bar(%struct.intel_ntb_dev*, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
