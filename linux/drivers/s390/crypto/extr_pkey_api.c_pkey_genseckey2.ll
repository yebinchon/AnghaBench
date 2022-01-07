; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_genseckey2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_genseckey2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_apqn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SECKEYBLOBSIZE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkey_apqn*, i64, i32, i32, i32, i32*, i64*)* @pkey_genseckey2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_genseckey2(%struct.pkey_apqn* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkey_apqn*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pkey_apqn* %0, %struct.pkey_apqn** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %20 = load %struct.pkey_apqn*, %struct.pkey_apqn** %9, align 8
  %21 = icmp ne %struct.pkey_apqn* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %103

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %39 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = load i64*, i64** %15, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SECKEYBLOBSIZE, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %103

38:                                               ; preds = %30
  br label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %103

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  switch i32 %43, label %45 [
    i32 132, label %44
    i32 131, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %42, %42, %42
  br label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %103

48:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %98, %48
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %51
  %57 = load %struct.pkey_apqn*, %struct.pkey_apqn** %9, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %57, i64 %59
  %61 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load %struct.pkey_apqn*, %struct.pkey_apqn** %9, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %63, i64 %65
  %67 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @cca_genseckey(i32 %72, i32 %73, i32 %74, i32* %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %82

80:                                               ; preds = %71
  %81 = load i64, i64* @SECKEYBLOBSIZE, align 8
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i64 [ 0, %79 ], [ %81, %80 ]
  %84 = load i64*, i64** %15, align 8
  store i64 %83, i64* %84, align 8
  br label %93

85:                                               ; preds = %56
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i64*, i64** %15, align 8
  %92 = call i32 @cca_gencipherkey(i32 %86, i32 %87, i32 %88, i32 %89, i32* %90, i64* %91)
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %19, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %101

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %51

101:                                              ; preds = %96, %51
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %45, %39, %35, %25
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @cca_genseckey(i32, i32, i32, i32*) #1

declare dso_local i32 @cca_gencipherkey(i32, i32, i32, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
