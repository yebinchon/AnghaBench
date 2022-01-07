; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_men_mcb.c_men_lookup_uartclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_men_mcb.c_men_lookup_uartclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s on board %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"F075\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"F216\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"G215\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"F210\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"board not detected, using default uartclk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcb_device*)* @men_lookup_uartclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_lookup_uartclk(%struct.mcb_device* %0) #0 {
  %2 = alloca %struct.mcb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mcb_device* %0, %struct.mcb_device** %2, align 8
  store i32 1041666, i32* %3, align 4
  %4 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %5 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %4, i32 0, i32 0
  %6 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %7 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %6, i32 0, i32 0
  %8 = call i32 @dev_name(i32* %7)
  %9 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %10 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32*, i8*, ...) @dev_info(i32* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %13)
  %15 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %16 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strncmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1041666, i32* %3, align 4
  br label %57

23:                                               ; preds = %1
  %24 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %25 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strncmp(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1843200, i32* %3, align 4
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %34 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strncmp(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1843200, i32* %3, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %43 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strncmp(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 115200, i32* %3, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %52 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_info(i32* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %31
  br label %57

57:                                               ; preds = %56, %22
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %58, 4
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
