; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32 }
%struct.imgu_fw_isp_parameter = type { i32 }

@IMGU_ABI_PARAM_CLASS_PARAM = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.imgu_css*, i32, i32, i8*, i8*, i8*, i32, %struct.imgu_fw_isp_parameter*, i64)* @imgu_css_cfg_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @imgu_css_cfg_copy(%struct.imgu_css* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6, %struct.imgu_fw_isp_parameter* %7, i64 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.imgu_css*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.imgu_fw_isp_parameter*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.imgu_fw_isp_parameter* %7, %struct.imgu_fw_isp_parameter** %18, align 8
  store i64 %8, i64* %19, align 8
  %23 = load i32, i32* @IMGU_ABI_PARAM_CLASS_PARAM, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.imgu_css*, %struct.imgu_css** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %18, align 8
  %29 = load i64, i64* %19, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i8* @imgu_css_fw_pipeline_params(%struct.imgu_css* %24, i32 %25, i32 %26, i32 %27, %struct.imgu_fw_isp_parameter* %28, i64 %29, i8* %30)
  store i8* %31, i8** %21, align 8
  %32 = load i8*, i8** %21, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %9
  %35 = load i32, i32* @EPROTO, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i8* @ERR_PTR(i32 %36)
  store i8* %37, i8** %10, align 8
  br label %73

38:                                               ; preds = %9
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %21, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i64, i64* %19, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  br label %72

46:                                               ; preds = %38
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.imgu_css*, %struct.imgu_css** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.imgu_fw_isp_parameter*, %struct.imgu_fw_isp_parameter** %18, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i8* @imgu_css_fw_pipeline_params(%struct.imgu_css* %50, i32 %51, i32 %52, i32 %53, %struct.imgu_fw_isp_parameter* %54, i64 %55, i8* %56)
  store i8* %57, i8** %22, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @EPROTO, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i8* @ERR_PTR(i32 %62)
  store i8* %63, i8** %10, align 8
  br label %73

64:                                               ; preds = %49
  %65 = load i8*, i8** %21, align 8
  %66 = load i8*, i8** %22, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  br label %71

69:                                               ; preds = %46
  %70 = load i8*, i8** %21, align 8
  store i8* %70, i8** %10, align 8
  br label %73

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %41
  store i8* null, i8** %10, align 8
  br label %73

73:                                               ; preds = %72, %69, %60, %34
  %74 = load i8*, i8** %10, align 8
  ret i8* %74
}

declare dso_local i8* @imgu_css_fw_pipeline_params(%struct.imgu_css*, i32, i32, i32, %struct.imgu_fw_isp_parameter*, i64, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
