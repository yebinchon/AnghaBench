; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_get_dt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_get_dt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm9260_wdt_priv = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@HW_RESET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"alphascale,mode\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@SW_RESET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@DEBUG = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"unknown reset-type: %s. Using default \22hw\22 mode.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm9260_wdt_priv*)* @asm9260_wdt_get_dt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm9260_wdt_get_dt_mode(%struct.asm9260_wdt_priv* %0) #0 {
  %2 = alloca %struct.asm9260_wdt_priv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.asm9260_wdt_priv* %0, %struct.asm9260_wdt_priv** %2, align 8
  %5 = load i8*, i8** @HW_RESET, align 8
  %6 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %7 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %9 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_property_read_string(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @HW_RESET, align 8
  %23 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %24 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %49

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** @SW_RESET, align 8
  %31 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %32 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %48

33:                                               ; preds = %25
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** @DEBUG, align 8
  %39 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %40 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %47

41:                                               ; preds = %33
  %42 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %2, align 8
  %43 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @dev_warn(%struct.TYPE_2__* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %16, %48, %21
  ret void
}

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
