; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not set SPI_CS_HIGH\0A\00", align 1
@ratio = common dso_local global i32 0, align 4
@gain = common dso_local global i32 0, align 4
@pot = common dso_local global i32 0, align 4
@temp = common dso_local global i32 0, align 4
@load = common dso_local global i32 0, align 4
@pump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fbtft_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  %5 = load i32, i32* @SPI_CS_HIGH, align 4
  %6 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %7 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %5
  store i32 %11, i32* %9, align 4
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %13 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @spi_setup(%struct.TYPE_4__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %20 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %28 = call i32 @write_reg(%struct.fbtft_par* %27, i32 226)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %30 = load i32, i32* @ratio, align 4
  %31 = and i32 %30, 3
  %32 = or i32 232, %31
  %33 = call i32 @write_reg(%struct.fbtft_par* %29, i32 %32)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %35 = call i32 @write_reg(%struct.fbtft_par* %34, i32 129)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %37 = load i32, i32* @gain, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 %38, 6
  %40 = load i32, i32* @pot, align 4
  %41 = and i32 %40, 63
  %42 = or i32 %39, %41
  %43 = call i32 @write_reg(%struct.fbtft_par* %36, i32 %42)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %45 = load i32, i32* @temp, align 4
  %46 = and i32 %45, 3
  %47 = or i32 36, %46
  %48 = call i32 @write_reg(%struct.fbtft_par* %44, i32 %47)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %50 = load i32, i32* @load, align 4
  %51 = and i32 %50, 3
  %52 = or i32 40, %51
  %53 = call i32 @write_reg(%struct.fbtft_par* %49, i32 %52)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %55 = load i32, i32* @pump, align 4
  %56 = and i32 %55, 3
  %57 = or i32 44, %56
  %58 = call i32 @write_reg(%struct.fbtft_par* %54, i32 %57)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %60 = call i32 @write_reg(%struct.fbtft_par* %59, i32 167)
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %62 = call i32 @write_reg(%struct.fbtft_par* %61, i32 210)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 175)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %26, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @spi_setup(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
