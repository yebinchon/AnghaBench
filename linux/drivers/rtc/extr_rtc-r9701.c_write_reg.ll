; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reg(%struct.device* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca [2 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.spi_device* @to_spi_device(%struct.device* %9)
  store %struct.spi_device* %10, %struct.spi_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 127
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load i8, i8* %6, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i8* %19)
  %21 = call i32 @spi_write(%struct.spi_device* %17, i8* %18, i32 %20)
  ret i32 %21
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
