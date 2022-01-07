; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_charge_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_charge_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc294x_info = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LTC294X_REG_CONTROL = common dso_local global i32 0, align 4
@LTC294X_REG_CONTROL_SHUTDOWN_MASK = common dso_local global i32 0, align 4
@LTC294X_REG_ACC_CHARGE_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc294x_info*, i32)* @ltc294x_set_charge_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_set_charge_now(%struct.ltc294x_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltc294x_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ltc294x_info* %0, %struct.ltc294x_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @convert_uAh_to_bin(%struct.ltc294x_info* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %14 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 65535
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 65535
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %23
  %30 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %31 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %34 = call i32 @ltc294x_read_regs(i32 %32, i32 %33, i32* %8, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %29
  %40 = load i32, i32* @LTC294X_REG_CONTROL_SHUTDOWN_MASK, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %44 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %47 = call i32 @ltc294x_write_regs(i32 %45, i32 %46, i32* %8, i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %86

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @I16_MSB(i32 %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @I16_LSB(i32 %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %60 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @LTC294X_REG_ACC_CHARGE_MSB, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = call i32 @ltc294x_write_regs(i32 %61, i32 %62, i32* %63, i32 2)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %69

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* @LTC294X_REG_CONTROL_SHUTDOWN_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %75 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %78 = call i32 @ltc294x_write_regs(i32 %76, i32 %77, i32* %8, i32 1)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  br label %84

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %50, %37, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @convert_uAh_to_bin(%struct.ltc294x_info*, i32) #1

declare dso_local i32 @ltc294x_read_regs(i32, i32, i32*, i32) #1

declare dso_local i32 @ltc294x_write_regs(i32, i32, i32*, i32) #1

declare dso_local i32 @I16_MSB(i32) #1

declare dso_local i32 @I16_LSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
