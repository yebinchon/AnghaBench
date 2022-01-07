; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_match_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_match_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"comparing %s with %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_property_match_string(%struct.device_node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.property* @of_find_property(%struct.device_node* %13, i8* %14, i32* null)
  store %struct.property* %15, %struct.property** %8, align 8
  %16 = load %struct.property*, %struct.property** %8, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.property*, %struct.property** %8, align 8
  %23 = getelementptr inbounds %struct.property, %struct.property* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %21
  %30 = load %struct.property*, %struct.property** %8, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.property*, %struct.property** %8, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8* %38, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %73, %29
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @strnlen(i8* %44, i32 %50)
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @EILSEQ, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %43
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %82

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %11, align 8
  br label %39

79:                                               ; preds = %39
  %80 = load i32, i32* @ENODATA, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %70, %59, %26, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
