; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_set_sane_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_set_sane_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.armada_thermal_priv = type { i8* }

@THERMAL_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"armada_thermal\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.armada_thermal_priv*)* @armada_set_sane_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_set_sane_name(%struct.platform_device* %0, %struct.armada_thermal_priv* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.armada_thermal_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.armada_thermal_priv* %1, %struct.armada_thermal_priv** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i8* @dev_name(i32* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 58)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %19
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %26 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @strncpy(i8* %27, i8* %28, i32 %30)
  %32 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %33 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %49, %24
  %40 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %41 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strpbrk(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  store i8 95, i8* %47, align 1
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %39, label %52

52:                                               ; preds = %49
  ret void
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
