; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.intel_ntb_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.intel_ntb_dev*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_ntb3_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NTB device registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_ntb_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_to_node(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i64 @pdev_is_gen1(%struct.pci_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.intel_ntb_dev* @kzalloc_node(i32 16, i32 %16, i32 %17)
  store %struct.intel_ntb_dev* %18, %struct.intel_ntb_dev** %6, align 8
  %19 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %20 = icmp ne %struct.intel_ntb_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %120

24:                                               ; preds = %15
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @ndev_init_struct(%struct.intel_ntb_dev* %25, %struct.pci_dev* %26)
  %28 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @intel_ntb_init_pci(%struct.intel_ntb_dev* %28, %struct.pci_dev* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %117

34:                                               ; preds = %24
  %35 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %36 = call i32 @xeon_init_dev(%struct.intel_ntb_dev* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %114

40:                                               ; preds = %34
  br label %78

41:                                               ; preds = %2
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i64 @pdev_is_gen3(%struct.pci_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.intel_ntb_dev* @kzalloc_node(i32 16, i32 %46, i32 %47)
  store %struct.intel_ntb_dev* %48, %struct.intel_ntb_dev** %6, align 8
  %49 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %50 = icmp ne %struct.intel_ntb_dev* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %120

54:                                               ; preds = %45
  %55 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @ndev_init_struct(%struct.intel_ntb_dev* %55, %struct.pci_dev* %56)
  %58 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %59 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32* @intel_ntb3_ops, i32** %60, align 8
  %61 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @intel_ntb_init_pci(%struct.intel_ntb_dev* %61, %struct.pci_dev* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %117

67:                                               ; preds = %54
  %68 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %69 = call i32 @gen3_init_dev(%struct.intel_ntb_dev* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %114

73:                                               ; preds = %67
  br label %77

74:                                               ; preds = %41
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %120

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %40
  %79 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %80 = call i32 @ndev_reset_unsafe_flags(%struct.intel_ntb_dev* %79)
  %81 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %82 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.intel_ntb_dev*)*, i32 (%struct.intel_ntb_dev*)** %84, align 8
  %86 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %87 = call i32 %85(%struct.intel_ntb_dev* %86)
  %88 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %89 = call i32 @ndev_init_debugfs(%struct.intel_ntb_dev* %88)
  %90 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %91 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %90, i32 0, i32 0
  %92 = call i32 @ntb_register_device(%struct.TYPE_4__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %100

96:                                               ; preds = %78
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %122

100:                                              ; preds = %95
  %101 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %102 = call i32 @ndev_deinit_debugfs(%struct.intel_ntb_dev* %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i64 @pdev_is_gen1(%struct.pci_dev* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = call i64 @pdev_is_gen3(%struct.pci_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106, %100
  %111 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %112 = call i32 @xeon_deinit_dev(%struct.intel_ntb_dev* %111)
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %72, %39
  %115 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %116 = call i32 @intel_ntb_deinit_pci(%struct.intel_ntb_dev* %115)
  br label %117

117:                                              ; preds = %114, %66, %33
  %118 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %119 = call i32 @kfree(%struct.intel_ntb_dev* %118)
  br label %120

120:                                              ; preds = %117, %74, %51, %21
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %96
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i64 @pdev_is_gen1(%struct.pci_dev*) #1

declare dso_local %struct.intel_ntb_dev* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ndev_init_struct(%struct.intel_ntb_dev*, %struct.pci_dev*) #1

declare dso_local i32 @intel_ntb_init_pci(%struct.intel_ntb_dev*, %struct.pci_dev*) #1

declare dso_local i32 @xeon_init_dev(%struct.intel_ntb_dev*) #1

declare dso_local i64 @pdev_is_gen3(%struct.pci_dev*) #1

declare dso_local i32 @gen3_init_dev(%struct.intel_ntb_dev*) #1

declare dso_local i32 @ndev_reset_unsafe_flags(%struct.intel_ntb_dev*) #1

declare dso_local i32 @ndev_init_debugfs(%struct.intel_ntb_dev*) #1

declare dso_local i32 @ntb_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ndev_deinit_debugfs(%struct.intel_ntb_dev*) #1

declare dso_local i32 @xeon_deinit_dev(%struct.intel_ntb_dev*) #1

declare dso_local i32 @intel_ntb_deinit_pci(%struct.intel_ntb_dev*) #1

declare dso_local i32 @kfree(%struct.intel_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
