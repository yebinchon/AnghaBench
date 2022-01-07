; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whci.c_whci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whci.c_whci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.whci_card = type { i32, i32, %struct.pci_dev* }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"whci (capability data)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot bind UWB radio controller: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"warning: cannot bind capability #%u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @whci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.whci_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %157

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_enable_msi(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_set_master(%struct.pci_dev* %18)
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @DMA_BIT_MASK(i32 64)
  %24 = call i32 @pci_set_dma_mask(%struct.pci_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @DMA_BIT_MASK(i32 64)
  %29 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %27, i32 %28)
  br label %41

30:                                               ; preds = %15
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @DMA_BIT_MASK(i32 32)
  %33 = call i32 @pci_set_dma_mask(%struct.pci_dev* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @DMA_BIT_MASK(i32 32)
  %38 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %36, i32 %37)
  br label %40

39:                                               ; preds = %30
  br label %152

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @whci_n_caps(%struct.pci_dev* %42)
  store i32 %43, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %151

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = add i64 16, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.whci_card* @kzalloc(i32 %55, i32 %56)
  store %struct.whci_card* %57, %struct.whci_card** %6, align 8
  %58 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %59 = icmp eq %struct.whci_card* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %150

61:                                               ; preds = %47
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %64 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %63, i32 0, i32 2
  store %struct.pci_dev* %62, %struct.pci_dev** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %67 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_resource_start(%struct.pci_dev* %70, i32 0)
  %72 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %73 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @UWBCAPDATA_SIZE(i32 %74)
  %76 = call i32 @request_mem_region(i32 %71, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %61
  br label %147

79:                                               ; preds = %61
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %84 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @UWBCAPDATA_SIZE(i32 %85)
  %87 = call i32 @pci_iomap(%struct.pci_dev* %82, i32 0, i32 %86)
  %88 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %89 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %91 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %79
  br label %139

95:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %126, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %99 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  %103 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @whci_add_cap(%struct.whci_card* %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %133

116:                                              ; preds = %108, %102
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %116
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %96

129:                                              ; preds = %96
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %132 = call i32 @pci_set_drvdata(%struct.pci_dev* %130, %struct.whci_card* %131)
  store i32 0, i32* %3, align 4
  br label %159

133:                                              ; preds = %111
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %136 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pci_iounmap(%struct.pci_dev* %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %94
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = call i32 @pci_resource_start(%struct.pci_dev* %140, i32 0)
  %142 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %143 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @UWBCAPDATA_SIZE(i32 %144)
  %146 = call i32 @release_mem_region(i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %139, %78
  %148 = load %struct.whci_card*, %struct.whci_card** %6, align 8
  %149 = call i32 @kfree(%struct.whci_card* %148)
  br label %150

150:                                              ; preds = %147, %60
  br label %151

151:                                              ; preds = %150, %46
  br label %152

152:                                              ; preds = %151, %39
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = call i32 @pci_disable_msi(%struct.pci_dev* %153)
  %155 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %156 = call i32 @pci_disable_device(%struct.pci_dev* %155)
  br label %157

157:                                              ; preds = %152, %14
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %129
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @whci_n_caps(%struct.pci_dev*) #1

declare dso_local %struct.whci_card* @kzalloc(i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @UWBCAPDATA_SIZE(i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @whci_add_cap(%struct.whci_card*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.whci_card*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.whci_card*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
