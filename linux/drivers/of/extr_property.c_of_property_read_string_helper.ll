; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_read_string_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_read_string_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.property* @of_find_property(%struct.device_node* %17, i8* %18, i32* null)
  store %struct.property* %19, %struct.property** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.property*, %struct.property** %12, align 8
  %21 = icmp ne %struct.property* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %113

25:                                               ; preds = %5
  %26 = load %struct.property*, %struct.property** %12, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %113

33:                                               ; preds = %25
  %34 = load %struct.property*, %struct.property** %12, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.property*, %struct.property** %12, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %16, align 8
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %93, %33
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8**, i8*** %9, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %52, %56
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi i1 [ true, %47 ], [ %57, %50 ]
  br label %60

60:                                               ; preds = %58, %43
  %61 = phi i1 [ false, %43 ], [ %59, %58 ]
  br i1 %61, label %62, label %100

62:                                               ; preds = %60
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @strnlen(i8* %63, i32 %69)
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** %16, align 8
  %77 = icmp ugt i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* @EILSEQ, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %113

81:                                               ; preds = %62
  %82 = load i8**, i8*** %9, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** %15, align 8
  %90 = load i8**, i8*** %9, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %9, align 8
  store i8* %89, i8** %90, align 8
  br label %92

92:                                               ; preds = %88, %84, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %15, align 8
  br label %43

100:                                              ; preds = %60
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ENODATA, align 4
  %108 = sub nsw i32 0, %107
  br label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %14, align 4
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi i32 [ %108, %106 ], [ %110, %109 ]
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %78, %30, %22
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
