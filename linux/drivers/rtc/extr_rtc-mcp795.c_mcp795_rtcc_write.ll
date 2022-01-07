; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_rtcc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_rtcc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@MCP795_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failed to write %d bytes to address %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i64*, i64)* @mcp795_rtcc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_rtcc_write(%struct.device* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [257 x i64], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.spi_device* @to_spi_device(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %9, align 8
  %14 = load i64, i64* @MCP795_WRITE, align 8
  %15 = getelementptr inbounds [257 x i64], [257 x i64]* %11, i64 0, i64 0
  store i64 %14, i64* %15, align 16
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds [257 x i64], [257 x i64]* %11, i64 0, i64 1
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds [257 x i64], [257 x i64]* %11, i64 0, i64 2
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @memcpy(i64* %18, i64* %19, i64 %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %23 = getelementptr inbounds [257 x i64], [257 x i64]* %11, i64 0, i64 0
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 2, %24
  %26 = call i32 @spi_write(%struct.spi_device* %22, i64* %23, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i64*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
