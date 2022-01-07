; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_sh_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spi_sh_data*, i64)* @spi_sh_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spi_sh_read(%struct.spi_sh_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.spi_sh_data*, align 8
  %5 = alloca i64, align 8
  store %struct.spi_sh_data* %0, %struct.spi_sh_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %7 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %12 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = lshr i64 %14, 2
  %16 = add i64 %13, %15
  %17 = call i64 @ioread8(i64 %16)
  store i64 %17, i64* %3, align 8
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %20 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %25 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %26, %27
  %29 = call i64 @ioread32(i64 %28)
  store i64 %29, i64* %3, align 8
  br label %31

30:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %30, %23, %10
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @ioread8(i64) #1

declare dso_local i64 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
