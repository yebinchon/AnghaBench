; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_clear_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6507x_pmic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Read from reg 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Write for reg 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6507x_pmic*, i32, i32)* @tps6507x_pmic_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_pmic_clear_bits(%struct.tps6507x_pmic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tps6507x_pmic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tps6507x_pmic* %0, %struct.tps6507x_pmic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %10 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @tps6507x_pmic_read(%struct.tps6507x_pmic* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %19 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %7, align 4
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @tps6507x_pmic_write(%struct.tps6507x_pmic* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %39 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %26
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %4, align 8
  %48 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tps6507x_pmic_read(%struct.tps6507x_pmic*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tps6507x_pmic_write(%struct.tps6507x_pmic*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
