; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_string_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_set_string_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_var_header = type { i64, %struct.var_t* }
%struct.var_t = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ENODATA = common dso_local global i32 0, align 4
@MAXVARLEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_set_string_var(i8* %0, %struct.st_var_header* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st_var_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.var_t*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.st_var_header* %1, %struct.st_var_header** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %10 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %9, i32 0, i32 1
  %11 = load %struct.var_t*, %struct.var_t** %10, align 8
  store %struct.var_t* %11, %struct.var_t** %8, align 8
  %12 = load %struct.var_t*, %struct.var_t** %8, align 8
  %13 = icmp ne %struct.var_t* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %90

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAXVARLEN, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @E2BIG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %73, label %27

27:                                               ; preds = %24
  %28 = load %struct.var_t*, %struct.var_t** %8, align 8
  %29 = getelementptr inbounds %struct.var_t, %struct.var_t* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %37 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.var_t*, %struct.var_t** %8, align 8
  %42 = getelementptr inbounds %struct.var_t, %struct.var_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %47 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %50 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.var_t*, %struct.var_t** %8, align 8
  %53 = getelementptr inbounds %struct.var_t, %struct.var_t* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %60 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.var_t*, %struct.var_t** %8, align 8
  %64 = getelementptr inbounds %struct.var_t, %struct.var_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @strcpy(i8* %62, i8* %68)
  br label %70

70:                                               ; preds = %58, %48
  %71 = load i32, i32* @ERESTART, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %90

73:                                               ; preds = %24
  %74 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %75 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.st_var_header*, %struct.st_var_header** %6, align 8
  %80 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcpy(i8* %82, i8* %83)
  br label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @E2BIG, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %85, %70, %34, %21, %14
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
