; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_clr2seckey2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_clr2seckey2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_apqn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SECKEYBLOBSIZE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkey_apqn*, i64, i32, i32, i32, i32*, i32*, i64*)* @pkey_clr2seckey2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_clr2seckey2(%struct.pkey_apqn* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pkey_apqn*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pkey_apqn* %0, %struct.pkey_apqn** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  %22 = load %struct.pkey_apqn*, %struct.pkey_apqn** %10, align 8
  %23 = icmp ne %struct.pkey_apqn* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %107

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %41 [
    i32 128, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %30, %30
  %33 = load i64*, i64** %17, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SECKEYBLOBSIZE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %107

40:                                               ; preds = %32
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %107

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %47 [
    i32 132, label %46
    i32 131, label %46
    i32 130, label %46
  ]

46:                                               ; preds = %44, %44, %44
  br label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %107

50:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %21, align 4
  br label %53

53:                                               ; preds = %102, %50
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %11, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %53
  %59 = load %struct.pkey_apqn*, %struct.pkey_apqn** %10, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %59, i64 %61
  %63 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %19, align 4
  %65 = load %struct.pkey_apqn*, %struct.pkey_apqn** %10, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %65, i64 %67
  %69 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %88

73:                                               ; preds = %58
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @cca_clr2seckey(i32 %74, i32 %75, i32 %76, i32* %77, i32* %78)
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %85

83:                                               ; preds = %73
  %84 = load i64, i64* @SECKEYBLOBSIZE, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i64 [ 0, %82 ], [ %84, %83 ]
  %87 = load i64*, i64** %17, align 8
  store i64 %86, i64* %87, align 8
  br label %97

88:                                               ; preds = %58
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i64*, i64** %17, align 8
  %96 = call i32 @cca_clr2cipherkey(i32 %89, i32 %90, i32 %91, i32 %92, i32* %93, i32* %94, i64* %95)
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %88, %85
  %98 = load i32, i32* %21, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %105

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %53

105:                                              ; preds = %100, %53
  %106 = load i32, i32* %21, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %47, %41, %37, %27
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i32 @cca_clr2seckey(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @cca_clr2cipherkey(i32, i32, i32, i32, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
