; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ucsi_ccg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ucsi_ccg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32 }

@CCGX_RAB_UCSI_CONTROL_STOP = common dso_local global i32 0, align 4
@CCGX_RAB_UCSI_CONTROL = common dso_local global i32 0, align 4
@CCGX_RAB_UCSI_CONTROL_START = common dso_local global i32 0, align 4
@CCGX_RAB_INTR_REG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*)* @ucsi_ccg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_ccg_init(%struct.ucsi_ccg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucsi_ccg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %3, align 8
  store i32 10, i32* %4, align 4
  %7 = load i32, i32* @CCGX_RAB_UCSI_CONTROL_STOP, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %9 = load i32, i32* @CCGX_RAB_UCSI_CONTROL, align 4
  %10 = call i32 @ccg_write(%struct.ucsi_ccg* %8, i32 %9, i32* %5, i32 4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* @CCGX_RAB_UCSI_CONTROL_START, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %18 = load i32, i32* @CCGX_RAB_UCSI_CONTROL, align 4
  %19 = call i32 @ccg_write(%struct.ucsi_ccg* %17, i32 %18, i32* %5, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %47, %24
  %26 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %27 = load i32, i32* @CCGX_RAB_INTR_REG, align 4
  %28 = call i32 @ccg_read(%struct.ucsi_ccg* %26, i32 %27, i32* %5, i32 4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %54

37:                                               ; preds = %33
  %38 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %39 = load i32, i32* @CCGX_RAB_INTR_REG, align 4
  %40 = call i32 @ccg_write(%struct.ucsi_ccg* %38, i32 %39, i32* %5, i32 4)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %37
  %46 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %25, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %43, %36, %31, %22, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ccg_write(%struct.ucsi_ccg*, i32, i32*, i32) #1

declare dso_local i32 @ccg_read(%struct.ucsi_ccg*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
