; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.s3c2410_wdt = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Heartbeat: count=%d, timeout=%d, freq=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"timeout %d too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Heartbeat: timeout=%d, divisor=%d, count=%d (%08x)\0A\00", align 1
@S3C2410_WTCON = common dso_local global i64 0, align 8
@S3C2410_WTCON_PRESCALE_MASK = common dso_local global i64 0, align 8
@S3C2410_WTDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @s3c2410wdt_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_set_heartbeat(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c2410_wdt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %12 = call %struct.s3c2410_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %11)
  store %struct.s3c2410_wdt* %12, %struct.s3c2410_wdt** %6, align 8
  %13 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %14 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i8* @DIV_ROUND_UP(i32 %24, i32 128)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %33 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp uge i32 %40, 65536
  br i1 %41, label %42, label %57

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @DIV_ROUND_UP(i32 %43, i32 65535)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ugt i32 %46, 256
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %50 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %59 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @DIV_ROUND_UP(i32 %64, i32 %65)
  %67 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i8* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @DIV_ROUND_UP(i32 %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %74 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %76 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @S3C2410_WTCON, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i64 @readl(i64 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* @S3C2410_WTCON_PRESCALE_MASK, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %10, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %85, 1
  %87 = call i64 @S3C2410_WTCON_PRESCALE(i32 %86)
  %88 = load i64, i64* %10, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %93 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @S3C2410_WTDAT, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i64 %91, i64 %96)
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %6, align 8
  %100 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @S3C2410_WTCON, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i64 %98, i64 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %7, align 8
  %110 = udiv i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %113 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %57, %48, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.s3c2410_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @S3C2410_WTCON_PRESCALE(i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
