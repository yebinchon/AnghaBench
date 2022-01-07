; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_setup_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_setup_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ili9320_spi }
%struct.ili9320_spi = type { i32, %struct.TYPE_4__*, i32, i32, %struct.spi_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@ili9320_write_spi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ili9320*, %struct.spi_device*)* @ili9320_setup_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ili9320_setup_spi(%struct.ili9320* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.ili9320*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.ili9320_spi*, align 8
  store %struct.ili9320* %0, %struct.ili9320** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  %6 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %7 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.ili9320_spi* %8, %struct.ili9320_spi** %5, align 8
  %9 = load i32, i32* @ili9320_write_spi, align 4
  %10 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %11 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %14 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %13, i32 0, i32 4
  store %struct.spi_device* %12, %struct.spi_device** %14, align 8
  %15 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %16 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %19 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %17, i32* %22, align 4
  %23 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %24 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %27 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 %25, i32* %30, align 4
  %31 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %32 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 3, i32* %35, align 4
  %36 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %37 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 3, i32* %40, align 4
  %41 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %42 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 8, i32* %45, align 4
  %46 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %47 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %52 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  %56 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %57 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %56, i32 0, i32 0
  %58 = call i32 @spi_message_init(i32* %57)
  %59 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %60 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %64 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %63, i32 0, i32 0
  %65 = call i32 @spi_message_add_tail(%struct.TYPE_4__* %62, i32* %64)
  %66 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %67 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 1
  %70 = load %struct.ili9320_spi*, %struct.ili9320_spi** %5, align 8
  %71 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %70, i32 0, i32 0
  %72 = call i32 @spi_message_add_tail(%struct.TYPE_4__* %69, i32* %71)
  ret void
}

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
