; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_call_preprocess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_hgcm_call_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmmdev_hgcm_function_parameter = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VBG_MAX_HGCM_KERNEL_PARM = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmmdev_hgcm_function_parameter*, i64, i8***, i64*)* @hgcm_call_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgcm_call_preprocess(%struct.vmmdev_hgcm_function_parameter* %0, i64 %1, i8*** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmmdev_hgcm_function_parameter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.vmmdev_hgcm_function_parameter* %0, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8** null, i8*** %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %82, %4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  %21 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %78 [
    i32 135, label %23
    i32 134, label %23
    i32 133, label %24
    i32 132, label %24
    i32 128, label %24
    i32 131, label %51
    i32 130, label %51
    i32 129, label %51
  ]

23:                                               ; preds = %19, %19
  br label %81

24:                                               ; preds = %19, %19, %19
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8** @kcalloc(i64 %28, i32 8, i32 %29)
  store i8** %30, i8*** %11, align 8
  %31 = load i8**, i8*** %11, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %88

36:                                               ; preds = %27
  %37 = load i8**, i8*** %11, align 8
  %38 = load i8***, i8**** %8, align 8
  store i8** %37, i8*** %38, align 8
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  %41 = load i8**, i8*** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @hgcm_call_preprocess_linaddr(%struct.vmmdev_hgcm_function_parameter* %40, i8** %43, i64* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %88

50:                                               ; preds = %39
  br label %81

51:                                               ; preds = %19, %19, %19
  %52 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  %53 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %10, align 8
  %59 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  %60 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @VBG_MAX_HGCM_KERNEL_PARM, align 8
  %66 = icmp sgt i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @E2BIG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %88

73:                                               ; preds = %51
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @hgcm_call_add_pagelist_size(i8* %74, i64 %75, i64* %76)
  br label %81

78:                                               ; preds = %19
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %73, %50, %23
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %12, align 8
  %85 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  %86 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %85, i32 1
  store %struct.vmmdev_hgcm_function_parameter* %86, %struct.vmmdev_hgcm_function_parameter** %6, align 8
  br label %15

87:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %78, %70, %48, %33
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @hgcm_call_preprocess_linaddr(%struct.vmmdev_hgcm_function_parameter*, i8**, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hgcm_call_add_pagelist_size(i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
