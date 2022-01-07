; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_register_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_register_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { %struct.TYPE_5__*, i64, %struct.tsi721_bdma_chan*, %struct.rio_mport }
%struct.TYPE_5__ = type { i32 }
%struct.tsi721_bdma_chan = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.rio_mport = type { %struct.TYPE_6__ }

@TSI721_DMA_MAXCH = common dso_local global i32 0, align 4
@TSI721_DMACH_MAINT = common dso_local global i32 0, align 4
@dma_sel = common dso_local global i32 0, align 4
@tsi721_dma_tasklet = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@tsi721_alloc_chan_resources = common dso_local global i32 0, align 4
@tsi721_free_chan_resources = common dso_local global i32 0, align 4
@tsi721_tx_status = common dso_local global i32 0, align 4
@tsi721_issue_pending = common dso_local global i32 0, align 4
@tsi721_prep_rio_sg = common dso_local global i32 0, align 4
@tsi721_terminate_all = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to register DMA device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi721_register_dma(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.tsi721_bdma_chan*, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %9 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %8, i32 0, i32 3
  store %struct.rio_mport* %9, %struct.rio_mport** %6, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %11 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 9
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %87, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TSI721_DMA_MAXCH, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %14
  %19 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %20 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %19, i32 0, i32 2
  %21 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %21, i64 %23
  store %struct.tsi721_bdma_chan* %24, %struct.tsi721_bdma_chan** %7, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TSI721_DMACH_MAINT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @dma_sel, align 4
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %18
  br label %87

35:                                               ; preds = %28
  %36 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %37 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @TSI721_DMAC_BASE(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %43 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %45 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %44, i32 0, i32 0
  %46 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %47 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %50 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %54 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %58 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %60 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %62 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %61, i32 0, i32 7
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %65 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %64, i32 0, i32 6
  store i32* null, i32** %65, align 8
  %66 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %67 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %70 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %69, i32 0, i32 4
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %73 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %72, i32 0, i32 3
  %74 = load i32, i32* @tsi721_dma_tasklet, align 4
  %75 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %76 = ptrtoint %struct.tsi721_bdma_chan* %75 to i64
  %77 = call i32 @tasklet_init(i32* %73, i32 %74, i64 %76)
  %78 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %7, align 8
  %79 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %82 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 9
  %84 = call i32 @list_add_tail(i32* %80, i32* %83)
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %35, %34
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %14

90:                                               ; preds = %14
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %93 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %96 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_cap_zero(i32 %98)
  %100 = load i32, i32* @DMA_PRIVATE, align 4
  %101 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %102 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dma_cap_set(i32 %100, i32 %104)
  %106 = load i32, i32* @DMA_SLAVE, align 4
  %107 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %108 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dma_cap_set(i32 %106, i32 %110)
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %117 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 7
  store i32* %115, i32** %118, align 8
  %119 = load i32, i32* @tsi721_alloc_chan_resources, align 4
  %120 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %121 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @tsi721_free_chan_resources, align 4
  %124 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %125 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @tsi721_tx_status, align 4
  %128 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %129 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @tsi721_issue_pending, align 4
  %132 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %133 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @tsi721_prep_rio_sg, align 4
  %136 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %137 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @tsi721_terminate_all, align 4
  %140 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %141 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %144 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %143, i32 0, i32 0
  %145 = call i32 @dma_async_device_register(%struct.TYPE_6__* %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %90
  %149 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %150 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = call i32 @tsi_err(i32* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %148, %90
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @TSI721_DMAC_BASE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @tsi_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
