; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SPI_NBITS_SINGLE = common dso_local global i32 0, align 4
@BSPI = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE = common dso_local global i32 0, align 4
@BSPI_FLEX_MODE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"INVALID COMBINATION: width=%d addrlen=%d hp=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cs:%d %d-lane output, %d-byte address%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c", hp mode\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, %struct.spi_mem_op*, i32)* @bcm_qspi_bspi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_set_mode(%struct.bcm_qspi* %0, %struct.spi_mem_op* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_qspi*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %13 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @SPI_NBITS_SINGLE, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %21, %17 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %34 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %24
  %37 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %38 = load i32, i32* @BSPI, align 4
  %39 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL, align 4
  %40 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %48 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46, %36
  %54 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %58 = load i32, i32* @BSPI, align 4
  %59 = load i32, i32* @BSPI_FLEX_MODE_ENABLE, align 4
  %60 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %62 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @bcm_qspi_bspi_set_override(%struct.bcm_qspi* %61, %struct.spi_mem_op* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %53, %46
  br label %66

66:                                               ; preds = %65, %24
  %67 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %68 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %74 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @bcm_qspi_bspi_set_flex_mode(%struct.bcm_qspi* %73, %struct.spi_mem_op* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %82 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  br label %147

89:                                               ; preds = %77
  %90 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %98 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %105 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %103, %96, %89
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %113 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %117 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %121 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %124 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %128 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %131 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %135 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %139 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, -1
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %145 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %133, i32 %137, i8* %144)
  br label %146

146:                                              ; preds = %110, %103
  br label %147

147:                                              ; preds = %146, %80
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_set_override(%struct.bcm_qspi*, %struct.spi_mem_op*, i32) #1

declare dso_local i32 @bcm_qspi_bspi_set_flex_mode(%struct.bcm_qspi*, %struct.spi_mem_op*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
