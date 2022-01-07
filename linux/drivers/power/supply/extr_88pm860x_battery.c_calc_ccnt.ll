; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_ccnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_ccnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32 }
%struct.ccnt = type { i32, i32, i32, i32, i32 }

@CCNT_POS1 = common dso_local global i32 0, align 4
@CCNT_POS2 = common dso_local global i32 0, align 4
@CCNT_NEG1 = common dso_local global i32 0, align 4
@CCNT_NEG2 = common dso_local global i32 0, align 4
@CCNT_SPOS = common dso_local global i32 0, align 4
@CCNT_SNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, %struct.ccnt*)* @calc_ccnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_ccnt(%struct.pm860x_battery_info* %0, %struct.ccnt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm860x_battery_info*, align 8
  %5 = alloca %struct.ccnt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %4, align 8
  store %struct.ccnt* %1, %struct.ccnt** %5, align 8
  %9 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %10 = load i32, i32* @CCNT_POS1, align 4
  %11 = call i32 @read_ccnt(%struct.pm860x_battery_info* %9, i32 %10, i32* %8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %97

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 65535
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %19 = load i32, i32* @CCNT_POS2, align 4
  %20 = call i32 @read_ccnt(%struct.pm860x_battery_info* %18, i32 %19, i32* %8)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %97

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 65535
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %32 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %36 = load i32, i32* @CCNT_NEG1, align 4
  %37 = call i32 @read_ccnt(%struct.pm860x_battery_info* %35, i32 %36, i32* %8)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %97

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 65535
  store i32 %43, i32* %6, align 4
  %44 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %45 = load i32, i32* @CCNT_NEG2, align 4
  %46 = call i32 @read_ccnt(%struct.pm860x_battery_info* %44, i32 %45, i32* %8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %97

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 65535
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = xor i32 %56, -1
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %61 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %65 = load i32, i32* @CCNT_SPOS, align 4
  %66 = call i32 @read_ccnt(%struct.pm860x_battery_info* %64, i32 %65, i32* %8)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %97

70:                                               ; preds = %50
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %73 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %77 = load i32, i32* @CCNT_SNEG, align 4
  %78 = call i32 @read_ccnt(%struct.pm860x_battery_info* %76, i32 %77, i32* %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %97

82:                                               ; preds = %70
  %83 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %84 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %85, 18236
  %87 = lshr i32 %86, 40
  %88 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %89 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %91 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %92, 18236
  %94 = lshr i32 %93, 40
  %95 = load %struct.ccnt*, %struct.ccnt** %5, align 8
  %96 = getelementptr inbounds %struct.ccnt, %struct.ccnt* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %99

97:                                               ; preds = %81, %69, %49, %40, %23, %14
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %82
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @read_ccnt(%struct.pm860x_battery_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
