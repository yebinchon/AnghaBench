; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.nxp_fspi = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@FSPI_STS0 = common dso_local global i64 0, align 8
@FSPI_STS0_ARB_IDLE = common dso_local global i32 0, align 4
@POLL_TOUT = common dso_local global i32 0, align 4
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @nxp_fspi_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_fspi_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca %struct.nxp_fspi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %7 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %8 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nxp_fspi* @spi_controller_get_devdata(i32 %11)
  store %struct.nxp_fspi* %12, %struct.nxp_fspi** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %14 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %17 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %18 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FSPI_STS0, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @FSPI_STS0_ARB_IDLE, align 4
  %23 = load i32, i32* @POLL_TOUT, align 4
  %24 = call i32 @fspi_readl_poll_tout(%struct.nxp_fspi* %16, i64 %21, i32 %22, i32 1, i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %28 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %29 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @nxp_fspi_select_mem(%struct.nxp_fspi* %27, %struct.TYPE_6__* %30)
  %32 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %33 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %34 = call i32 @nxp_fspi_prepare_lut(%struct.nxp_fspi* %32, %struct.spi_mem_op* %33)
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %40 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 4
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %2
  %47 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %48 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %55 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %56 = call i32 @nxp_fspi_read_ahb(%struct.nxp_fspi* %54, %struct.spi_mem_op* %55)
  br label %78

57:                                               ; preds = %46, %2
  %58 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %59 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %72 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %73 = call i32 @nxp_fspi_fill_txfifo(%struct.nxp_fspi* %71, %struct.spi_mem_op* %72)
  br label %74

74:                                               ; preds = %70, %63, %57
  %75 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %76 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %77 = call i32 @nxp_fspi_do_op(%struct.nxp_fspi* %75, %struct.spi_mem_op* %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %53
  %79 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %80 = call i32 @nxp_fspi_invalid(%struct.nxp_fspi* %79)
  %81 = load %struct.nxp_fspi*, %struct.nxp_fspi** %5, align 8
  %82 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.nxp_fspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fspi_readl_poll_tout(%struct.nxp_fspi*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nxp_fspi_select_mem(%struct.nxp_fspi*, %struct.TYPE_6__*) #1

declare dso_local i32 @nxp_fspi_prepare_lut(%struct.nxp_fspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @nxp_fspi_read_ahb(%struct.nxp_fspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @nxp_fspi_fill_txfifo(%struct.nxp_fspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @nxp_fspi_do_op(%struct.nxp_fspi*, %struct.spi_mem_op*) #1

declare dso_local i32 @nxp_fspi_invalid(%struct.nxp_fspi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
