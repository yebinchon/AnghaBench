; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_6__*, i32, %struct.dma_chan*, i32, i32, %struct.dma_chan* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ntb_queue_entry = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Freeing item from non-empty rx_pend_q\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Freeing item from non-empty rx_post_q\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"NTB Transport QP %d freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_transport_free_queue(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ntb_queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %9 = icmp ne %struct.ntb_transport_qp* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %158

11:                                               ; preds = %1
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %12, i32 0, i32 15
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 20
  %21 = load %struct.dma_chan*, %struct.dma_chan** %20, align 8
  %22 = icmp ne %struct.dma_chan* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %24, i32 0, i32 20
  %26 = load %struct.dma_chan*, %struct.dma_chan** %25, align 8
  store %struct.dma_chan* %26, %struct.dma_chan** %6, align 8
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 20
  store %struct.dma_chan* null, %struct.dma_chan** %28, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %30 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %31 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_sync_wait(%struct.dma_chan* %29, i32 %32)
  %34 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %35 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %34)
  %36 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %37 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 19
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %45 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %44, i32 0, i32 18
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_unmap_resource(i32 %40, i32 %43, i32 %46, i32 %47, i32 0)
  %49 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %50 = call i32 @dma_release_channel(%struct.dma_chan* %49)
  br label %51

51:                                               ; preds = %23, %11
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 17
  %54 = load %struct.dma_chan*, %struct.dma_chan** %53, align 8
  %55 = icmp ne %struct.dma_chan* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %58 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %57, i32 0, i32 17
  %59 = load %struct.dma_chan*, %struct.dma_chan** %58, align 8
  store %struct.dma_chan* %59, %struct.dma_chan** %7, align 8
  %60 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %60, i32 0, i32 17
  store %struct.dma_chan* null, %struct.dma_chan** %61, align 8
  %62 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %63 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dma_sync_wait(%struct.dma_chan* %62, i32 %65)
  %67 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %68 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %67)
  %69 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %70 = call i32 @dma_release_channel(%struct.dma_chan* %69)
  br label %71

71:                                               ; preds = %56, %51
  %72 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIT_ULL(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %77 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %76, i32 0, i32 15
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ntb_db_set_mask(%struct.TYPE_6__* %78, i32 %79)
  %81 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %82 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %81, i32 0, i32 14
  %83 = call i32 @tasklet_kill(i32* %82)
  %84 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %85 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %84, i32 0, i32 13
  %86 = call i32 @cancel_delayed_work_sync(i32* %85)
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 12
  store i32* null, i32** %88, align 8
  %89 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %90 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %89, i32 0, i32 11
  store i32* null, i32** %90, align 8
  %91 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %92 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %91, i32 0, i32 10
  store i32* null, i32** %92, align 8
  %93 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %94 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %93, i32 0, i32 9
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %102, %71
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %96, i32 0, i32 6
  %98 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %99 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %98, i32 0, i32 8
  %100 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %97, i32* %99)
  store %struct.ntb_queue_entry* %100, %struct.ntb_queue_entry** %4, align 8
  %101 = icmp ne %struct.ntb_queue_entry* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %104 = call i32 @kfree(%struct.ntb_queue_entry* %103)
  br label %95

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %113, %105
  %107 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %108 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %107, i32 0, i32 6
  %109 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %110 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %109, i32 0, i32 7
  %111 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %108, i32* %110)
  store %struct.ntb_queue_entry* %111, %struct.ntb_queue_entry** %4, align 8
  %112 = icmp ne %struct.ntb_queue_entry* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = call i32 @dev_warn(i32* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %118 = call i32 @kfree(%struct.ntb_queue_entry* %117)
  br label %106

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %127, %119
  %121 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %122 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %121, i32 0, i32 6
  %123 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %124 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %123, i32 0, i32 5
  %125 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %122, i32* %124)
  store %struct.ntb_queue_entry* %125, %struct.ntb_queue_entry** %4, align 8
  %126 = icmp ne %struct.ntb_queue_entry* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 @dev_warn(i32* %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %132 = call i32 @kfree(%struct.ntb_queue_entry* %131)
  br label %120

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %141, %133
  %135 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %136 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %135, i32 0, i32 4
  %137 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %138 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %137, i32 0, i32 3
  %139 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %136, i32* %138)
  store %struct.ntb_queue_entry* %139, %struct.ntb_queue_entry** %4, align 8
  %140 = icmp ne %struct.ntb_queue_entry* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %143 = call i32 @kfree(%struct.ntb_queue_entry* %142)
  br label %134

144:                                              ; preds = %134
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %147 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  %152 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 0
  %154 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %155 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dev_info(i32* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %144, %10
  ret void
}

declare dso_local i32 @dma_sync_wait(%struct.dma_chan*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ntb_db_set_mask(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ntb_queue_entry*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
