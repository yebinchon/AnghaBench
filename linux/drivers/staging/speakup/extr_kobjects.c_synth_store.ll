; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_synth_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_synth_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@synth = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s already in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to init synth %s\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @synth_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @synth_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %67

22:                                               ; preds = %16
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @memcpy(i8* %23, i8* %24, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %42 = call i32 @spk_strlwr(i8* %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @synth, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @synth, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i8* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %65

55:                                               ; preds = %45, %37
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %57 = call i64 @synth_init(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i64, i64* @ENODEV, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %67

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %59, %19
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spk_strlwr(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i64 @synth_init(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
