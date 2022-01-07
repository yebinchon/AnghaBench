; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.bq32k_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@BQ32K_OF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BQ32K_SECONDS_MASK = common dso_local global i32 0, align 4
@BQ32K_MINUTES_MASK = common dso_local global i32 0, align 4
@BQ32K_HOURS_MASK = common dso_local global i32 0, align 4
@BQ32K_CENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bq32k_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq32k_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.bq32k_regs, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @bq32k_read(%struct.device* %8, %struct.bq32k_regs* %6, i32 0, i32 28)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BQ32K_OF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BQ32K_SECONDS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i8* @bcd2bin(i32 %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BQ32K_MINUTES_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i8* @bcd2bin(i32 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BQ32K_HOURS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i8* @bcd2bin(i32 %41)
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = getelementptr i8, i8* %52, i64 -1
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @bcd2bin(i32 %57)
  %59 = getelementptr i8, i8* %58, i64 -1
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = getelementptr inbounds %struct.bq32k_regs, %struct.bq32k_regs* %6, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BQ32K_CENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 100, i32 0
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %64, i64 %72
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %23, %20, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @bq32k_read(%struct.device*, %struct.bq32k_regs*, i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
