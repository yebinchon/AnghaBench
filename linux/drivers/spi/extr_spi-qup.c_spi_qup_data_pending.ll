; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_data_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_data_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_qup = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_qup*)* @spi_qup_data_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_data_pending(%struct.spi_qup* %0) #0 {
  %2 = alloca %struct.spi_qup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spi_qup* %0, %struct.spi_qup** %2, align 8
  %5 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %6 = call i64 @spi_qup_len(%struct.spi_qup* %5)
  %7 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %8 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  %11 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %12 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DIV_ROUND_UP(i64 %10, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %16 = call i64 @spi_qup_len(%struct.spi_qup* %15)
  %17 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %18 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.spi_qup*, %struct.spi_qup** %2, align 8
  %22 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DIV_ROUND_UP(i64 %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %1
  %31 = phi i1 [ true, %1 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @spi_qup_len(%struct.spi_qup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
