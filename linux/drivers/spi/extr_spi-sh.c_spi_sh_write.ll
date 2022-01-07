; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_sh_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_sh_data*, i64, i64)* @spi_sh_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sh_write(%struct.spi_sh_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.spi_sh_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.spi_sh_data* %0, %struct.spi_sh_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %8 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %14 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = lshr i64 %16, 2
  %18 = add i64 %15, %17
  %19 = call i32 @iowrite8(i64 %12, i64 %18)
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %22 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %28 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @iowrite32(i64 %26, i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  br label %34

34:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @iowrite8(i64, i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
