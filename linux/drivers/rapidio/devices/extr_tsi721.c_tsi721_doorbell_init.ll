; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_doorbell_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_doorbell_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i64, i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@tsi721_db_dpc = common dso_local global i32 0, align 4
@IDB_QSIZE = common dso_local global i32 0, align 4
@TSI721_IDB_ENTRY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Allocated IDB buffer @ %p (phys = %pad)\00", align 1
@IDB_QUEUE = common dso_local global i32 0, align 4
@TSI721_IDQ_BASEL_ADDR = common dso_local global i32 0, align 4
@TSI721_IDQ_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_doorbell_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_doorbell_init(%struct.tsi721_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsi721_device*, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %3, align 8
  %4 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %5 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %7 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %6, i32 0, i32 4
  %8 = load i32, i32* @tsi721_db_dpc, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @IDB_QSIZE, align 4
  %15 = load i32, i32* @TSI721_IDB_ENTRY_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %18 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @dma_alloc_coherent(i32* %13, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %24 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %98

30:                                               ; preds = %1
  %31 = load i32, i32* @DBELL, align 4
  %32 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %33 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %37 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %40 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %39, i32 0, i32 1
  %41 = call i32 @tsi_debug(i32 %31, i32* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38, i64* %40)
  %42 = load i32, i32* @IDB_QSIZE, align 4
  %43 = call i32 @TSI721_IDQ_SIZE_VAL(i32 %42)
  %44 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %45 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @IDB_QUEUE, align 4
  %48 = call i64 @TSI721_IDQ_SIZE(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @iowrite32(i32 %43, i64 %49)
  %51 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %52 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = ashr i32 %54, 32
  %56 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %57 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @IDB_QUEUE, align 4
  %60 = call i64 @TSI721_IDQ_BASEU(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @iowrite32(i32 %55, i64 %61)
  %63 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %64 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @TSI721_IDQ_BASEL_ADDR, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %70 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @IDB_QUEUE, align 4
  %73 = call i64 @TSI721_IDQ_BASEL(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @iowrite32(i32 %68, i64 %74)
  %76 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %77 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @IDB_QUEUE, align 4
  %80 = call i64 @TSI721_IDQ_MASK(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @iowrite32(i32 0, i64 %81)
  %83 = load i32, i32* @TSI721_IDQ_INIT, align 4
  %84 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %85 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @IDB_QUEUE, align 4
  %88 = call i64 @TSI721_IDQ_CTL(i32 %87)
  %89 = add nsw i64 %86, %88
  %90 = call i32 @iowrite32(i32 %83, i64 %89)
  %91 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %92 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @IDB_QUEUE, align 4
  %95 = call i64 @TSI721_IDQ_RP(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i32 @iowrite32(i32 0, i64 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %30, %27
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i64*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @TSI721_IDQ_SIZE_VAL(i32) #1

declare dso_local i64 @TSI721_IDQ_SIZE(i32) #1

declare dso_local i64 @TSI721_IDQ_BASEU(i32) #1

declare dso_local i64 @TSI721_IDQ_BASEL(i32) #1

declare dso_local i64 @TSI721_IDQ_MASK(i32) #1

declare dso_local i64 @TSI721_IDQ_CTL(i32) #1

declare dso_local i64 @TSI721_IDQ_RP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
