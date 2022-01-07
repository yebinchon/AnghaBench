; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_dosname_to_uniname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_dosname_to_uniname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.uni_name_t = type { i64* }
%struct.dos_name_t = type { i32*, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nls_dosname_to_uniname(%struct.super_block* %0, %struct.uni_name_t* %1, %struct.dos_name_t* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.uni_name_t*, align 8
  %6 = alloca %struct.dos_name_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nls_table*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.uni_name_t* %1, %struct.uni_name_t** %5, align 8
  store %struct.dos_name_t* %2, %struct.dos_name_t** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %21 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.uni_name_t*, %struct.uni_name_t** %5, align 8
  %24 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %13, align 8
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.nls_table*, %struct.nls_table** %28, align 8
  store %struct.nls_table* %29, %struct.nls_table** %14, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  store i32 229, i32* %19, align 16
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %3
  br label %39

39:                                               ; preds = %90, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %95

42:                                               ; preds = %39
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %95

50:                                               ; preds = %42
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 65
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %62, 90
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %66 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 32
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %19, i64 %78
  store i32 %76, i32* %79, align 4
  br label %89

80:                                               ; preds = %64, %57, %50
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %19, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %39

95:                                               ; preds = %49, %39
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 32
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %19, i64 %102
  store i32 46, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %100, %95
  store i32 8, i32* %7, align 4
  br label %107

107:                                              ; preds = %159, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %164

119:                                              ; preds = %111
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 65
  br i1 %125, label %126, label %149

126:                                              ; preds = %119
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %131, 90
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %135 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 16
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 32
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %19, i64 %147
  store i32 %145, i32* %148, align 4
  br label %158

149:                                              ; preds = %133, %126, %119
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %19, i64 %156
  store i32 %154, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %139
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %107

164:                                              ; preds = %118, %107
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %19, i64 %166
  store i32 0, i32* %167, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %180, %164
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %171 = sub nsw i32 %170, 1
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %168
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %19, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %195

180:                                              ; preds = %173
  %181 = load %struct.nls_table*, %struct.nls_table** %14, align 8
  %182 = load i64*, i64** %13, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %19, i64 %184
  %186 = call i64 @convert_ch_to_uni(%struct.nls_table* %181, i64* %182, i32* %185, i32* null)
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %7, align 4
  %191 = load i64*, i64** %13, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %13, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %168

195:                                              ; preds = %179, %168
  %196 = load i64*, i64** %13, align 8
  store i64 0, i64* %196, align 8
  %197 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #2

declare dso_local i64 @convert_ch_to_uni(%struct.nls_table*, i64*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
