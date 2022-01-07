; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_desc_find_function_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_desc_find_function_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_desc_function = type { i32, i64 }
%struct.sunxi_pinctrl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sunxi_desc_pin* }
%struct.sunxi_desc_pin = type { %struct.sunxi_desc_function*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_desc_function* (%struct.sunxi_pinctrl*, i8*, i8*)* @sunxi_pinctrl_desc_find_function_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_name(%struct.sunxi_pinctrl* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sunxi_desc_function*, align 8
  %5 = alloca %struct.sunxi_pinctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sunxi_desc_pin*, align 8
  %10 = alloca %struct.sunxi_desc_function*, align 8
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %72, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %11
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %24, i64 %26
  store %struct.sunxi_desc_pin* %27, %struct.sunxi_desc_pin** %9, align 8
  %28 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %29 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcmp(i64 %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %19
  %36 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %37 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %36, i32 0, i32 0
  %38 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %37, align 8
  store %struct.sunxi_desc_function* %38, %struct.sunxi_desc_function** %10, align 8
  br label %39

39:                                               ; preds = %67, %35
  %40 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %41 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %46 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strcmp(i64 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %44
  %52 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %53 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %58 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %61 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56, %51
  %66 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  store %struct.sunxi_desc_function* %66, %struct.sunxi_desc_function** %4, align 8
  br label %76

67:                                               ; preds = %56, %44
  %68 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %69 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %68, i32 1
  store %struct.sunxi_desc_function* %69, %struct.sunxi_desc_function** %10, align 8
  br label %39

70:                                               ; preds = %39
  br label %71

71:                                               ; preds = %70, %19
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %11

75:                                               ; preds = %11
  store %struct.sunxi_desc_function* null, %struct.sunxi_desc_function** %4, align 8
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %4, align 8
  ret %struct.sunxi_desc_function* %77
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
