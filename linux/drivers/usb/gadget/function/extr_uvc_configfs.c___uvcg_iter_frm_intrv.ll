; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c___uvcg_iter_frm_intrv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c___uvcg_iter_frm_intrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32 (i8*, i8*)*, i8*)* @__uvcg_iter_frm_intrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvcg_iter_frm_intrv(i8* %0, i64 %1, i32 (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [35 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %16 = icmp ne i32 (i8*, i8*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %109

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %107, %20
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 35
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br label %52

52:                                               ; preds = %47, %42, %34, %30
  %53 = phi i1 [ false, %42 ], [ false, %34 ], [ false, %30 ], [ %51, %47 ]
  br i1 %53, label %54, label %62

54:                                               ; preds = %52
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [35 x i8], [35 x i8]* %10, i64 0, i64 %60
  store i8 %57, i8* %61, align 1
  br label %30

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 35
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %109

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi i1 [ false, %70 ], [ %89, %88 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  br label %70

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [35 x i8], [35 x i8]* %10, i64 0, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %100 = getelementptr inbounds [35 x i8], [35 x i8]* %10, i64 0, i64 0
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 %99(i8* %100, i8* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %109

107:                                              ; preds = %95
  br label %21

108:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %105, %66, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
