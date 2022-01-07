; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, %struct.device* }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CCGX_RAB_INTR_REG = common dso_local global i32 0, align 4
@DEV_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"response timeout error\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@CCGX_RAB_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*)* @ccg_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_read_response(%struct.ucsi_ccg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucsi_ccg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 1000)
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %12 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  br label %14

14:                                               ; preds = %30, %1
  %15 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %16 = load i32, i32* @CCGX_RAB_INTR_REG, align 4
  %17 = call i32 @ccg_read(%struct.ucsi_ccg* %15, i32 %16, i32* %6, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DEV_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22
  %29 = call i32 @usleep_range(i32 500, i32 600)
  br label %30

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @time_is_after_jiffies(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %14, label %34

34:                                               ; preds = %30, %27
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @time_is_before_jiffies(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ETIME, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %45 = load i32, i32* @CCGX_RAB_RESPONSE, align 4
  %46 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %47 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %46, i32 0, i32 0
  %48 = call i32 @ccg_read(%struct.ucsi_ccg* %44, i32 %45, i32* %47, i32 4)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %55 = load i32, i32* @CCGX_RAB_INTR_REG, align 4
  %56 = call i32 @ccg_write(%struct.ucsi_ccg* %54, i32 %55, i32* %6, i32 4)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %51, %38, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ccg_read(%struct.ucsi_ccg*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ccg_write(%struct.ucsi_ccg*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
