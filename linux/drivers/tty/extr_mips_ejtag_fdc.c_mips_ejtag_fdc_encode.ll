; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_word = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i8**, i32*, i32)* @mips_ejtag_fdc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @mips_ejtag_fdc_encode(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fdc_word, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.fdc_word* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  store i8** %15, i8*** %8, align 8
  br label %16

16:                                               ; preds = %57, %3
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = icmp ult i8** %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  %23 = load i8*, i8** %21, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %53, %20
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 8, %39
  %41 = shl i32 %37, %40
  %42 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %61

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %5, align 8
  br label %16

60:                                               ; preds = %16
  br label %61

61:                                               ; preds = %60, %51
  %62 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %97 [
    i32 4, label %64
    i32 3, label %85
    i32 2, label %89
    i32 1, label %93
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = icmp ne i32 %67, 8421504
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 16
  %73 = icmp ne i32 %72, 33153
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 24
  %78 = icmp ne i32 %77, 130
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %97

80:                                               ; preds = %74, %69, %64
  %81 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 1
  store i32 3, i32* %81, align 4
  %82 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 16777215
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %61, %80
  %86 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, -2113929216
  store i32 %88, i32* %86, align 4
  br label %97

89:                                               ; preds = %61
  %90 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, -2122252288
  store i32 %92, i32* %90, align 4
  br label %97

93:                                               ; preds = %61
  %94 = getelementptr inbounds %struct.fdc_word, %struct.fdc_word* %4, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, -2139062272
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %61, %93, %89, %85, %79
  %98 = bitcast %struct.fdc_word* %4 to { i64, i64 }*
  %99 = load { i64, i64 }, { i64, i64 }* %98, align 4
  ret { i64, i64 } %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
