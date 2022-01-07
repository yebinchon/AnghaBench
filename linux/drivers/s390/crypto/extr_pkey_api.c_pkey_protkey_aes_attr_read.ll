; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_protkey_aes_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_protkey_aes_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protaeskeytoken = type { i32, i8, i32, i32, i32 }
%struct.pkey_protkey = type { i32, %struct.protaeskeytoken }

@EINVAL = common dso_local global i32 0, align 4
@TOKTYPE_NON_CCA = common dso_local global i32 0, align 4
@TOKVER_PROTECTED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i64)* @pkey_protkey_aes_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_protkey_aes_attr_read(i32 %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.protaeskeytoken, align 4
  %13 = alloca %struct.pkey_protkey, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 20
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %82

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %27, 40
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %82

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %23
  %34 = call i32 @memset(%struct.protaeskeytoken* %12, i32 0, i32 20)
  %35 = load i32, i32* @TOKTYPE_NON_CCA, align 4
  %36 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TOKVER_PROTECTED_KEY, align 4
  %38 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pkey_genprotkey(i32 %42, %struct.pkey_protkey* %13)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %82

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 1
  %54 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i8* %52, %struct.protaeskeytoken* %53, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @memcpy(i8* %57, %struct.protaeskeytoken* %12, i32 20)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pkey_genprotkey(i32 %63, %struct.pkey_protkey* %13)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %82

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.protaeskeytoken, %struct.protaeskeytoken* %12, i32 0, i32 1
  %74 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 1
  %75 = getelementptr inbounds %struct.pkey_protkey, %struct.pkey_protkey* %13, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcpy(i8* %73, %struct.protaeskeytoken* %74, i32 %76)
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 20
  %80 = call i32 @memcpy(i8* %79, %struct.protaeskeytoken* %12, i32 20)
  store i32 40, i32* %6, align 4
  br label %82

81:                                               ; preds = %48
  store i32 20, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %69, %67, %46, %29, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.protaeskeytoken*, i32, i32) #1

declare dso_local i32 @pkey_genprotkey(i32, %struct.pkey_protkey*) #1

declare dso_local i32 @memcpy(i8*, %struct.protaeskeytoken*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
