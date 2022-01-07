; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_wdt = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"watchdog timer expired (irq)\0A\00", align 1
@QUIRK_HAS_WTCLRINT_REG = common dso_local global i32 0, align 4
@S3C2410_WTCLRINT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c2410wdt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c2410_wdt*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.s3c2410_wdt* @platform_get_drvdata(i8* %6)
  store %struct.s3c2410_wdt* %7, %struct.s3c2410_wdt** %5, align 8
  %8 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %9 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %13 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %12, i32 0, i32 2
  %14 = call i32 @s3c2410wdt_keepalive(i32* %13)
  %15 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %16 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QUIRK_HAS_WTCLRINT_REG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %25 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @S3C2410_WTCLRINT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 1, i64 %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local %struct.s3c2410_wdt* @platform_get_drvdata(i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @s3c2410wdt_keepalive(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
