; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_keymap_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_keymap_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@spk_key_buf = common dso_local global i64* null, align 8
@SHIFT_TBL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d, %d, %d,\0A\00", align 1
@KEY_MAP_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@SPACE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @keymap_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keymap_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i64, i64* %14, align 8
  %17 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %16)
  %18 = load i64*, i64** @spk_key_buf, align 8
  %19 = load i32, i32* @SHIFT_TBL_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64* %21, i64** %12, align 8
  %22 = load i64*, i64** %12, align 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i64*, i64** %12, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @KEY_MAP_VER, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64* %38, i64** %12, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %75, %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %12, align 8
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i8, i8* @SPACE, align 1
  %64 = sext i8 %63 to i32
  br label %66

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 10, %65 ]
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %44

74:                                               ; preds = %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @KEY_MAP_VER, align 4
  %81 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  ret i32 %92
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
