; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_plugimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_plugimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgchunk = type { i64, i64, i32* }
%struct.s3plugrec = type { i64, i32, i32 }
%struct.pda = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"warning: Failed to find PDR for plugrec 0x%04x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"error: Plug vs. PDR len mismatch for plugrec 0x%04x, abort plugging.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"error: Failed to find image chunk for plugrec 0x%04x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Plugging item 0x%04x @ 0x%06x, len=%d, cnum=%d coff=0x%06x\0A\00", align 1
@PRISM2_USB_FWFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgchunk*, i32, %struct.s3plugrec*, i32, %struct.pda*)* @plugimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plugimage(%struct.imgchunk* %0, i32 %1, %struct.s3plugrec* %2, i32 %3, %struct.pda* %4) #0 {
  %6 = alloca %struct.imgchunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3plugrec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pda*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.imgchunk* %0, %struct.imgchunk** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.s3plugrec* %2, %struct.s3plugrec** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pda* %4, %struct.pda** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %248, %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %251

25:                                               ; preds = %21
  %26 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %26, i64 %28
  %30 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %15, align 8
  %32 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %32, i64 %34
  %36 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %38, i64 %40
  %42 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %37, %44
  store i64 %45, i64* %16, align 8
  %46 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %46, i64 %48
  %50 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4294967295
  br i1 %53, label %54, label %85

54:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %81, %54
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.pda*, %struct.pda** %10, align 8
  %58 = getelementptr inbounds %struct.pda, %struct.pda* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %62, i64 %64
  %66 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pda*, %struct.pda** %10, align 8
  %69 = getelementptr inbounds %struct.pda, %struct.pda* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = icmp eq i32 %67, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %84

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %55

84:                                               ; preds = %79, %55
  br label %86

85:                                               ; preds = %25
  store i32 -1, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.pda*, %struct.pda** %10, align 8
  %89 = getelementptr inbounds %struct.pda, %struct.pda* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %96, i64 %98
  %100 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %248

103:                                              ; preds = %92, %86
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %107, i64 %109
  %111 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.pda*, %struct.pda** %10, align 8
  %114 = getelementptr inbounds %struct.pda, %struct.pda* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %117
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = icmp slt i32 %112, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %106
  %125 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %125, i64 %127
  %129 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  store i32 1, i32* %11, align 4
  br label %248

132:                                              ; preds = %106, %103
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %166, %132
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %133
  %138 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %138, i64 %140
  %142 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %17, align 8
  %144 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %144, i64 %146
  %148 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %150, i64 %152
  %154 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %149, %155
  store i64 %156, i64* %18, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %17, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %137
  %161 = load i64, i64* %16, align 8
  %162 = load i64, i64* %18, align 8
  %163 = icmp sle i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %169

165:                                              ; preds = %160, %137
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %133

169:                                              ; preds = %164, %133
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp uge i32 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %174, i64 %176
  %178 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  store i32 1, i32* %11, align 4
  br label %248

181:                                              ; preds = %169
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %17, align 8
  %184 = sub nsw i64 %182, %183
  store i64 %184, i64* %19, align 8
  %185 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %185, i64 %187
  %189 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %19, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %20, align 8
  %193 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %193, i64 %195
  %197 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %200, i64 %202
  %204 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = load i64, i64* %19, align 8
  %208 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %198, i64 %199, i32 %205, i32 %206, i64 %207)
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, -1
  br i1 %210, label %211, label %230

211:                                              ; preds = %181
  %212 = load i32*, i32** %20, align 8
  %213 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %213, i64 %215
  %217 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @memset(i32* %212, i32 0, i32 %218)
  %220 = load i32*, i32** %20, align 8
  %221 = load i32, i32* @PRISM2_USB_FWFILE, align 4
  %222 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %222, i64 %224
  %226 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @strncpy(i32* %220, i32 %221, i32 %228)
  br label %247

230:                                              ; preds = %181
  %231 = load i32*, i32** %20, align 8
  %232 = load %struct.pda*, %struct.pda** %10, align 8
  %233 = getelementptr inbounds %struct.pda, %struct.pda* %232, i32 0, i32 1
  %234 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %234, i64 %236
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load %struct.s3plugrec*, %struct.s3plugrec** %8, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %240, i64 %242
  %244 = getelementptr inbounds %struct.s3plugrec, %struct.s3plugrec* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @memcpy(i32* %231, i32* %239, i32 %245)
  br label %247

247:                                              ; preds = %230, %211
  br label %248

248:                                              ; preds = %247, %173, %124, %95
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %12, align 4
  br label %21

251:                                              ; preds = %21
  %252 = load i32, i32* %11, align 4
  ret i32 %252
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
