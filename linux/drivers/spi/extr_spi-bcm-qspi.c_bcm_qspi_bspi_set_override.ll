; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"set override mode w %x addrlen %x hp %d\0A\00", align 1
@BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BSPI_ADDRLEN_4BYTES = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, %struct.spi_mem_op*, i32)* @bcm_qspi_bspi_set_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_set_override(%struct.bcm_qspi* %0, %struct.spi_mem_op* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_qspi*, align 8
  %6 = alloca %struct.spi_mem_op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %5, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %12 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %18 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 128, %21 ]
  store i32 %23, i32* %8, align 4
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %29 = load i32, i32* @BSPI, align 4
  %30 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL, align 4
  %31 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %64 [
    i32 128, label %41
    i32 129, label %48
    i32 130, label %56
  ]

41:                                               ; preds = %22
  %42 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD, align 4
  %43 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %67

48:                                               ; preds = %22
  %49 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %67

56:                                               ; preds = %22
  %57 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %22
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %56, %48, %41
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @BSPI_ADDRLEN_4BYTES, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %67
  %76 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %85 = load i32, i32* @BSPI, align 4
  %86 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %90 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %91 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bcm_qspi_bspi_set_xfer_params(%struct.bcm_qspi* %89, i32 %93, i32 0, i32 0, i32 0)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %80, %64
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_set_xfer_params(%struct.bcm_qspi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
