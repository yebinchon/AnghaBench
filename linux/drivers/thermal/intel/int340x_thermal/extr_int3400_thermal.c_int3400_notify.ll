; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3400_thermal_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TEMP=%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TRIP=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"EVENT=%d\00", align 1
@THERMAL_TABLE_CHANGED = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @int3400_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int3400_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.int3400_thermal_priv*, align 8
  %8 = alloca [5 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.int3400_thermal_priv*
  store %struct.int3400_thermal_priv* %10, %struct.int3400_thermal_priv** %7, align 8
  %11 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %7, align 8
  %12 = icmp ne %struct.int3400_thermal_priv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %49 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %7, align 8
  %19 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* (i32, i8*, ...) @kasprintf(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  store i8* %23, i8** %24, align 16
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %7, align 8
  %27 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* (i32, i8*, ...) @kasprintf(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* (i32, i8*, ...) @kasprintf(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 2
  store i8* %34, i8** %35, align 16
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i32, i32* @THERMAL_TABLE_CHANGED, align 4
  %38 = call i8* (i32, i8*, ...) @kasprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 3
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 4
  store i8* null, i8** %40, align 16
  %41 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %7, align 8
  %42 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* @KOBJ_CHANGE, align 4
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %48 = call i32 @kobject_uevent_env(i32* %45, i32 %46, i8** %47)
  br label %50

49:                                               ; preds = %14
  br label %50

50:                                               ; preds = %13, %49, %16
  ret void
}

declare dso_local i8* @kasprintf(i32, i8*, ...) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
