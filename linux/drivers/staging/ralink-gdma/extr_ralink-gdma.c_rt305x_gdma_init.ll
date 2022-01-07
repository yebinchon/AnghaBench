; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt305x_gdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt305x_gdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GDMA_RT305X_GCT = common dso_local global i32 0, align 4
@GDMA_REG_GCT_ARBIT_RR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"revision: %d, channels: %d\0A\00", align 1
@GDMA_REG_GCT_VER_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_GCT_VER_MASK = common dso_local global i32 0, align 4
@GDMA_REG_GCT_CHAN_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_GCT_CHAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdma_dma_dev*)* @rt305x_gdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt305x_gdma_init(%struct.gdma_dma_dev* %0) #0 {
  %2 = alloca %struct.gdma_dma_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gdma_dma_dev* %0, %struct.gdma_dma_dev** %2, align 8
  %4 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %2, align 8
  %5 = load i32, i32* @GDMA_RT305X_GCT, align 4
  %6 = load i32, i32* @GDMA_REG_GCT_ARBIT_RR, align 4
  %7 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %4, i32 %5, i32 %6)
  %8 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %2, align 8
  %9 = load i32, i32* @GDMA_RT305X_GCT, align 4
  %10 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GDMA_REG_GCT_VER_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @GDMA_REG_GCT_VER_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GDMA_REG_GCT_CHAN_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @GDMA_REG_GCT_CHAN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = shl i32 8, %24
  %26 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @gdma_dma_write(%struct.gdma_dma_dev*, i32, i32) #1

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
