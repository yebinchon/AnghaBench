; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_device_is_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_device_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i8*, i8*)* @__of_device_is_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__of_device_is_compatible(%struct.device_node* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call %struct.property* @__of_find_property(%struct.device_node* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %24, %struct.property** %10, align 8
  %25 = load %struct.property*, %struct.property** %10, align 8
  %26 = call i8* @of_prop_next_string(%struct.property* %25, i8* null)
  store i8* %26, i8** %11, align 8
  br label %27

27:                                               ; preds = %44, %22
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @of_compat_cmp(i8* %31, i8* %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @INT_MAX, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 2
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %13, align 4
  br label %50

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.property*, %struct.property** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @of_prop_next_string(%struct.property* %45, i8* %46)
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %27

50:                                               ; preds = %37, %27
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %93

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %16, %4
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @__of_node_is_type(%struct.device_node* %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %93

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %58, %55
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.device_node*, %struct.device_node** %6, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @of_node_name_eq(%struct.device_node* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %93

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %88, %76, %73
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %87, %69, %53
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.property* @__of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_prop_next_string(%struct.property*, i8*) #1

declare dso_local i64 @of_compat_cmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_name_eq(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
