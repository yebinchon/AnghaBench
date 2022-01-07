; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_battok_init_hw_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_battok_init_hw_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@BATT_OK_MIN = common dso_local global i32 0, align 4
@BATT_OK_INCREMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid voltage step:%d, using %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"using: %x %d %d\0A\00", align 1
@AB8500_SYS_CTRL2_BLOCK = common dso_local global i32 0, align 4
@AB8500_BATT_OK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @ab8500_fg_battok_init_hw_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_battok_init_hw_register(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %10 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %11 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %18 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ab8500_fg_battok_calc(%struct.ab8500_fg* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ab8500_fg_battok_calc(%struct.ab8500_fg* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @BATT_OK_MIN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BATT_OK_INCREMENT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %40 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %1
  %47 = load i32, i32* @BATT_OK_MIN, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BATT_OK_INCREMENT, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %57 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %46
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 4
  %67 = or i32 %64, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %69 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %76 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AB8500_SYS_CTRL2_BLOCK, align 4
  %79 = load i32, i32* @AB8500_BATT_OK_REG, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @abx500_set_register_interruptible(i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @ab8500_fg_battok_calc(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
