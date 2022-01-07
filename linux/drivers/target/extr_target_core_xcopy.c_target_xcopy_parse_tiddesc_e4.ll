; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_tiddesc_e4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_parse_tiddesc_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i16 }
%struct.xcopy_op = type { i16, i16, i16, i16, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [53 x i8] c"XCOPY 0xe4: RELATIVE INITIATOR PORT IDENTIFIER: %hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"XCOPY 0xe4: code set of non binary type not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"XCOPY 0xe4: association other than LUN not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"XCOPY 0xe4: designator type unsupported: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"XCOPY 0xe4: invalid desig_len: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"XCOPY 0xe4: desig_len: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"XCOPY 0xe4: Unsupported DESIGNATOR TYPE: 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"XCOPY 0xe4: ignoring CSCD entry %d - neither src nor dest\0A\00", align 1
@XCOPY_NAA_IEEE_REGEX_LEN = common dso_local global i32 0, align 4
@XCOL_SOURCE_RECV_OP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"XCOPY 0xe4: Set xop->src_dev %p from source received xop\0A\00", align 1
@XCOL_DEST_RECV_OP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [64 x i8] c"XCOPY 0xe4: Set xop->dst_dev: %p from destination received xop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.xcopy_op*, i8*, i16)* @target_xcopy_parse_tiddesc_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_parse_tiddesc_e4(%struct.se_cmd* %0, %struct.xcopy_op* %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.xcopy_op*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %6, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %7, align 8
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = call zeroext i16 @get_unaligned_be16(i8* %15)
  store i16 %16, i16* %11, align 2
  %17 = load i16, i16* %11, align 2
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i16 zeroext %17)
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %191

29:                                               ; preds = %4
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 48
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %191

40:                                               ; preds = %29
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 15
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %191

56:                                               ; preds = %40
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 16
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %191

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = trunc i32 %69 to i16
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %70)
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 240
  %77 = icmp ne i32 %76, 96
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 240
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %191

87:                                               ; preds = %68
  %88 = load i16, i16* %9, align 2
  %89 = zext i16 %88 to i32
  %90 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %91 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %90, i32 0, i32 0
  %92 = load i16, i16* %91, align 8
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %89, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load i16, i16* %9, align 2
  %97 = zext i16 %96 to i32
  %98 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %99 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %98, i32 0, i32 1
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp ne i32 %97, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i16, i16* %9, align 2
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i16 zeroext %104)
  store i32 0, i32* %5, align 4
  br label %191

106:                                              ; preds = %95, %87
  %107 = load i16, i16* %9, align 2
  %108 = zext i16 %107 to i32
  %109 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %110 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %109, i32 0, i32 0
  %111 = load i16, i16* %110, align 8
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %106
  %115 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %116 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %122 = call i32 @memcpy(i32* %118, i8* %120, i32 %121)
  %123 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %124 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %128 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %132 = call i32 @memcmp(i32* %126, i32* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %114
  %135 = load i32, i32* @XCOL_SOURCE_RECV_OP, align 4
  %136 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %137 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %139 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %138, i32 0, i32 0
  %140 = load i16, i16* %139, align 2
  %141 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %142 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %141, i32 0, i32 2
  store i16 %140, i16* %142, align 4
  %143 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %144 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %143, i32 0, i32 2
  %145 = load i16, i16* %144, align 4
  %146 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i16 zeroext %145)
  br label %147

147:                                              ; preds = %134, %114
  br label %148

148:                                              ; preds = %147, %106
  %149 = load i16, i16* %9, align 2
  %150 = zext i16 %149 to i32
  %151 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %152 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %151, i32 0, i32 1
  %153 = load i16, i16* %152, align 2
  %154 = zext i16 %153 to i32
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %190

156:                                              ; preds = %148
  %157 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %158 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i8*, i8** %10, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 8
  %163 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %164 = call i32 @memcpy(i32* %160, i8* %162, i32 %163)
  %165 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %166 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %170 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %174 = call i32 @memcmp(i32* %168, i32* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %156
  %177 = load i32, i32* @XCOL_DEST_RECV_OP, align 4
  %178 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %179 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %181 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %180, i32 0, i32 0
  %182 = load i16, i16* %181, align 2
  %183 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %184 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %183, i32 0, i32 3
  store i16 %182, i16* %184, align 2
  %185 = load %struct.xcopy_op*, %struct.xcopy_op** %7, align 8
  %186 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %185, i32 0, i32 3
  %187 = load i16, i16* %186, align 2
  %188 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i16 zeroext %187)
  br label %189

189:                                              ; preds = %176, %156
  br label %190

190:                                              ; preds = %189, %148
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %103, %78, %63, %47, %36, %25
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local zeroext i16 @get_unaligned_be16(i8*) #1

declare dso_local i32 @pr_debug(i8*, i16 zeroext) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
