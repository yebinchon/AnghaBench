; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_rmw_protect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_rmw_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6524x = type { i32, i32 }

@REG_WRITE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set write enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to rmw register %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to clear write enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6524x*, i32, i32, i32)* @rmw_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmw_protect(%struct.tps6524x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tps6524x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tps6524x* %0, %struct.tps6524x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %11 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %14 = load i32, i32* @REG_WRITE_ENABLE, align 4
  %15 = call i32 @__write_reg(%struct.tps6524x* %13, i32 %14, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %20 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @__rmw_reg(%struct.tps6524x* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %33 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %39 = load i32, i32* @REG_WRITE_ENABLE, align 4
  %40 = call i32 @__write_reg(%struct.tps6524x* %38, i32 %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %45 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %43, %18
  %50 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %51 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__write_reg(%struct.tps6524x*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @__rmw_reg(%struct.tps6524x*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
