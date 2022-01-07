; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_tango_thermal.c_tango_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_tango_thermal.c_tango_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tango_thermal_priv = type { i32, i32 }

@IDX_MAX = common dso_local global i32 0, align 4
@IDX_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @tango_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tango_thermal_priv*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.tango_thermal_priv*
  store %struct.tango_thermal_priv* %8, %struct.tango_thermal_priv** %5, align 8
  %9 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %10 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %13 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @temp_above_thresh(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IDX_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %25 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = call i64 @temp_above_thresh(i32 %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi i1 [ false, %19 ], [ %30, %23 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 (...) @cpu_relax()
  br label %19

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IDX_MIN, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %45 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = call i64 @temp_above_thresh(i32 %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i1 [ false, %39 ], [ %51, %43 ]
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = call i32 (...) @cpu_relax()
  br label %39

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 9
  %60 = sdiv i32 %59, 2
  %61 = sub nsw i32 %60, 38
  %62 = mul nsw i32 %61, 1000
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %66 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  ret i32 0
}

declare dso_local i64 @temp_above_thresh(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
