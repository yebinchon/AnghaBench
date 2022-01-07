; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_target_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_target_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device* }
%struct.se_device = type { i32 }
%struct.xcopy_op = type { i32, i32*, i32, i32*, i32, i32, i32, i32* }

@XCOPY_TARGET_DESC_LEN = common dso_local global i16 0, align 2
@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"XCOPY target descriptor list length is not multiple of %d\0A\00", align 1
@TCM_UNSUPPORTED_TARGET_DESC_TYPE_CODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCR_OP_MAX_TARGET_DESC_COUNT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [92 x i8] c"XCOPY target descriptor supports a maximum two src/dest descriptors, tdll: %hu too large..\0A\00", align 1
@TCM_TOO_MANY_TARGET_DESCS = common dso_local global i32 0, align 4
@XCOPY_NAA_IEEE_REGEX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"XCOPY unsupported descriptor type code: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"XCOPY CSCD descriptor IDs not found in CSCD list - stdi: %hu dtdi: %hu\0A\00", align 1
@TCM_COPY_TARGET_DEVICE_NOT_REACHABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"XCOPY TGT desc: Source dev: %p NAA IEEE WWN: 0x%16phN\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"XCOPY TGT desc: Dest dev: %p NAA IEEE WWN: 0x%16phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.xcopy_op*, i8*, i16, i32*)* @target_xcopy_parse_target_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_parse_target_descriptors(%struct.se_cmd* %0, %struct.xcopy_op* %1, i8* %2, i16 zeroext %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.xcopy_op*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32*, align 8
  %12 = alloca %struct.se_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %8, align 8
  store i8* %2, i8** %9, align 8
  store i16 %3, i16* %10, align 2
  store i32* %4, i32** %11, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load %struct.se_device*, %struct.se_device** %19, align 8
  store %struct.se_device* %20, %struct.se_device** %12, align 8
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i16, i16* %10, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @XCOPY_TARGET_DESC_LEN, align 2
  %25 = zext i16 %24 to i32
  %26 = srem i32 %23, %25
  store i32 %26, i32* %14, align 4
  store i16 0, i16* %16, align 2
  store i16 0, i16* %17, align 2
  %27 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i16, i16* @XCOPY_TARGET_DESC_LEN, align 2
  %33 = call i32 (i8*, i16, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i16 zeroext %32)
  %34 = load i32, i32* @TCM_UNSUPPORTED_TARGET_DESC_TYPE_CODE, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %168

38:                                               ; preds = %5
  %39 = load i16, i16* %10, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @RCR_OP_MAX_TARGET_DESC_COUNT, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @XCOPY_TARGET_DESC_LEN, align 2
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 %42, %44
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i16, i16* %10, align 2
  %49 = call i32 (i8*, i16, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %48)
  %50 = load i32, i32* @TCM_TOO_MANY_TARGET_DESCS, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %168

54:                                               ; preds = %38
  %55 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %56 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %60 = call i32 @memset(i32* %58, i32 0, i32 %59)
  %61 = load %struct.se_device*, %struct.se_device** %12, align 8
  %62 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %63 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @target_xcopy_gen_naa_ieee(%struct.se_device* %61, i32* %65)
  br label %67

67:                                               ; preds = %110, %54
  %68 = load i16, i16* %17, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %10, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  switch i32 %77, label %102 [
    i32 228, label %78
  ]

78:                                               ; preds = %73
  %79 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %80 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i16, i16* %16, align 2
  %84 = call i32 @target_xcopy_parse_tiddesc_e4(%struct.se_cmd* %79, %struct.xcopy_op* %80, i8* %82, i16 zeroext %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %165

88:                                               ; preds = %78
  %89 = load i16, i16* @XCOPY_TARGET_DESC_LEN, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %17, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %92, %90
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %17, align 2
  %95 = load i16, i16* @XCOPY_TARGET_DESC_LEN, align 2
  %96 = zext i16 %95 to i32
  %97 = load i8*, i8** %13, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %13, align 8
  %100 = load i16, i16* %16, align 2
  %101 = add i16 %100, 1
  store i16 %101, i16* %16, align 2
  br label %110

102:                                              ; preds = %73
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i16
  %107 = call i32 (i8*, i16, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %106)
  %108 = load i32, i32* @TCM_UNSUPPORTED_TARGET_DESC_TYPE_CODE, align 4
  %109 = load i32*, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  br label %165

110:                                              ; preds = %88
  br label %67

111:                                              ; preds = %67
  %112 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %113 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %129 [
    i32 128, label %115
    i32 129, label %122
  ]

115:                                              ; preds = %111
  %116 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %117 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %120 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %119, i32 0, i32 2
  %121 = call i32 @target_xcopy_locate_se_dev_e4(i32* %118, i32* %120)
  store i32 %121, i32* %15, align 4
  br label %140

122:                                              ; preds = %111
  %123 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %124 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %127 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %126, i32 0, i32 4
  %128 = call i32 @target_xcopy_locate_se_dev_e4(i32* %125, i32* %127)
  store i32 %128, i32* %15, align 4
  br label %140

129:                                              ; preds = %111
  %130 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %131 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = trunc i32 %132 to i16
  %134 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %135 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i16, ...) @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %133, i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %129, %122, %115
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @TCM_COPY_TARGET_DEVICE_NOT_REACHABLE, align 4
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  br label %165

146:                                              ; preds = %140
  %147 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %148 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %151 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32* %153)
  %155 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %156 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %159 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32* %161)
  %163 = load i16, i16* %16, align 2
  %164 = zext i16 %163 to i32
  store i32 %164, i32* %6, align 4
  br label %168

165:                                              ; preds = %143, %102, %87
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %165, %146, %47, %31
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @pr_err(i8*, i16 zeroext, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @target_xcopy_gen_naa_ieee(%struct.se_device*, i32*) #1

declare dso_local i32 @target_xcopy_parse_tiddesc_e4(%struct.se_cmd*, %struct.xcopy_op*, i8*, i16 zeroext) #1

declare dso_local i32 @target_xcopy_locate_se_dev_e4(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
