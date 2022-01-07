; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_read_variable_u16_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_read_variable_u16_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_property_read_variable_u16_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %10, align 8
  %18 = mul i64 %17, 4
  %19 = load i64, i64* %11, align 8
  %20 = mul i64 %19, 4
  %21 = call i32* @of_find_property_value_of_size(%struct.device_node* %15, i8* %16, i64 %18, i64 %20, i64* %12)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i64 @IS_ERR(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @PTR_ERR(i32* %26)
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %12, align 8
  br label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = udiv i64 %34, 4
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %42, %36
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %13, align 8
  %41 = icmp ne i64 %39, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %14, align 8
  %45 = ptrtoint i32* %43 to i32
  %46 = call i32 @be16_to_cpup(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %38

49:                                               ; preds = %38
  %50 = load i64, i64* %12, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %25
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32* @of_find_property_value_of_size(%struct.device_node*, i8*, i64, i64, i64*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @be16_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
