; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_templow_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_templow_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_btemp = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Ignore false btemp low irq for ABB cut 1.0, 1.1, 2.0 and 3.3\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Battery temperature lower than -10deg c\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ab8500_btemp_templow_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_btemp_templow_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ab8500_btemp*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ab8500_btemp*
  store %struct.ab8500_btemp* %7, %struct.ab8500_btemp** %5, align 8
  %8 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %9 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_ab8500_3p3_or_earlier(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %15 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %20 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_crit(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %24 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %27 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %30 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %33 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  %35 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %5, align 8
  %36 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @power_supply_changed(i32 %37)
  br label %39

39:                                               ; preds = %18, %13
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i64 @is_ab8500_3p3_or_earlier(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
