; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_calibrate_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_calibrate_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32, %struct.tsens_sensor* }
%struct.tsens_sensor = type { i8 }

@.str = private unnamed_addr constant [6 x i8] c"calib\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"calib_backup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @calibrate_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_8960(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsens_sensor*, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  %8 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %11, i32 0, i32 2
  %13 = load %struct.tsens_sensor*, %struct.tsens_sensor** %12, align 8
  store %struct.tsens_sensor* %13, %struct.tsens_sensor** %7, align 8
  %14 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @qfprom_read(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @qfprom_read(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.tsens_sensor*, %struct.tsens_sensor** %7, align 8
  %45 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 1
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load %struct.tsens_sensor*, %struct.tsens_sensor** %7, align 8
  %50 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %49, i32 1
  store %struct.tsens_sensor* %50, %struct.tsens_sensor** %7, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @kfree(i8* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %30
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @qfprom_read(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
