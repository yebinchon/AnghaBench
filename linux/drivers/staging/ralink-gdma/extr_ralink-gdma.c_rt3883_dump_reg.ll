; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt3883_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt3883_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [105 x i8] c"chan %d, src %08x, dst %08x, ctr0 %08x, ctr1 %08x, unmask %08x, done %08x, req %08x, ack %08x, fin %08x\0A\00", align 1
@GDMA_REG_UNMASK_INT = common dso_local global i32 0, align 4
@GDMA_REG_DONE_INT = common dso_local global i32 0, align 4
@GDMA_REG_REQSTS = common dso_local global i32 0, align 4
@GDMA_REG_ACKSTS = common dso_local global i32 0, align 4
@GDMA_REG_FINSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdma_dma_dev*, i32)* @rt3883_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3883_dump_reg(%struct.gdma_dma_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gdma_dma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gdma_dma_dev* %0, %struct.gdma_dma_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %6 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GDMA_REG_SRC_ADDR(i32 %11)
  %13 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %10, i32 %12)
  %14 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GDMA_REG_DST_ADDR(i32 %15)
  %17 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %14, i32 %16)
  %18 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GDMA_REG_CTRL0(i32 %19)
  %21 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %18, i32 %20)
  %22 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GDMA_REG_CTRL1(i32 %23)
  %25 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %22, i32 %24)
  %26 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %27 = load i32, i32* @GDMA_REG_UNMASK_INT, align 4
  %28 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %26, i32 %27)
  %29 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %30 = load i32, i32* @GDMA_REG_DONE_INT, align 4
  %31 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %29, i32 %30)
  %32 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %33 = load i32, i32* @GDMA_REG_REQSTS, align 4
  %34 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %32, i32 %33)
  %35 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %36 = load i32, i32* @GDMA_REG_ACKSTS, align 4
  %37 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %35, i32 %36)
  %38 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %39 = load i32, i32* @GDMA_REG_FINSTS, align 4
  %40 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %38, i32 %39)
  %41 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @GDMA_REG_SRC_ADDR(i32) #1

declare dso_local i32 @GDMA_REG_DST_ADDR(i32) #1

declare dso_local i32 @GDMA_REG_CTRL0(i32) #1

declare dso_local i32 @GDMA_REG_CTRL1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
