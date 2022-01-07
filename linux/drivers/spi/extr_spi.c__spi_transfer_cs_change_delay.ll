; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c__spi_transfer_cs_change_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c__spi_transfer_cs_change_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_message = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Use of unsupported delay unit %i, using default of 10us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_message*, %struct.spi_transfer*)* @_spi_transfer_cs_change_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_spi_transfer_cs_change_delay(%struct.spi_message* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_message*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_message* %0, %struct.spi_message** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %60

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %48 [
    i32 128, label %22
    i32 130, label %30
    i32 129, label %31
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 10000, i32* %5, align 4
  br label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 1000
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %25
  br label %57

30:                                               ; preds = %20
  br label %57

31:                                               ; preds = %20
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i32 [ %34, %36 ], [ %41, %37 ]
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 1000000000, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %20
  %49 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %50 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err_once(i32* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 10000, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %42, %30, %29
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @_spi_transfer_delay_ns(i32 %58)
  br label %60

60:                                               ; preds = %57, %19
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_err_once(i32*, i8*, i32) #1

declare dso_local i32 @_spi_transfer_delay_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
