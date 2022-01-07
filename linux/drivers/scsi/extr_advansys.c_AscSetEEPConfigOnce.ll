; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscSetEEPConfigOnce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscSetEEPConfigOnce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_EEP_MAX_DVC_ADDR = common dso_local global i32 0, align 4
@ASC_IS_VL = common dso_local global i64 0, align 8
@ASC_EEP_DVC_CFG_BEG_VL = common dso_local global i32 0, align 4
@ASC_EEP_MAX_DVC_ADDR_VL = common dso_local global i32 0, align 4
@ASC_EEP_DVC_CFG_BEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @AscSetEEPConfigOnce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscSetEEPConfigOnce(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @ASC_EEP_MAX_DVC_ADDR, align 4
  %16 = sub nsw i32 %15, 2
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to i64*
  store i64* %18, i64** %8, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %39, %3
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %10, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @AscWriteEEPWord(i32 %29, i32 %30, i64 %32)
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %8, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @ASC_IS_VL, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ASC_EEP_DVC_CFG_BEG_VL, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @ASC_EEP_MAX_DVC_ADDR_VL, align 4
  store i32 %51, i32* %13, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @ASC_EEP_DVC_CFG_BEG, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @ASC_EEP_MAX_DVC_ADDR, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %98, %55
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @cpu_to_le16(i64 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @AscWriteEEPWord(i32 %71, i32 %72, i64 %73)
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %66
  br label %93

80:                                               ; preds = %62
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @AscWriteEEPWord(i32 %83, i32 %84, i64 %86)
  %88 = icmp ne i64 %82, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  %101 = load i64*, i64** %8, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %8, align 8
  br label %57

103:                                              ; preds = %57
  %104 = load i64, i64* %10, align 8
  %105 = load i64*, i64** %8, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @AscWriteEEPWord(i32 %107, i32 %108, i64 %109)
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i32*, i32** %5, align 8
  %117 = bitcast i32* %116 to i64*
  store i64* %117, i64** %8, align 8
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %132, %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i64*, i64** %8, align 8
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i64 @AscReadEEPWord(i32 %124, i32 %125)
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  %135 = load i64*, i64** %8, align 8
  %136 = getelementptr inbounds i64, i64* %135, i32 1
  store i64* %136, i64** %8, align 8
  br label %118

137:                                              ; preds = %118
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @ASC_IS_VL, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @ASC_EEP_DVC_CFG_BEG_VL, align 4
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @ASC_EEP_MAX_DVC_ADDR_VL, align 4
  store i32 %144, i32* %13, align 4
  br label %148

145:                                              ; preds = %137
  %146 = load i32, i32* @ASC_EEP_DVC_CFG_BEG, align 4
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* @ASC_EEP_MAX_DVC_ADDR, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %177, %148
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp sle i32 %151, %153
  br i1 %154, label %155, label %182

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i64 @AscReadEEPWord(i32 %160, i32 %161)
  %163 = call i64 @le16_to_cpu(i64 %162)
  store i64 %163, i64* %9, align 8
  br label %168

164:                                              ; preds = %155
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i64 @AscReadEEPWord(i32 %165, i32 %166)
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i64*, i64** %8, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %173, %168
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i32 1
  store i64* %181, i64** %8, align 8
  br label %150

182:                                              ; preds = %150
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @AscReadEEPWord(i32 %183, i32 %184)
  %186 = load i64, i64* %10, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %188, %182
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i64 @AscWriteEEPWord(i32, i32, i64) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i64 @AscReadEEPWord(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
