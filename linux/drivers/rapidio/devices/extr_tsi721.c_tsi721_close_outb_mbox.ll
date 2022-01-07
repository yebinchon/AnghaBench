; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_close_outb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_close_outb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64* }
%struct.TYPE_6__ = type { i32, i32, i32**, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TSI721_OBDMAC_INT_ALL = common dso_local global i32 0, align 4
@TSI721_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_VECT_OMB0_DONE = common dso_local global i32 0, align 4
@TSI721_VECT_OMB0_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rio_mport*, i32)* @tsi721_close_outb_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_close_outb_mbox(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi721_device*, align 8
  %6 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %8 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %7, i32 0, i32 0
  %9 = load %struct.tsi721_device*, %struct.tsi721_device** %8, align 8
  store %struct.tsi721_device* %9, %struct.tsi721_device** %5, align 8
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %177

19:                                               ; preds = %2
  %20 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %21 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %20, i32 0, i32 4
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TSI721_OBDMAC_INT_ALL, align 4
  %29 = call i32 @tsi721_omsg_interrupt_disable(%struct.tsi721_device* %26, i32 %27, i32 %28)
  %30 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %31 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %35 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %46 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %54 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(i32* %33, i32 %44, i32* %52, i32 %60)
  %62 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %63 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  store i32* null, i32** %68, align 8
  %69 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %70 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %74 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %86 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %94 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dma_free_coherent(i32* %72, i32 %84, i32* %92, i32 %100)
  %102 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %103 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  store i64 0, i64* %6, align 8
  br label %109

109:                                              ; preds = %174, %19
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %112 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %110, %119
  br i1 %120, label %121, label %177

121:                                              ; preds = %109
  %122 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %123 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %173

134:                                              ; preds = %121
  %135 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %136 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %135, i32 0, i32 2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %140 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %141 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32**, i32*** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds i32*, i32** %147, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %152 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dma_free_coherent(i32* %138, i32 %139, i32* %150, i32 %161)
  %163 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %164 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %134, %121
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %6, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %6, align 8
  br label %109

177:                                              ; preds = %18, %109
  ret void
}

declare dso_local i32 @tsi721_omsg_interrupt_disable(%struct.tsi721_device*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
