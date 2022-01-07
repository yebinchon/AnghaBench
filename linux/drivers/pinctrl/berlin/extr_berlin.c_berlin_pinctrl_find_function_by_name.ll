; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_find_function_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_find_function_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.berlin_desc_function = type { i64 }
%struct.berlin_pinctrl = type { i32 }
%struct.berlin_desc_group = type { %struct.berlin_desc_function* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.berlin_desc_function* (%struct.berlin_pinctrl*, %struct.berlin_desc_group*, i8*)* @berlin_pinctrl_find_function_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.berlin_desc_function* @berlin_pinctrl_find_function_by_name(%struct.berlin_pinctrl* %0, %struct.berlin_desc_group* %1, i8* %2) #0 {
  %4 = alloca %struct.berlin_desc_function*, align 8
  %5 = alloca %struct.berlin_pinctrl*, align 8
  %6 = alloca %struct.berlin_desc_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.berlin_desc_function*, align 8
  store %struct.berlin_pinctrl* %0, %struct.berlin_pinctrl** %5, align 8
  store %struct.berlin_desc_group* %1, %struct.berlin_desc_group** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %6, align 8
  %10 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %9, i32 0, i32 0
  %11 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %10, align 8
  store %struct.berlin_desc_function* %11, %struct.berlin_desc_function** %8, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %8, align 8
  %14 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %8, align 8
  %19 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcmp(i64 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %8, align 8
  store %struct.berlin_desc_function* %25, %struct.berlin_desc_function** %4, align 8
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %8, align 8
  %28 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %27, i32 1
  store %struct.berlin_desc_function* %28, %struct.berlin_desc_function** %8, align 8
  br label %12

29:                                               ; preds = %12
  store %struct.berlin_desc_function* null, %struct.berlin_desc_function** %4, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %4, align 8
  ret %struct.berlin_desc_function* %31
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
