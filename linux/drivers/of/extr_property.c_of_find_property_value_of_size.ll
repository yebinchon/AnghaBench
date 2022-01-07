; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_find_property_value_of_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_find_property_value_of_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_node*, i8*, i64, i64, i64*)* @of_find_property_value_of_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.property* @of_find_property(%struct.device_node* %13, i8* %14, i32* null)
  store %struct.property* %15, %struct.property** %12, align 8
  %16 = load %struct.property*, %struct.property** %12, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %6, align 8
  br label %66

22:                                               ; preds = %5
  %23 = load %struct.property*, %struct.property** %12, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODATA, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %6, align 8
  br label %66

31:                                               ; preds = %22
  %32 = load %struct.property*, %struct.property** %12, align 8
  %33 = getelementptr inbounds %struct.property, %struct.property* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @EOVERFLOW, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i8* @ERR_PTR(i32 %39)
  store i8* %40, i8** %6, align 8
  br label %66

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.property*, %struct.property** %12, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @EOVERFLOW, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i8* @ERR_PTR(i32 %52)
  store i8* %53, i8** %6, align 8
  br label %66

54:                                               ; preds = %44, %41
  %55 = load i64*, i64** %11, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.property*, %struct.property** %12, align 8
  %59 = getelementptr inbounds %struct.property, %struct.property* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %11, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.property*, %struct.property** %12, align 8
  %64 = getelementptr inbounds %struct.property, %struct.property* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %62, %50, %37, %27, %18
  %67 = load i8*, i8** %6, align 8
  ret i8* %67
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
