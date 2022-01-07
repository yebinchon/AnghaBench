; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_fill_tx_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_fill_tx_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_tx_fifo = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_hcd*, %struct.cvmx_usb_tx_fifo*, i32)* @cvmx_usb_fill_tx_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_usb_fill_tx_hw(%struct.octeon_hcd* %0, %struct.cvmx_usb_tx_fifo* %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_hcd*, align 8
  %5 = alloca %struct.cvmx_usb_tx_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %4, align 8
  store %struct.cvmx_usb_tx_fifo* %1, %struct.cvmx_usb_tx_fifo** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %159, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %16 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %19 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %165

24:                                               ; preds = %22
  %25 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %26 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %29 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @cvmx_phys_to_ptr(i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %38 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @USB_FIFO_ADDRESS(i32 %44, i32 %47)
  %49 = xor i32 %48, 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %52 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %24
  %62 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %63 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %71 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %75 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAX_CHANNELS, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %81 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %61
  br label %83

83:                                               ; preds = %82, %24
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %87, 4
  %89 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %90 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %88
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %100 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, %98
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %111, %83
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 3
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %8, align 8
  %115 = load i32, i32* %113, align 4
  %116 = call i32 @cvmx_write64_uint32(i32 %112, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  %120 = load i32, i32* %118, align 4
  %121 = call i32 @cvmx_write64_uint32(i32 %117, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %8, align 8
  %125 = load i32, i32* %123, align 4
  %126 = call i32 @cvmx_write64_uint32(i32 %122, i32 %125)
  %127 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %128 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CVMX_USBNX_DMA0_INB_CHN0(i32 %129)
  %131 = call i32 @cvmx_read64_uint64(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %132, 3
  store i32 %133, i32* %10, align 4
  br label %108

134:                                              ; preds = %108
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %8, align 8
  %138 = load i32, i32* %136, align 4
  %139 = call i32 @cvmx_write64_uint32(i32 %135, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %134
  %144 = load i32, i32* %9, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %8, align 8
  %147 = load i32, i32* %145, align 4
  %148 = call i32 @cvmx_write64_uint32(i32 %144, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load i32, i32* %9, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  %156 = load i32, i32* %154, align 4
  %157 = call i32 @cvmx_write64_uint32(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %143
  br label %159

159:                                              ; preds = %158, %134
  %160 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %161 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @CVMX_USBNX_DMA0_INB_CHN0(i32 %162)
  %164 = call i32 @cvmx_read64_uint64(i32 %163)
  br label %11

165:                                              ; preds = %22
  %166 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %167 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %5, align 8
  %170 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %168, %171
  %173 = zext i1 %172 to i32
  ret i32 %173
}

declare dso_local i32* @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @USB_FIFO_ADDRESS(i32, i32) #1

declare dso_local i32 @cvmx_write64_uint32(i32, i32) #1

declare dso_local i32 @cvmx_read64_uint64(i32) #1

declare dso_local i32 @CVMX_USBNX_DMA0_INB_CHN0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
