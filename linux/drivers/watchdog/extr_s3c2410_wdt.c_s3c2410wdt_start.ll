; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.s3c2410_wdt = type { i64, i32, i64, i32 }

@S3C2410_WTCON = common dso_local global i64 0, align 8
@S3C2410_WTCON_ENABLE = common dso_local global i64 0, align 8
@S3C2410_WTCON_DIV128 = common dso_local global i64 0, align 8
@soft_noboot = common dso_local global i64 0, align 8
@S3C2410_WTCON_INTEN = common dso_local global i64 0, align 8
@S3C2410_WTCON_RSTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Starting watchdog: count=0x%08x, wtcon=%08lx\0A\00", align 1
@S3C2410_WTDAT = common dso_local global i64 0, align 8
@S3C2410_WTCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @s3c2410wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.s3c2410_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.s3c2410_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.s3c2410_wdt* %6, %struct.s3c2410_wdt** %4, align 8
  %7 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %8 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %11 = call i32 @__s3c2410wdt_stop(%struct.s3c2410_wdt* %10)
  %12 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %13 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S3C2410_WTCON, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @readl(i64 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* @S3C2410_WTCON_ENABLE, align 8
  %19 = load i64, i64* @S3C2410_WTCON_DIV128, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* @soft_noboot, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i64, i64* @S3C2410_WTCON_INTEN, align 8
  %27 = load i64, i64* %3, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* @S3C2410_WTCON_RSTEN, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %3, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %41

33:                                               ; preds = %1
  %34 = load i64, i64* @S3C2410_WTCON_INTEN, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %3, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* @S3C2410_WTCON_RSTEN, align 8
  %39 = load i64, i64* %3, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %43 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %51 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %54 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @S3C2410_WTDAT, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i64 %52, i64 %57)
  %59 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %60 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %63 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @S3C2410_WTCNT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %70 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @S3C2410_WTCON, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %68, i64 %73)
  %75 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %76 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  ret i32 0
}

declare dso_local %struct.s3c2410_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__s3c2410wdt_stop(%struct.s3c2410_wdt*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
