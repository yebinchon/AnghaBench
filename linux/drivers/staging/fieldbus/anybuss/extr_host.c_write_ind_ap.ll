; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_write_ind_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_write_ind_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IND_AP register not stable\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @write_ind_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ind_ap(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @jiffies, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %43, %2
  %15 = load i32, i32* @jiffies, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @time_before_eq(i32 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = load i32, i32* @REG_IND_AP, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @regmap_write(%struct.regmap* %20, i32 %21, i32 %22)
  %24 = load %struct.regmap*, %struct.regmap** %4, align 8
  %25 = load i32, i32* @REG_IND_AP, align 4
  %26 = call i32 @regmap_read(%struct.regmap* %24, i32 %25, i32* %7)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %48

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 (...) @cpu_relax()
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %43

41:                                               ; preds = %34
  %42 = call i32 @usleep_range(i32 500, i32 1000)
  br label %43

43:                                               ; preds = %41, %37
  br label %14

44:                                               ; preds = %14
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @time_before_eq(i32, i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

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
