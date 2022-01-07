; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pcs_device = type { i32, i32 (i32)*, i32, i32 (i32, i32)*, i64, i32 }
%struct.function_desc = type { %struct.pcs_function* }
%struct.pcs_function = type { i32, %struct.pcs_func_vals*, i32 }
%struct.pcs_func_vals = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"enabling %s function%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pcs_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcs_device*, align 8
  %9 = alloca %struct.function_desc*, align 8
  %10 = alloca %struct.pcs_function*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcs_func_vals*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.pcs_device* %17, %struct.pcs_device** %8, align 8
  %18 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %19 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

23:                                               ; preds = %3
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %24, i32 %25)
  store %struct.function_desc* %26, %struct.function_desc** %9, align 8
  %27 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %28 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %27, i32 0, i32 0
  %29 = load %struct.pcs_function*, %struct.pcs_function** %28, align 8
  store %struct.pcs_function* %29, %struct.pcs_function** %10, align 8
  %30 = load %struct.pcs_function*, %struct.pcs_function** %10, align 8
  %31 = icmp ne %struct.pcs_function* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %108

35:                                               ; preds = %23
  %36 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %37 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pcs_function*, %struct.pcs_function** %10, align 8
  %40 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %104, %35
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.pcs_function*, %struct.pcs_function** %10, align 8
  %47 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %44
  %51 = load %struct.pcs_function*, %struct.pcs_function** %10, align 8
  %52 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %51, i32 0, i32 1
  %53 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pcs_func_vals, %struct.pcs_func_vals* %53, i64 %55
  store %struct.pcs_func_vals* %56, %struct.pcs_func_vals** %12, align 8
  %57 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %58 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %57, i32 0, i32 2
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @raw_spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %62 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %61, i32 0, i32 1
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %12, align 8
  %65 = getelementptr inbounds %struct.pcs_func_vals, %struct.pcs_func_vals* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %63(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %69 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %50
  %73 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %12, align 8
  %74 = getelementptr inbounds %struct.pcs_func_vals, %struct.pcs_func_vals* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  br label %80

76:                                               ; preds = %50
  %77 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %78 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %15, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %12, align 8
  %86 = getelementptr inbounds %struct.pcs_func_vals, %struct.pcs_func_vals* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %93 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %92, i32 0, i32 3
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %12, align 8
  %97 = getelementptr inbounds %struct.pcs_func_vals, %struct.pcs_func_vals* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %94(i32 %95, i32 %98)
  %100 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %101 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %100, i32 0, i32 2
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @raw_spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %44

107:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %32, %22
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
