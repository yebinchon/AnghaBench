; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_fill_nonisoc_xfer_ddma_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_fill_nonisoc_xfer_ddma_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dwc2_dma_desc = type { i32, i32 }

@DEV_DMA_BUFF_STS_HBUSY = common dso_local global i32 0, align 4
@DEV_DMA_BUFF_STS_SHIFT = common dso_local global i32 0, align 4
@DEV_DMA_L = common dso_local global i32 0, align 4
@DEV_DMA_IOC = common dso_local global i32 0, align 4
@DEV_DMA_NBYTES_SHIFT = common dso_local global i32 0, align 4
@DEV_DMA_SHORT = common dso_local global i32 0, align 4
@DEV_DMA_BUFF_STS_MASK = common dso_local global i32 0, align 4
@DEV_DMA_BUFF_STS_HREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg_ep*, %struct.dwc2_dma_desc**, i32, i32, i32)* @dwc2_gadget_fill_nonisoc_xfer_ddma_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_gadget_fill_nonisoc_xfer_ddma_one(%struct.dwc2_hsotg_ep* %0, %struct.dwc2_dma_desc** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dwc2_hsotg_ep*, align 8
  %7 = alloca %struct.dwc2_dma_desc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dwc2_hsotg_ep* %0, %struct.dwc2_hsotg_ep** %6, align 8
  store %struct.dwc2_dma_desc** %1, %struct.dwc2_dma_desc*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %25 = call i32 @dwc2_gadget_get_desc_params(%struct.dwc2_hsotg_ep* %24, i32* %15)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %13, align 4
  %28 = udiv i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %13, align 4
  %31 = urem i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = add i32 %28, %34
  %36 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %5
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %183, %43
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %186

50:                                               ; preds = %44
  %51 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %52 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %51, align 8
  %53 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @DEV_DMA_BUFF_STS_HBUSY, align 4
  %55 = load i32, i32* @DEV_DMA_BUFF_STS_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %58 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %57, align 8
  %59 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %50
  %66 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @DEV_DMA_L, align 4
  %75 = load i32, i32* @DEV_DMA_IOC, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %78 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %77, align 8
  %79 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %70, %65
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @DEV_DMA_NBYTES_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %89 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %88, align 8
  %90 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %93, %94
  %96 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %97 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %96, align 8
  %98 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %164

105:                                              ; preds = %50
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* @DEV_DMA_L, align 4
  %110 = load i32, i32* @DEV_DMA_IOC, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %113 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %112, align 8
  %114 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %108, %105
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = urem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @DEV_DMA_SHORT, align 4
  br label %140

127:                                              ; preds = %120
  %128 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %129 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @DEV_DMA_SHORT, align 4
  br label %138

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 0, %137 ]
  br label %140

140:                                              ; preds = %138, %125
  %141 = phi i32 [ %126, %125 ], [ %139, %138 ]
  %142 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %143 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %142, align 8
  %144 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %140, %117
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @DEV_DMA_NBYTES_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %15, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %154 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %153, align 8
  %155 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %158, %159
  %161 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %162 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %161, align 8
  %163 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %147, %82
  %165 = load i32, i32* @DEV_DMA_BUFF_STS_MASK, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %168 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %167, align 8
  %169 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @DEV_DMA_BUFF_STS_HREADY, align 4
  %173 = load i32, i32* @DEV_DMA_BUFF_STS_SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %176 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %175, align 8
  %177 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 4
  %180 = load %struct.dwc2_dma_desc**, %struct.dwc2_dma_desc*** %7, align 8
  %181 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %180, align 8
  %182 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %181, i32 1
  store %struct.dwc2_dma_desc* %182, %struct.dwc2_dma_desc** %180, align 8
  br label %183

183:                                              ; preds = %164
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %44

186:                                              ; preds = %44
  ret void
}

declare dso_local i32 @dwc2_gadget_get_desc_params(%struct.dwc2_hsotg_ep*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
