; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_sprom.c_hex2sprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_sprom.c_hex2sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64)* @hex2sprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex2sprom(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 5, i1 false)
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %33, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %10, align 1
  %25 = load i8, i8* %10, align 1
  %26 = call i32 @isspace(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28, %19
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %8, align 8
  br label %16

36:                                               ; preds = %32, %16
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = mul i64 %38, 4
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @memcpy(i8* %51, i8* %52, i32 4)
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %7, align 8
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %57 = call i32 @kstrtoul(i8* %56, i32 16, i64* %14)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %72

62:                                               ; preds = %50
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @swab16(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  br label %45

71:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %60, %41
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #2

declare dso_local i32 @swab16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
