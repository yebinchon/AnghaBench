; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pin_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pin_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.at91_pmx_pin = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"pio%c%d configured as periph%c with conf = 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"pio%c%d configured as gpio with conf = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.at91_pmx_pin*)* @at91_pin_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_pin_dbg(%struct.device* %0, %struct.at91_pmx_pin* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.at91_pmx_pin*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.at91_pmx_pin* %1, %struct.at91_pmx_pin** %4, align 8
  %5 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %6 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %12 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 65
  %15 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %16 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %19 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = add nsw i32 %21, 65
  %23 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %24 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.device*, i8*, i64, i32, i32, ...) @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %17, i32 %22, i32 %25)
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %30 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 65
  %33 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %34 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %4, align 8
  %37 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.device*, i8*, i64, i32, i32, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
