; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_blacklist.c_parse_busid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_blacklist.c_parse_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__MAX_SUBCHANNEL = common dso_local global i32 0, align 4
@__MAX_CSSID = common dso_local global i32 0, align 4
@__MAX_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s is not a valid device for the cio_ignore kernel parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32)* @parse_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_busid(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %83

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i8** %11, i32 16)
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @__MAX_SUBCHANNEL, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %83

38:                                               ; preds = %20
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @__MAX_CSSID, align 4
  %42 = call i32 @pure_hex(i8** %11, i32* %40, i32 1, i32 2, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %38
  br label %83

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @__MAX_SSID, align 4
  %57 = call i32 @pure_hex(i8** %11, i32* %55, i32 1, i32 1, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 46
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %52
  br label %83

67:                                               ; preds = %60
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @__MAX_SUBCHANNEL, align 4
  %72 = call i32 @pure_hex(i8** %11, i32* %70, i32 4, i32 4, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %67
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %81, %66, %51, %37, %19
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %86, %83
  %93 = load i32, i32* %13, align 4
  ret i32 %93
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @pure_hex(i8**, i32*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
