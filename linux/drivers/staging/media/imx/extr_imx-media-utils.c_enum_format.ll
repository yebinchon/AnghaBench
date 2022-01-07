; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_enum_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_enum_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_pixfmt = type { i64, i64*, i32 }

@NUM_MBUS_YUV_FORMATS = common dso_local global i64 0, align 8
@NUM_MBUS_RGB_FORMATS = common dso_local global i64 0, align 8
@NUM_YUV_FORMATS = common dso_local global i64 0, align 8
@NUM_RGB_FORMATS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@yuv_formats = common dso_local global %struct.imx_media_pixfmt* null, align 8
@rgb_formats = common dso_local global %struct.imx_media_pixfmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64, i32, i32, i32)* @enum_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_format(i64* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.imx_media_pixfmt*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* @NUM_MBUS_YUV_FORMATS, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* @NUM_MBUS_RGB_FORMATS, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* @NUM_YUV_FORMATS, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i64, i64* @NUM_RGB_FORMATS, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %144 [
    i32 128, label %24
    i32 129, label %42
    i32 130, label %71
  ]

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %17, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %166

38:                                               ; preds = %31, %28
  %39 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @yuv_formats, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %39, i64 %40
  store %struct.imx_media_pixfmt* %41, %struct.imx_media_pixfmt** %14, align 8
  br label %147

42:                                               ; preds = %6
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %18, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %166

56:                                               ; preds = %49, %46
  %57 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @rgb_formats, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %57, i64 %58
  store %struct.imx_media_pixfmt* %59, %struct.imx_media_pixfmt** %14, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %64 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %166

70:                                               ; preds = %62, %56
  br label %147

71:                                               ; preds = %6
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %16, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %166

88:                                               ; preds = %78
  %89 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @rgb_formats, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %89, i64 %90
  store %struct.imx_media_pixfmt* %91, %struct.imx_media_pixfmt** %14, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %88
  %95 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %96 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %166

102:                                              ; preds = %94, %88
  br label %107

103:                                              ; preds = %74
  %104 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @yuv_formats, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %104, i64 %105
  store %struct.imx_media_pixfmt* %106, %struct.imx_media_pixfmt** %14, align 8
  br label %107

107:                                              ; preds = %103, %102
  br label %143

108:                                              ; preds = %71
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %18, align 8
  %112 = add i64 %110, %111
  %113 = icmp uge i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %166

117:                                              ; preds = %108
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %17, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @rgb_formats, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %17, align 8
  %125 = sub i64 %123, %124
  %126 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %122, i64 %125
  store %struct.imx_media_pixfmt* %126, %struct.imx_media_pixfmt** %14, align 8
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %131 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %166

137:                                              ; preds = %129, %121
  br label %142

138:                                              ; preds = %117
  %139 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** @yuv_formats, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %139, i64 %140
  store %struct.imx_media_pixfmt* %141, %struct.imx_media_pixfmt** %14, align 8
  br label %142

142:                                              ; preds = %138, %137
  br label %143

143:                                              ; preds = %142, %107
  br label %147

144:                                              ; preds = %6
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %166

147:                                              ; preds = %143, %70, %38
  %148 = load i64*, i64** %8, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %152 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %8, align 8
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i64*, i64** %9, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %160 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %9, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %158, %155
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %165, %144, %134, %114, %99, %85, %67, %53, %35
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
