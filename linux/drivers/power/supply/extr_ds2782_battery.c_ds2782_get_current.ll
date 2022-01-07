; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds2782_get_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds2782_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds278x_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DS2782_REG_RSNSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sense resistor value is 0\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"sense resistor = %d milli-ohms\0A\00", align 1
@DS278x_REG_CURRENT_MSB = common dso_local global i32 0, align 4
@DS2782_CURRENT_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds278x_info*, i32*)* @ds2782_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2782_get_current(%struct.ds278x_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds278x_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ds278x_info* %0, %struct.ds278x_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %11 = load i32, i32* @DS2782_REG_RSNSP, align 4
  %12 = call i32 @ds278x_read_reg(%struct.ds278x_info* %10, i32 %11, i32* %8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %22 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = sdiv i32 1000, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %32 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %38 = load i32, i32* @DS278x_REG_CURRENT_MSB, align 4
  %39 = call i32 @ds278x_read_reg16(%struct.ds278x_info* %37, i32 %38, i32* %9)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %28
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DS2782_CURRENT_UNITS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  %49 = mul nsw i32 %45, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %42, %20, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ds278x_read_reg(%struct.ds278x_info*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ds278x_read_reg16(%struct.ds278x_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
