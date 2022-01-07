; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_charged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gab = type { i32, %struct.gab_platform_data* }
%struct.gab_platform_data = type { i32 }

@JITTER_DEFAULT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gab_charged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gab_charged(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gab*, align 8
  %6 = alloca %struct.gab_platform_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.gab*
  store %struct.gab* %9, %struct.gab** %5, align 8
  %10 = load %struct.gab*, %struct.gab** %5, align 8
  %11 = getelementptr inbounds %struct.gab, %struct.gab* %10, i32 0, i32 1
  %12 = load %struct.gab_platform_data*, %struct.gab_platform_data** %11, align 8
  store %struct.gab_platform_data* %12, %struct.gab_platform_data** %6, align 8
  %13 = load %struct.gab_platform_data*, %struct.gab_platform_data** %6, align 8
  %14 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.gab_platform_data*, %struct.gab_platform_data** %6, align 8
  %19 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @JITTER_DEFAULT, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.gab*, %struct.gab** %5, align 8
  %26 = getelementptr inbounds %struct.gab, %struct.gab* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @msecs_to_jiffies(i32 %27)
  %29 = call i32 @schedule_delayed_work(i32* %26, i32 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %30
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
