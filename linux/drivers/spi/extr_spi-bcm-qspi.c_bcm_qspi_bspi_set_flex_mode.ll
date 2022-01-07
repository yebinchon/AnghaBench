; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_flex_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_flex_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"set flex mode w %x addrlen %x hp %d\0A\00", align 1
@BSPI_ADDRLEN_4BYTES = common dso_local global i32 0, align 4
@BSPI_BPP_ADDR_SELECT_MASK = common dso_local global i32 0, align 4
@BSPI_ADDRLEN_3BYTES = common dso_local global i32 0, align 4
@BSPI_BPP_MODE_SELECT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, %struct.spi_mem_op*, i32)* @bcm_qspi_bspi_set_flex_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_set_flex_mode(%struct.bcm_qspi* %0, %struct.spi_mem_op* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_qspi*, align 8
  %6 = alloca %struct.spi_mem_op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %5, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %15 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ %27, %23 ], [ 128, %28 ]
  store i32 %30, i32* %11, align 4
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %35 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @BSPI_ADDRLEN_4BYTES, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = load i32, i32* @BSPI_BPP_ADDR_SELECT_MASK, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %29
  %49 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %50 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 8
  %54 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %55 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %53, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %86 [
    i32 128, label %62
    i32 130, label %68
    i32 129, label %76
  ]

62:                                               ; preds = %48
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @BSPI_ADDRLEN_3BYTES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %62
  br label %89

68:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 65792
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @BSPI_BPP_MODE_SELECT_MASK, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %68
  br label %89

76:                                               ; preds = %48
  store i32 2, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, 131584
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @BSPI_BPP_MODE_SELECT_MASK, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %79, %76
  br label %89

86:                                               ; preds = %48
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %96

89:                                               ; preds = %85, %75, %67
  %90 = load %struct.bcm_qspi*, %struct.bcm_qspi** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @bcm_qspi_bspi_set_xfer_params(%struct.bcm_qspi* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_set_xfer_params(%struct.bcm_qspi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
