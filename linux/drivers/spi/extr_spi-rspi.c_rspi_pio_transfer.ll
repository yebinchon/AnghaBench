; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_pio_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_pio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32*, i32*, i32)* @rspi_pio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_pio_transfer(%struct.rspi_data* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rspi_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %44, %4
  %13 = load i32, i32* %9, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %9, align 4
  %15 = icmp ugt i32 %13, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %21, align 4
  %24 = call i32 @rspi_data_out(%struct.rspi_data* %20, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %35 = call i32 @rspi_data_in(%struct.rspi_data* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %30
  br label %12

45:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @rspi_data_out(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_data_in(%struct.rspi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
