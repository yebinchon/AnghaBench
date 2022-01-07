; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sstfb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sstfb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"option %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vganopass\00", align 1
@vgapass = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vgapass\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"clipping\00", align 1
@clipping = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"noclipping\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fastpci\00", align 1
@slowpci = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"slowpci\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mem:\00", align 1
@mem = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"gfxclk:\00", align 1
@gfxclk = common dso_local global i8* null, align 8
@mode_option = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sstfb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sstfb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %80

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %78, %20, %12
  %14 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %13

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @f_ddprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* @vgapass, align 4
  br label %78

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* @vgapass, align 4
  br label %77

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* @clipping, align 4
  br label %76

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* @clipping, align 4
  br label %75

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* @slowpci, align 4
  br label %74

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* @slowpci, align 4
  br label %73

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strncmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = call i8* @simple_strtoul(i8* %59, i32* null, i32 0)
  store i8* %60, i8** @mem, align 8
  br label %72

61:                                               ; preds = %53
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 7
  %68 = call i8* @simple_strtoul(i8* %67, i32* null, i32 0)
  store i8* %68, i8** @gfxclk, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** @mode_option, align 8
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74, %42
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77, %27
  br label %13

79:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @f_ddprintk(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
