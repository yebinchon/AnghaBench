; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { %struct.TYPE_2__*, i64, %struct.atmel_lcdfb_pdata }
%struct.TYPE_2__ = type { i32 }
%struct.atmel_lcdfb_pdata = type { i32 (%struct.atmel_lcdfb_pdata*, i32)* }

@.str = private unnamed_addr constant [33 x i8] c"lcd regulator enable failed:\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"lcd regulator disable failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_lcdfb_info*, i32)* @atmel_lcdfb_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_lcdfb_power_control(%struct.atmel_lcdfb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_lcdfb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_lcdfb_pdata*, align 8
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %7, i32 0, i32 2
  store %struct.atmel_lcdfb_pdata* %8, %struct.atmel_lcdfb_pdata** %6, align 8
  %9 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %6, align 8
  %10 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %9, i32 0, i32 0
  %11 = load i32 (%struct.atmel_lcdfb_pdata*, i32)*, i32 (%struct.atmel_lcdfb_pdata*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.atmel_lcdfb_pdata*, i32)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %14, i32 0, i32 0
  %16 = load i32 (%struct.atmel_lcdfb_pdata*, i32)*, i32 (%struct.atmel_lcdfb_pdata*, i32)** %15, align 8
  %17 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.atmel_lcdfb_pdata* %17, i32 %18)
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @regulator_enable(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %37 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %28
  br label %58

43:                                               ; preds = %25
  %44 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regulator_disable(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %43
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %20
  br label %60

60:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
