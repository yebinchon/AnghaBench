; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MCP795_REG_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Read from mcp795: %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mcp795_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @MCP795_REG_SECONDS, align 4
  %10 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %11 = call i32 @mcp795_rtcc_read(%struct.device* %8, i32 %9, i32* %10, i32 28)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = and i32 %18, 127
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 127
  %26 = call i8* @bcd2bin(i32 %25)
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 63
  %32 = call i8* @bcd2bin(i32 %31)
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7
  %38 = call i8* @bcd2bin(i32 %37)
  %39 = getelementptr i8, i8* %38, i64 -1
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 4
  %43 = load i32, i32* %42, align 16
  %44 = and i32 %43, 63
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 31
  %51 = call i8* @bcd2bin(i32 %50)
  %52 = getelementptr i8, i8* %51, i64 -1
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 6
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = getelementptr i8, i8* %57, i64 100
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %16, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mcp795_rtcc_read(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
