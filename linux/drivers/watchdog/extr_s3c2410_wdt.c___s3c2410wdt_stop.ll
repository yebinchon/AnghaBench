; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c___s3c2410wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c___s3c2410wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_wdt = type { i64 }

@S3C2410_WTCON = common dso_local global i64 0, align 8
@S3C2410_WTCON_ENABLE = common dso_local global i64 0, align 8
@S3C2410_WTCON_RSTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_wdt*)* @__s3c2410wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__s3c2410wdt_stop(%struct.s3c2410_wdt* %0) #0 {
  %2 = alloca %struct.s3c2410_wdt*, align 8
  %3 = alloca i64, align 8
  store %struct.s3c2410_wdt* %0, %struct.s3c2410_wdt** %2, align 8
  %4 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %2, align 8
  %5 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S3C2410_WTCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @S3C2410_WTCON_ENABLE, align 8
  %11 = load i64, i64* @S3C2410_WTCON_RSTEN, align 8
  %12 = or i64 %10, %11
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %2, align 8
  %18 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S3C2410_WTCON, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i64 %16, i64 %21)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
