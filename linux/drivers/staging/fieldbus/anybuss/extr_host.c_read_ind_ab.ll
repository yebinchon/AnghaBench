; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_read_ind_ab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_read_ind_ab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@REG_IND_AB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IND_AB register not stable\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @read_ind_ab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ind_ab(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i32, i32* @HZ, align 4
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @time_before_eq(i32 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load i32, i32* @REG_IND_AB, align 4
  %21 = call i32 @regmap_read(%struct.regmap* %19, i32 %20, i32* %5)
  %22 = load %struct.regmap*, %struct.regmap** %3, align 8
  %23 = load i32, i32* @REG_IND_AB, align 4
  %24 = call i32 @regmap_read(%struct.regmap* %22, i32 %23, i32* %6)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 (...) @cpu_relax()
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %33
  %41 = call i32 @usleep_range(i32 500, i32 1000)
  br label %42

42:                                               ; preds = %40, %36
  br label %13

43:                                               ; preds = %13
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @time_before_eq(i32, i64) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
