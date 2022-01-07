; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_fwnode_get_reference_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_fwnode_get_reference_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i32, i32*, i32 }
%struct.of_phandle_args = type { i32, i32*, i32 }

@NR_FWNODE_REFERENCE_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @of_fwnode_get_reference_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fwnode_get_reference_args(%struct.fwnode_handle* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.fwnode_reference_args* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwnode_reference_args*, align 8
  %14 = alloca %struct.of_phandle_args, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fwnode_reference_args* %5, %struct.fwnode_reference_args** %13, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %21 = call i32 @to_of_node(%struct.fwnode_handle* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @of_parse_phandle_with_args(i32 %21, i8* %22, i8* %23, i32 %24, %struct.of_phandle_args* %14)
  store i32 %25, i32* %16, align 4
  br label %33

26:                                               ; preds = %6
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %28 = call i32 @to_of_node(%struct.fwnode_handle* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @of_parse_phandle_with_fixed_args(i32 %28, i8* %29, i32 %30, i32 %31, %struct.of_phandle_args* %14)
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %7, align 4
  br label %81

38:                                               ; preds = %33
  %39 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %40 = icmp ne %struct.fwnode_reference_args* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %81

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %46 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @of_fwnode_handle(i32 %48)
  %50 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %51 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %77, %42
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @NR_FWNODE_REFERENCE_ARGS, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  %58 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %61
  %70 = phi i32 [ %67, %61 ], [ 0, %68 ]
  %71 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %13, align 8
  %72 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %52

80:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %41, %36
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @of_parse_phandle_with_args(i32, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @to_of_node(%struct.fwnode_handle*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
