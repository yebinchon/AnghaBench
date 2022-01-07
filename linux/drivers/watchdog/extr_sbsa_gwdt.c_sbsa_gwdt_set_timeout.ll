; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbsa_gwdt.c_sbsa_gwdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbsa_gwdt.c_sbsa_gwdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sbsa_gwdt = type { i32, i64 }

@action = common dso_local global i64 0, align 8
@SBSA_GWDT_WOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @sbsa_gwdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsa_gwdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbsa_gwdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.sbsa_gwdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.sbsa_gwdt* %7, %struct.sbsa_gwdt** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i64, i64* @action, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %5, align 8
  %15 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul i32 %16, %17
  %19 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %5, align 8
  %20 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SBSA_GWDT_WOR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %5, align 8
  %27 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = udiv i32 %28, 2
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 %29, %30
  %32 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %5, align 8
  %33 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SBSA_GWDT_WOR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %25, %13
  ret i32 0
}

declare dso_local %struct.sbsa_gwdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
