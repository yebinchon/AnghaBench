; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_flush_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_flush_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_pkt = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { %struct.cmdq_pkt*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.cmdq_client = type { i64, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@cmdq_pkt_flush_async_cb = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CMDQ_NO_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdq_pkt_flush_async(%struct.cmdq_pkt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdq_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmdq_client*, align 8
  store %struct.cmdq_pkt* %0, %struct.cmdq_pkt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %12 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cmdq_client*
  store %struct.cmdq_client* %14, %struct.cmdq_client** %10, align 8
  %15 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %16 = call i32 @cmdq_pkt_finalize(%struct.cmdq_pkt* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %24 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %28 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @cmdq_pkt_flush_async_cb, align 4
  %31 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %32 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %35 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.cmdq_pkt* %34, %struct.cmdq_pkt** %37, align 8
  %38 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %39 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %46 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %49 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_sync_single_for_device(i32 %44, i32 %47, i32 %50, i32 %51)
  %53 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %54 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CMDQ_NO_TIMEOUT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %21
  %59 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %60 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %59, i32 0, i32 2
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %64 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %70 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %69, i32 0, i32 3
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %73 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @msecs_to_jiffies(i64 %74)
  %76 = add nsw i64 %71, %75
  %77 = call i32 @mod_timer(i32* %70, i64 %76)
  br label %78

78:                                               ; preds = %68, %58
  %79 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %80 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %79, i32 0, i32 2
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %21
  %84 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %85 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %5, align 8
  %88 = call i32 @mbox_send_message(%struct.TYPE_9__* %86, %struct.cmdq_pkt* %87)
  %89 = load %struct.cmdq_client*, %struct.cmdq_client** %10, align 8
  %90 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call i32 @mbox_client_txdone(%struct.TYPE_9__* %91, i32 0)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %83, %19
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @cmdq_pkt_finalize(%struct.cmdq_pkt*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mbox_send_message(%struct.TYPE_9__*, %struct.cmdq_pkt*) #1

declare dso_local i32 @mbox_client_txdone(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
