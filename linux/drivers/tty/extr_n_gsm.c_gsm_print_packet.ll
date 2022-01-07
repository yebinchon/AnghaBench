; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_print_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_print_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s %d) %c: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@PF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SABM\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DISC\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DM\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"UI\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"UIH\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"I N(S)%d N(R)%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"RR(%d)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"RNR(%d)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"REJ(%d)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"[%02X]\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"(P)\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"(F)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32*, i32)* @gsm_print_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_print_packet(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @debug, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %111

18:                                               ; preds = %6
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.1, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i8 signext %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PF, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  switch i32 %29, label %42 [
    i32 131, label %30
    i32 130, label %32
    i32 136, label %34
    i32 135, label %36
    i32 129, label %38
    i32 128, label %40
  ]

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %77

32:                                               ; preds = %18
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %77

34:                                               ; preds = %18
  %35 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %77

36:                                               ; preds = %18
  %37 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %77

38:                                               ; preds = %18
  %39 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %77

40:                                               ; preds = %18
  %41 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %77

42:                                               ; preds = %18
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 14
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 224
  %52 = ashr i32 %51, 5
  %53 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %52)
  br label %76

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 15
  switch i32 %56, label %72 [
    i32 132, label %57
    i32 133, label %62
    i32 134, label %67
  ]

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 224
  %60 = ashr i32 %59, 5
  %61 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  br label %75

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 224
  %65 = ashr i32 %64, 5
  %66 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  br label %75

67:                                               ; preds = %54
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 224
  %70 = ashr i32 %69, 5
  %71 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  br label %75

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67, %62, %57
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %40, %38, %36, %34, %32, %30
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %101, %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %12, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = srem i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %11, align 8
  %104 = load i32, i32* %102, align 4
  %105 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %86
  %110 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %17
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*, i32, i8 signext) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
