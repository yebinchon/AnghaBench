; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_vendor_any_infoframe = type { %struct.hdmi_vendor_infoframe }
%struct.hdmi_vendor_infoframe = type { i64, i32, i32, i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.hdmi_vendor_any_infoframe*, i8*, i64)* @hdmi_vendor_any_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_vendor_any_infoframe_unpack(%union.hdmi_vendor_any_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %union.hdmi_vendor_any_infoframe* %0, %union.hdmi_vendor_any_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %5, align 8
  %16 = bitcast %union.hdmi_vendor_any_infoframe* %15 to %struct.hdmi_vendor_infoframe*
  store %struct.hdmi_vendor_infoframe* %16, %struct.hdmi_vendor_infoframe** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %178

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 5
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %29, %23
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %178

52:                                               ; preds = %44, %39, %34
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %178

65:                                               ; preds = %52
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = call i64 @hdmi_infoframe_checksum(i8* %66, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %178

75:                                               ; preds = %65
  %76 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %93, label %83

83:                                               ; preds = %75
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 12
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %83, %75
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %178

96:                                               ; preds = %88
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 5
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %178

106:                                              ; preds = %96
  %107 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %108 = call i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %178

113:                                              ; preds = %106
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %116 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %154

119:                                              ; preds = %113
  %120 = load i64, i64* %9, align 8
  %121 = icmp ne i64 %120, 5
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 6
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %178

128:                                              ; preds = %122, %119
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 4
  %133 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %134 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %136 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %128
  %141 = load i64, i64* %9, align 8
  %142 = icmp ne i64 %141, 6
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %178

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %152 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %146, %128
  br label %177

154:                                              ; preds = %113
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 5
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %178

163:                                              ; preds = %157
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %12, align 8
  %168 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  br label %176

169:                                              ; preds = %154
  %170 = load i64, i64* %9, align 8
  %171 = icmp ne i64 %170, 4
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %178

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %163
  br label %177

177:                                              ; preds = %176, %153
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %172, %160, %143, %125, %111, %103, %93, %72, %62, %49, %20
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i64) #1

declare dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
