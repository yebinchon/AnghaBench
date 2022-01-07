; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_parse_sdd_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_parse_sdd_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Malformed sdd structure\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SDD_PTA_CFG_ELT_ID malformed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"PTA found; Listen Interval %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"SDD file doesn't match configured refclk (%d vs %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PTA element NOT found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_parse_sdd_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_parse_sdd_file(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %103, %1
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = icmp ule i32* %15, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %13
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %43 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = icmp ugt i32* %36, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %122

52:                                               ; preds = %29
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %102 [
    i32 129, label %56
    i32 128, label %85
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %103

63:                                               ; preds = %56
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %103

71:                                               ; preds = %63
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 7
  %78 = and i32 %77, 31
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %80 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %82 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %103

85:                                               ; preds = %52
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %92 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %98 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %85
  br label %103

102:                                              ; preds = %52
  br label %103

103:                                              ; preds = %102, %101, %71, %70, %61
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 2
  %108 = load i32*, i32** %4, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %4, align 8
  br label %13

111:                                              ; preds = %13
  %112 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %113 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %119 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %50
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
