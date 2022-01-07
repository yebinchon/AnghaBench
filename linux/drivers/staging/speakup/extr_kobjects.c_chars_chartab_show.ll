; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_chars_chartab_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_chars_chartab_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\09%s\0A\00", align 1
@spk_characters = common dso_local global i8** null, align 8
@B_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"B_CTL\00", align 1
@WDLM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"WDLM\00", align 1
@A_PUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"A_PUNC\00", align 1
@PUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"PUNC\00", align 1
@NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@A_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"A_CAP\00", align 1
@ALPHA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@B_CAPSYM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"B_CAPSYM\00", align 1
@B_SYM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"B_SYM\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @chars_chartab_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chars_chartab_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %15)
  %17 = load i8*, i8** %10, align 8
  store i8 0, i8* %17, align 1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %120, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %123

21:                                               ; preds = %18
  %22 = load i64, i64* %11, align 8
  %23 = icmp ule i64 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %123

25:                                               ; preds = %21
  %26 = load %struct.kobj_attribute*, %struct.kobj_attribute** %5, align 8
  %27 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8**, i8*** @spk_characters, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @scnprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %40)
  store i32 %41, i32* %8, align 4
  br label %111

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @B_CTL, align 4
  %45 = call i64 @IS_TYPE(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %105

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @WDLM, align 4
  %51 = call i64 @IS_TYPE(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %104

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @A_PUNC, align 4
  %57 = call i64 @IS_TYPE(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %103

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PUNC, align 4
  %63 = call i64 @IS_TYPE(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %102

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NUM, align 4
  %69 = call i64 @IS_TYPE(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %101

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @A_CAP, align 4
  %75 = call i64 @IS_TYPE(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %100

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ALPHA, align 4
  %81 = call i64 @IS_TYPE(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %99

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @B_CAPSYM, align 4
  %87 = call i64 @IS_TYPE(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @B_SYM, align 4
  %93 = call i64 @IS_TYPE(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %97

96:                                               ; preds = %90
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %89
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %71
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %59
  br label %104

104:                                              ; preds = %103, %53
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @scnprintf(i8* %106, i64 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %108, i8* %109)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %32
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %18

123:                                              ; preds = %24, %18
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %124)
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  ret i32 %131
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i8*) #1

declare dso_local i64 @IS_TYPE(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
