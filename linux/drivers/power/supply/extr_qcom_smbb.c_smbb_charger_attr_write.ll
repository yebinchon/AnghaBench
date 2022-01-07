; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_charger_attr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger_attr = type { i32, i32, i32 (i32)*, i32, i64, i64 }
%struct.smbb_charger = type { i32*, i32, i64, i32 }

@smbb_charger_attrs = common dso_local global %struct.smbb_charger_attr* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"value out of range for %s [%u:%u]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to read safe value for '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s above safe value, clamping at %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to update %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s inaccurate, rounded to %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s <= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbb_charger*, i32, i32)* @smbb_charger_attr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_charger_attr_write(%struct.smbb_charger* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbb_charger*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbb_charger_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smbb_charger* %0, %struct.smbb_charger** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** @smbb_charger_attrs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %12, i64 %14
  store %struct.smbb_charger_attr* %15, %struct.smbb_charger_attr** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %18 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %24 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21, %3
  %28 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %29 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %32 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %35 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %38 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %154

43:                                               ; preds = %21
  %44 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %45 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %43
  %49 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %50 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %53 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %56 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @regmap_read(i32 %51, i64 %58, i32* %9)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %48
  %63 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %64 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %67 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %154

71:                                               ; preds = %48
  %72 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %73 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %72, i32 0, i32 2
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 %74(i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %82 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %85 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %80, %71
  br label %91

91:                                               ; preds = %90, %43
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %94 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %93, i32 0, i32 2
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = call i32 @smbb_hw_lookup(i32 %92, i32 (i32)* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %98 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %101 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %104 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @regmap_write(i32 %99, i64 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %91
  %112 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %113 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %116 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %154

120:                                              ; preds = %91
  %121 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %122 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %121, i32 0, i32 2
  %123 = load i32 (i32)*, i32 (i32)** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %123(i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %131 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %134 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @dev_warn(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %120
  %139 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %140 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.smbb_charger_attr*, %struct.smbb_charger_attr** %8, align 8
  %143 = getelementptr inbounds %struct.smbb_charger_attr, %struct.smbb_charger_attr* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %149 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %138, %111, %62, %27
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @smbb_hw_lookup(i32, i32 (i32)*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
