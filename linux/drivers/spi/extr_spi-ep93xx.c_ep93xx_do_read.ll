; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.spi_transfer* }
%struct.spi_transfer = type { i32, i64 }
%struct.ep93xx_spi = type { i64, i64 }

@SSPDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @ep93xx_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_do_read(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.ep93xx_spi*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i8*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %7 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.ep93xx_spi* %7, %struct.ep93xx_spi** %3, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %9 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  store %struct.spi_transfer* %12, %struct.spi_transfer** %4, align 8
  %13 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %14 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSPDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i8* @readl(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  %34 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %35 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %29, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %23
  %39 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %40 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 2
  store i64 %42, i64* %40, align 8
  br label %63

43:                                               ; preds = %1
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8**
  %54 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %55 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %49, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %60 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %58, %38
  ret void
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
