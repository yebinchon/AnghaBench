; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_spk_var_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_spk_var_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.st_var_header = type { i32, i8*, i64, i64 }
%struct.var_t = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\22\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Bad parameter  %s, type %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_var_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_var_header*, align 8
  %10 = alloca %struct.var_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.kobj_attribute*, %struct.kobj_attribute** %6, align 8
  %16 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.st_var_header* @spk_var_header_by_name(i32 %18)
  store %struct.st_var_header* %19, %struct.st_var_header** %9, align 8
  %20 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %21 = icmp ne %struct.st_var_header* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %118

25:                                               ; preds = %3
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %26)
  %28 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %29 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.var_t*
  store %struct.var_t* %31, %struct.var_t** %10, align 8
  %32 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %33 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %105 [
    i32 130, label %35
    i32 128, label %35
    i32 129, label %50
  ]

35:                                               ; preds = %25, %25
  %36 = load %struct.var_t*, %struct.var_t** %10, align 8
  %37 = icmp ne %struct.var_t* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.var_t*, %struct.var_t** %10, align 8
  %41 = getelementptr inbounds %struct.var_t, %struct.var_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %38
  br label %114

50:                                               ; preds = %25
  %51 = load %struct.var_t*, %struct.var_t** %10, align 8
  %52 = icmp ne %struct.var_t* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  store i8 34, i8* %55, align 1
  %57 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %58 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %86, %53
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %13, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 32
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8, i8* %13, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 126
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8, i8* %13, align 1
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 %74, i8* %75, align 1
  br label %85

77:                                               ; preds = %69, %65
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %13, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %77, %73
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  br label %61

89:                                               ; preds = %61
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %11, align 8
  store i8 34, i8* %90, align 1
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  store i8 10, i8* %92, align 1
  %94 = load i8*, i8** %11, align 8
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %104

101:                                              ; preds = %50
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %89
  br label %114

105:                                              ; preds = %25
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %108 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.st_var_header*, %struct.st_var_header** %9, align 8
  %111 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %109, i32 %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %105, %104, %49
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %22
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.st_var_header* @spk_var_header_by_name(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
