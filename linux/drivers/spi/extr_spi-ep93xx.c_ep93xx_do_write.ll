; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.spi_transfer* }
%struct.spi_transfer = type { i32, i64 }
%struct.ep93xx_spi = type { i64, i64 }

@SSPDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @ep93xx_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_do_write(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.ep93xx_spi*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
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
  store i32 0, i32* %5, align 4
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 8
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %28 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %34 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 2
  store i64 %36, i64* %34, align 8
  br label %57

37:                                               ; preds = %1
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %48 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %54 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %52, %32
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %3, align 8
  %60 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SSPDR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  ret void
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
