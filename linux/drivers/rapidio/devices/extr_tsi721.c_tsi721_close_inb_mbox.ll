; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_close_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_close_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64* }
%struct.TYPE_6__ = type { i64, i32*, i32, i32*, i32, i32*, i32, i32** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TSI721_OBDMAC_INT_MASK = common dso_local global i32 0, align 4
@TSI721_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_VECT_IMB0_INT = common dso_local global i32 0, align 4
@TSI721_VECT_IMB0_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rio_mport*, i32)* @tsi721_close_inb_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_close_inb_mbox(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi721_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %9 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %8, i32 0, i32 0
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %9, align 8
  store %struct.tsi721_device* %10, %struct.tsi721_device** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %14 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %13, i32 0, i32 4
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %175

22:                                               ; preds = %2
  %23 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %24 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TSI721_OBDMAC_INT_MASK, align 4
  %32 = call i32 @tsi721_imsg_interrupt_disable(%struct.tsi721_device* %29, i32 %30, i32 %31)
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %55, %22
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %36 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %34, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %46 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %60 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %64 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %76 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %84 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_free_coherent(i32* %62, i32 %74, i32* %82, i32 %90)
  %92 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %93 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %100 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %104 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 %110, 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %114 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %122 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dma_free_coherent(i32* %102, i32 %112, i32* %120, i32 %128)
  %130 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %131 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  store i32* null, i32** %136, align 8
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %138 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %142 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %152 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %160 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @dma_free_coherent(i32* %140, i32 %150, i32* %158, i32 %166)
  %168 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %169 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %58, %21
  ret void
}

declare dso_local i32 @tsi721_imsg_interrupt_disable(%struct.tsi721_device*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
