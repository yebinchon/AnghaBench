; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_map_pci_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_map_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.gasket_internal_desc* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.gasket_internal_desc = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@PCI_BAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Cannot get BAR%u base address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"PCI BAR %u space is too small: %lu; expected >= %lu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot get BAR %d memory region %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot remap BAR %d memory region %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, i32)* @gasket_map_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_map_pci_bar(%struct.gasket_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_internal_desc*, align 8
  %7 = alloca %struct.gasket_driver_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %11 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %10, i32 0, i32 4
  %12 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %11, align 8
  store %struct.gasket_internal_desc* %12, %struct.gasket_internal_desc** %6, align 8
  %13 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %6, align 8
  %14 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %13, i32 0, i32 0
  %15 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %14, align 8
  store %struct.gasket_driver_desc* %15, %struct.gasket_driver_desc** %7, align 8
  %16 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %7, align 8
  %17 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %239

27:                                               ; preds = %2
  %28 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %7, align 8
  %29 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_BAR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %239

39:                                               ; preds = %27
  %40 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %41 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @pci_resource_start(%struct.TYPE_9__* %42, i32 %43)
  %45 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %46 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 %44, i64* %51, align 8
  %52 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %39
  %62 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %63 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %239

69:                                               ; preds = %39
  %70 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %71 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @pci_resource_len(%struct.TYPE_9__* %72, i32 %73)
  %75 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %76 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  %82 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %69
  %93 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %94 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %98 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %104, i64 %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %239

109:                                              ; preds = %69
  %110 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %111 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %119 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %127 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @request_mem_region(i64 %117, i64 %125, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %109
  %133 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %134 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %138 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32* %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %239

148:                                              ; preds = %109
  %149 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %150 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %158 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ioremap_nocache(i64 %156, i64 %164)
  %166 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %167 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  store i32 %165, i32* %172, align 8
  %173 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %174 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %148
  %183 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %184 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %188 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %186, i32* %194)
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %9, align 4
  br label %211

198:                                              ; preds = %148
  %199 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %200 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = call i32 @DMA_BIT_MASK(i32 64)
  %204 = call i32 @dma_set_mask(i32* %202, i32 %203)
  %205 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %206 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = call i32 @DMA_BIT_MASK(i32 64)
  %210 = call i32 @dma_set_coherent_mask(i32* %208, i32 %209)
  store i32 0, i32* %3, align 4
  br label %239

211:                                              ; preds = %182
  %212 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %213 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @iounmap(i32 %219)
  %221 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %222 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %230 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @release_mem_region(i64 %228, i64 %236)
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %211, %198, %132, %92, %61, %38, %26
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i64 @pci_resource_start(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @pci_resource_len(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @ioremap_nocache(i64, i64) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
