; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_tx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.idmac_channel = type { i32, %struct.mx3fb_data* }
%struct.mx3fb_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mx3fb_info* }
%struct.mx3fb_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"irq %d callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mx3fb_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3fb_dma_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.idmac_tx_desc*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca %struct.mx3fb_data*, align 8
  %7 = alloca %struct.mx3fb_info*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct.idmac_tx_desc* @to_tx_desc(i8* %8)
  store %struct.idmac_tx_desc* %9, %struct.idmac_tx_desc** %3, align 8
  %10 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %3, align 8
  %11 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %4, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %14)
  store %struct.idmac_channel* %15, %struct.idmac_channel** %5, align 8
  %16 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %17 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %16, i32 0, i32 1
  %18 = load %struct.mx3fb_data*, %struct.mx3fb_data** %17, align 8
  store %struct.mx3fb_data* %18, %struct.mx3fb_data** %6, align 8
  %19 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %20 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mx3fb_info*, %struct.mx3fb_info** %22, align 8
  store %struct.mx3fb_info* %23, %struct.mx3fb_info** %7, align 8
  %24 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %25 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %28 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %32 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @disable_irq_nosync(i32 %33)
  %35 = load %struct.mx3fb_info*, %struct.mx3fb_info** %7, align 8
  %36 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %35, i32 0, i32 0
  %37 = call i32 @complete(i32* %36)
  ret void
}

declare dso_local %struct.idmac_tx_desc* @to_tx_desc(i8*) #1

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
