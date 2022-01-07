; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_program_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i64 }
%struct.syscfg_reset_controller = type { %struct.syscfg_reset_channel*, i64 }
%struct.syscfg_reset_channel = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @syscfg_reset_program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscfg_reset_program_hw(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reset_controller_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.syscfg_reset_controller*, align 8
  %9 = alloca %struct.syscfg_reset_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %15 = call %struct.syscfg_reset_controller* @to_syscfg_reset_controller(%struct.reset_controller_dev* %14)
  store %struct.syscfg_reset_controller* %15, %struct.syscfg_reset_controller** %8, align 8
  %16 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %8, align 8
  %17 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i32 [ %24, %20 ], [ %30, %25 ]
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %36 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %92

42:                                               ; preds = %31
  %43 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %8, align 8
  %44 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %43, i32 0, i32 0
  %45 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %45, i64 %46
  store %struct.syscfg_reset_channel* %47, %struct.syscfg_reset_channel** %9, align 8
  %48 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %9, align 8
  %49 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @regmap_field_write(i32 %50, i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %92

57:                                               ; preds = %42
  %58 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %9, align 8
  %59 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load i64, i64* @jiffies, align 8
  %64 = call i64 @msecs_to_jiffies(i32 1000)
  %65 = add i64 %63, %64
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %62, %88
  %67 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %9, align 8
  %68 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @regmap_field_read(i64 %69, i64* %13)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %92

75:                                               ; preds = %66
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %90

80:                                               ; preds = %75
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @time_after(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ETIME, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %80
  %89 = call i32 (...) @cpu_relax()
  br label %66

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %57
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %85, %73, %55, %39
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.syscfg_reset_controller* @to_syscfg_reset_controller(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_field_write(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_field_read(i64, i64*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
