; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_remember_or_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_remember_or_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { i32, i32 }
%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_map = type { i8*, i8*, i8* }
%struct.pinctrl_dt_map = type { i32, i32, %struct.pinctrl_map*, %struct.pinctrl_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl*, i8*, %struct.pinctrl_dev*, %struct.pinctrl_map*, i32)* @dt_remember_or_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_remember_or_free_map(%struct.pinctrl* %0, i8* %1, %struct.pinctrl_dev* %2, %struct.pinctrl_map* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pinctrl_dev*, align 8
  %10 = alloca %struct.pinctrl_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pinctrl_dt_map*, align 8
  store %struct.pinctrl* %0, %struct.pinctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.pinctrl_dev* %2, %struct.pinctrl_dev** %9, align 8
  store %struct.pinctrl_map* %3, %struct.pinctrl_map** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %47, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %20 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @dev_name(i32 %21)
  %23 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %23, i64 %25
  %27 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %26, i32 0, i32 2
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %29, i64 %31
  %33 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %35 = icmp ne %struct.pinctrl_dev* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %18
  %37 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %38 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @dev_name(i32 %39)
  %41 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %41, i64 %43
  %45 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  br label %46

46:                                               ; preds = %36, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.pinctrl_dt_map* @kzalloc(i32 24, i32 %51)
  store %struct.pinctrl_dt_map* %52, %struct.pinctrl_dt_map** %13, align 8
  %53 = load %struct.pinctrl_dt_map*, %struct.pinctrl_dt_map** %13, align 8
  %54 = icmp ne %struct.pinctrl_dt_map* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %57 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @dt_free_map(%struct.pinctrl_dev* %56, %struct.pinctrl_map* %57, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %80

62:                                               ; preds = %50
  %63 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %64 = load %struct.pinctrl_dt_map*, %struct.pinctrl_dt_map** %13, align 8
  %65 = getelementptr inbounds %struct.pinctrl_dt_map, %struct.pinctrl_dt_map* %64, i32 0, i32 3
  store %struct.pinctrl_dev* %63, %struct.pinctrl_dev** %65, align 8
  %66 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %67 = load %struct.pinctrl_dt_map*, %struct.pinctrl_dt_map** %13, align 8
  %68 = getelementptr inbounds %struct.pinctrl_dt_map, %struct.pinctrl_dt_map* %67, i32 0, i32 2
  store %struct.pinctrl_map* %66, %struct.pinctrl_map** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.pinctrl_dt_map*, %struct.pinctrl_dt_map** %13, align 8
  %71 = getelementptr inbounds %struct.pinctrl_dt_map, %struct.pinctrl_dt_map* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pinctrl_dt_map*, %struct.pinctrl_dt_map** %13, align 8
  %73 = getelementptr inbounds %struct.pinctrl_dt_map, %struct.pinctrl_dt_map* %72, i32 0, i32 1
  %74 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %75 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %74, i32 0, i32 0
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @pinctrl_register_map(%struct.pinctrl_map* %77, i32 %78, i32 0)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %62, %55
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i8* @dev_name(i32) #1

declare dso_local %struct.pinctrl_dt_map* @kzalloc(i32, i32) #1

declare dso_local i32 @dt_free_map(%struct.pinctrl_dev*, %struct.pinctrl_map*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pinctrl_register_map(%struct.pinctrl_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
