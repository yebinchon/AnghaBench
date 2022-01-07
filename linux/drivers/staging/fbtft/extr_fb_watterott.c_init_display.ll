; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not set SPI_CS_HIGH\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not restore SPI mode\0A\00", align 1
@DEBUG_INIT_DISPLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Firmware version: %x.%02x\0A\00", align 1
@mode = common dso_local global i32 0, align 4
@write_vmem_8bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fbtft_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %8 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @SPI_CS_HIGH, align 4
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %14 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %20 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @spi_setup(%struct.TYPE_6__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %84

33:                                               ; preds = %1
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %35 = call i32 @write_reg(%struct.fbtft_par* %34, i32 0)
  %36 = call i32 @mdelay(i32 50)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %38 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %39, align 8
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %42 = bitcast %struct.fbtft_par* %41 to %struct.fbtft_par.0*
  %43 = call i32 %40(%struct.fbtft_par.0* %42)
  %44 = call i32 @mdelay(i32 1000)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %47 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %51 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @spi_setup(%struct.TYPE_6__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %33
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %58 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %84

64:                                               ; preds = %33
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %66 = call i32 @write_reg(%struct.fbtft_par* %65, i32 0)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %68 = call i32 @firmware_version(%struct.fbtft_par* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @DEBUG_INIT_DISPLAY, align 4
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = lshr i32 %71, 8
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @fbtft_par_dbg(i32 %69, %struct.fbtft_par* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i32, i32* @mode, align 4
  %77 = icmp eq i32 %76, 332
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load i32, i32* @write_vmem_8bit, align 4
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %81 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %64
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %56, %25
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @spi_setup(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @firmware_version(%struct.fbtft_par*) #1

declare dso_local i32 @fbtft_par_dbg(i32, %struct.fbtft_par*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
