; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_segment_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_segment_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }
%struct.xcopy_op = type { i32 }

@XCOPY_SEGMENT_DESC_LEN = common dso_local global i32 0, align 4
@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"XCOPY segment descriptor list length is not multiple of %d\0A\00", align 1
@TCM_UNSUPPORTED_SEGMENT_DESC_TYPE_CODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCR_OP_MAX_SG_DESC_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"XCOPY supports %u segment descriptor(s), sdll: %u too large..\0A\00", align 1
@TCM_TOO_MANY_SEGMENT_DESCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"XCOPY unsupported segment descriptortype: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.xcopy_op*, i8*, i32, i32*)* @target_xcopy_parse_segment_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_parse_segment_descriptors(%struct.se_cmd* %0, %struct.xcopy_op* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.xcopy_op*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %27 = trunc i32 %26 to i8
  %28 = call i32 (i8*, i8, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8 zeroext %27)
  %29 = load i32, i32* @TCM_UNSUPPORTED_SEGMENT_DESC_TYPE_CODE, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %89

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RCR_OP_MAX_SG_DESC_COUNT, align 4
  %36 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %37 = mul i32 %35, %36
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @RCR_OP_MAX_SG_DESC_COUNT, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i8*, i8, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %41, i32 %42)
  %44 = load i32, i32* @TCM_TOO_MANY_SEGMENT_DESCS, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %89

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  switch i32 %57, label %76 [
    i32 2, label %58
  ]

58:                                               ; preds = %53
  %59 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %60 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @target_xcopy_parse_segdesc_02(%struct.se_cmd* %59, %struct.xcopy_op* %60, i8* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %86

66:                                               ; preds = %58
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %12, align 8
  br label %83

76:                                               ; preds = %53
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = call i32 (i8*, i8, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %79)
  %81 = load i32, i32* @TCM_UNSUPPORTED_SEGMENT_DESC_TYPE_CODE, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %86

83:                                               ; preds = %66
  br label %49

84:                                               ; preds = %49
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %6, align 4
  br label %89

86:                                               ; preds = %76, %65
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %84, %39, %25
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @pr_err(i8*, i8 zeroext, ...) #1

declare dso_local i32 @target_xcopy_parse_segdesc_02(%struct.se_cmd*, %struct.xcopy_op*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
