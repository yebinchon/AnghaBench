; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_DecryptBBPgParaFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_DecryptBBPgParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i8*)* @phy_DecryptBBPgParaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_DecryptBBPgParaFile(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [95 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = bitcast [95 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 95, i1 false)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 95
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 94, %16
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [95 x i8], [95 x i8]* %7, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %10, align 8
  store i32 0, i32* %5, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @GetLineFromBuffer(i8* %27)
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %89, %25
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %92

32:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %8, align 1
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %77

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = mul nsw i32 %52, 3
  %54 = srem i32 %53, 128
  %55 = trunc i32 %54 to i8
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [95 x i8], [95 x i8]* %7, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, 32
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %69, i8* %73, align 1
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %33

77:                                               ; preds = %48, %33
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 10, i8* %88, align 1
  br label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = call i8* @GetLineFromBuffer(i8* %90)
  store i8* %91, i8** %9, align 8
  br label %29

92:                                               ; preds = %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @GetLineFromBuffer(i8*) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
