; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-jcore.c_jcore_spi_baudrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-jcore.c_jcore_spi_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jcore_spi = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"speed=%d reg=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jcore_spi*, i32)* @jcore_spi_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jcore_spi_baudrate(%struct.jcore_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.jcore_spi*, align 8
  %4 = alloca i32, align 4
  store %struct.jcore_spi* %0, %struct.jcore_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %7 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %14 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %17 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp sge i32 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %23 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  br label %35

24:                                               ; preds = %11
  %25 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %26 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = load i32, i32* %4, align 4
  %30 = sdiv i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = shl i32 %31, 27
  %33 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %34 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %24, %21
  %36 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %37 = call i32 @jcore_spi_program(%struct.jcore_spi* %36)
  %38 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %39 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.jcore_spi*, %struct.jcore_spi** %3, align 8
  %46 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @jcore_spi_program(%struct.jcore_spi*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
