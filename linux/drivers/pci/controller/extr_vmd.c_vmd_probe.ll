; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i64 }
%struct.vmd_dev = type { i32, %struct.TYPE_4__, %struct.pci_dev*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VMD_CFGBAR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@vmd_irq = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vmd\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Bound to PCI domain %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vmd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.vmd_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @VMD_CFGBAR, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @resource_size(i32* %13)
  %15 = icmp slt i32 %14, 1048576
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %192

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vmd_dev* @devm_kzalloc(i32* %21, i32 40, i32 %22)
  store %struct.vmd_dev* %23, %struct.vmd_dev** %6, align 8
  %24 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %25 = icmp ne %struct.vmd_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %192

29:                                               ; preds = %19
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %32 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %31, i32 0, i32 2
  store %struct.pci_dev* %30, %struct.pci_dev** %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pcim_enable_device(%struct.pci_dev* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %192

39:                                               ; preds = %29
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i64, i64* @VMD_CFGBAR, align 8
  %42 = call i32 @pcim_iomap(%struct.pci_dev* %40, i64 %41, i32 0)
  %43 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %44 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %46 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %192

52:                                               ; preds = %39
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pci_set_master(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @DMA_BIT_MASK(i32 64)
  %58 = call i64 @dma_set_mask_and_coherent(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 @DMA_BIT_MASK(i32 32)
  %64 = call i64 @dma_set_mask_and_coherent(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %192

69:                                               ; preds = %60, %52
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_msix_vec_count(%struct.pci_dev* %70)
  %72 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %73 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %75 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %192

81:                                               ; preds = %69
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %84 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %87 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %82, i32 1, i32 %85, i32 %86)
  %88 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %89 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %91 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %96 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %3, align 4
  br label %192

98:                                               ; preds = %81
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %102 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.TYPE_5__* @devm_kcalloc(i32* %100, i32 %103, i32 8, i32 %104)
  %106 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %107 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %106, i32 0, i32 4
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %107, align 8
  %108 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %109 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %98
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %192

115:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %163, %115
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %119 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %166

122:                                              ; preds = %116
  %123 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %124 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = call i32 @init_srcu_struct(i32* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %192

135:                                              ; preds = %122
  %136 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %137 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %136, i32 0, i32 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @pci_irq_vector(%struct.pci_dev* %146, i32 %147)
  %149 = load i32, i32* @vmd_irq, align 4
  %150 = load i32, i32* @IRQF_NO_THREAD, align 4
  %151 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %152 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %151, i32 0, i32 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = call i32 @devm_request_irq(i32* %145, i32 %148, i32 %149, i32 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %135
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %3, align 4
  br label %192

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %116

166:                                              ; preds = %116
  %167 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %168 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %167, i32 0, i32 3
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %172 = call i32 @pci_set_drvdata(%struct.pci_dev* %170, %struct.vmd_dev* %171)
  %173 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %174 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %175 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @vmd_enable_domain(%struct.vmd_dev* %173, i64 %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %166
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %3, align 4
  br label %192

182:                                              ; preds = %166
  %183 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %184 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %183, i32 0, i32 2
  %185 = load %struct.pci_dev*, %struct.pci_dev** %184, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = load %struct.vmd_dev*, %struct.vmd_dev** %6, align 8
  %188 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @dev_info(i32* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %182, %180, %160, %133, %112, %94, %78, %66, %49, %37, %26, %16
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @resource_size(i32*) #1

declare dso_local %struct.vmd_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_msix_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.vmd_dev*) #1

declare dso_local i32 @vmd_enable_domain(%struct.vmd_dev*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
