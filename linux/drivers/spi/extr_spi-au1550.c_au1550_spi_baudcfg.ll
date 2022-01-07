; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_baudcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_baudcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_spi*, i32)* @au1550_spi_baudcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_baudcfg(%struct.au1550_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.au1550_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %9 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = udiv i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 4, %20
  %22 = udiv i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 5, i32* %7, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 64
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %34

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %13

34:                                               ; preds = %29, %25, %13
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 3, i32* %6, align 4
  store i32 64, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PSC_SPICFG_SET_BAUD(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @PSC_SPICFG_SET_DIV(i32 %43)
  %45 = or i32 %42, %44
  ret i32 %45
}

declare dso_local i32 @PSC_SPICFG_SET_BAUD(i32) #1

declare dso_local i32 @PSC_SPICFG_SET_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
