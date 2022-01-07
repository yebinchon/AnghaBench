; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_check_sysfs_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_check_sysfs_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"Capacity limits: (Lower: %d User: %d Upper: %d) [user: %d, was: %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"OK! Using users cap %d uAh now\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Capacity from user out of limits, ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @check_sysfs_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sysfs_capacity(%struct.ab8500_fg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  %8 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %9 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %13 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %14 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg* %12, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %19 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %23 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 10
  %30 = sub nsw i32 %21, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %32 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %36 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 10
  %43 = add nsw i32 %34, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 1000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1000, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %53 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %60 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %51
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %73 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %78 = call i32 @force_capacity(%struct.ab8500_fg* %77)
  store i32 1, i32* %2, align 4
  br label %84

79:                                               ; preds = %67, %51
  %80 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %81 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %71
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @force_capacity(%struct.ab8500_fg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
