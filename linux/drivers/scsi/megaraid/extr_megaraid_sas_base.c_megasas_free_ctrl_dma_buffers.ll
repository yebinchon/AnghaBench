; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_free_ctrl_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_free_ctrl_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, %struct.fusion_context*, %struct.pci_dev* }
%struct.fusion_context = type { i32, i64 }
%struct.pci_dev = type { i32 }

@MEGASAS_MAX_PD = common dso_local global i32 0, align 4
@CRASH_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@HOST_DEVICE_LIST_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_free_ctrl_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_free_ctrl_dma_buffers(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %6 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %5, i32 0, i32 23
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 22
  %10 = load %struct.fusion_context*, %struct.fusion_context** %9, align 8
  store %struct.fusion_context* %10, %struct.fusion_context** %4, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 21
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 21
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 20
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %17, i32 4, i64 %20, i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %27 = icmp ne %struct.fusion_context* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %30 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %37 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %40 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(i32* %35, i32 4, i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %33, %28, %25
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 19
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* @MEGASAS_MAX_PD, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %56 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %55, i32 0, i32 19
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(i32* %50, i32 %54, i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %48, %43
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 17
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %71 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %70, i32 0, i32 17
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %74 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %73, i32 0, i32 16
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_free_coherent(i32* %69, i32 4, i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %62
  %78 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %79 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %78, i32 0, i32 15
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %86 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %85, i32 0, i32 15
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %89 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_free_coherent(i32* %84, i32 4, i64 %87, i32 %90)
  br label %92

92:                                               ; preds = %82, %77
  %93 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %94 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %93, i32 0, i32 13
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %101 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %100, i32 0, i32 13
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %104 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_free_coherent(i32* %99, i32 4, i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %97, %92
  %108 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %109 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %116 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %115, i32 0, i32 11
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %119 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dma_free_coherent(i32* %114, i32 4, i64 %117, i32 %120)
  br label %122

122:                                              ; preds = %112, %107
  %123 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %124 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %131 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %134 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dma_free_coherent(i32* %129, i32 4, i64 %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %122
  %138 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %139 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %146 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %149 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dma_free_coherent(i32* %144, i32 4, i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %142, %137
  %153 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %154 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* @CRASH_DMA_BUF_SIZE, align 4
  %161 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %162 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %165 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @dma_free_coherent(i32* %159, i32 %160, i64 %163, i32 %166)
  br label %168

168:                                              ; preds = %157, %152
  %169 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %170 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %177 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %180 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @dma_free_coherent(i32* %175, i32 4, i64 %178, i32 %181)
  br label %183

183:                                              ; preds = %173, %168
  %184 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %185 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %183
  %189 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %190 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 0
  %191 = load i32, i32* @HOST_DEVICE_LIST_SZ, align 4
  %192 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %193 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %196 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dma_free_coherent(i32* %190, i32 %191, i64 %194, i32 %197)
  br label %199

199:                                              ; preds = %188, %183
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
