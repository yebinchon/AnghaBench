; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_inc_dec_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_inc_dec_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_var_header = type { i64, i8*, %struct.var_t* }
%struct.var_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VAR_START = common dso_local global i32 0, align 4
@E_INC = common dso_local global i32 0, align 4
@E_DEC = common dso_local global i32 0, align 4
@FIRST_SET_VAR = common dso_local global i32 0, align 4
@VAR_NUM = common dso_local global i64 0, align 8
@spk_close_press = common dso_local global i32 0, align 4
@SPACE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @inc_dec_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inc_dec_var(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_var_header*, align 8
  %5 = alloca %struct.var_t*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8* %11, i8** %7, align 8
  %12 = load i64, i64* %3, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @VAR_START, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @E_INC, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @E_DEC, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* @FIRST_SET_VAR, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.st_var_header* @spk_get_var_header(i32 %29)
  store %struct.st_var_header* %30, %struct.st_var_header** %4, align 8
  %31 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %32 = icmp ne %struct.st_var_header* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %96

34:                                               ; preds = %23
  %35 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %36 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VAR_NUM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %43 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %42, i32 0, i32 2
  %44 = load %struct.var_t*, %struct.var_t** %43, align 8
  store %struct.var_t* %44, %struct.var_t** %5, align 8
  %45 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @spk_set_num_var(i32 1, %struct.st_var_header* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %96

50:                                               ; preds = %41
  %51 = load i32, i32* @spk_close_press, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %50
  %54 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %55 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %75, %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 95
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8, i8* @SPACE, align 1
  %68 = load i8*, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  br label %74

69:                                               ; preds = %61
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sub i64 32, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.var_t*, %struct.var_t** %5, align 8
  %89 = getelementptr inbounds %struct.var_t, %struct.var_t* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snprintf(i8* %80, i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %95 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %79, %49, %40, %33
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.st_var_header* @spk_get_var_header(i32) #1

declare dso_local i64 @spk_set_num_var(i32, %struct.st_var_header*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @synth_printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
