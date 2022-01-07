; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_cca_findcard2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_cca_findcard2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device_status_ext = type { i32, i32, i32 }
%struct.cca_info = type { i8, i32, i64, i8, i64 }

@MAX_ZDEV_ENTRIES_EXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cca_findcard2(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.zcrypt_device_status_ext*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.cca_info, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %25, align 4
  %27 = load i32**, i32*** %10, align 8
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %11, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc_array(i32 %29, i32 12, i32 %30)
  %32 = bitcast i8* %31 to %struct.zcrypt_device_status_ext*
  store %struct.zcrypt_device_status_ext* %32, %struct.zcrypt_device_status_ext** %18, align 8
  %33 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %34 = icmp ne %struct.zcrypt_device_status_ext* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %214

38:                                               ; preds = %8
  %39 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %40 = call i32 @zcrypt_device_status_mask_ext(%struct.zcrypt_device_status_ext* %39)
  br label %41

41:                                               ; preds = %38, %209
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %181, %41
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %184

46:                                               ; preds = %42
  %47 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %47, i64 %49
  %51 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AP_QID_CARD(i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %54, i64 %56
  %58 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AP_QID_QUEUE(i32 %59)
  store i32 %60, i32* %22, align 4
  %61 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %61, i64 %63
  %65 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %46
  br label %181

69:                                               ; preds = %46
  %70 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %70, i64 %72
  %74 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %181

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 65535
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %181

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 65535
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %181

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i64 @cca_get_info(i32 %96, i32 %97, %struct.cca_info* %26, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %181

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %26, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 50
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %181

108:                                              ; preds = %102
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %26, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %181

117:                                              ; preds = %111, %108
  %118 = load i64, i64* %15, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %16, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %120, %117
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %124 = load i64, i64* %15, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %26, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, i32* %23, align 4
  br label %132

132:                                              ; preds = %131, %126, %123
  %133 = load i64, i64* %16, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %26, i32 0, i32 3
  %137 = load i8, i8* %136, align 8
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 50
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %26, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %24, align 4
  br label %146

146:                                              ; preds = %145, %140, %135, %132
  %147 = load i64, i64* %15, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i64, i64* %16, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %24, align 4
  %155 = add nsw i32 %153, %154
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %181

158:                                              ; preds = %152, %149
  br label %159

159:                                              ; preds = %158, %120
  %160 = load i32**, i32*** %10, align 8
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32, i32* %20, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i32, i32* %21, align 4
  %170 = shl i32 %169, 16
  %171 = load i32, i32* %22, align 4
  %172 = or i32 %170, %171
  %173 = load i32**, i32*** %10, align 8
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %168, %163, %159
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %178, %157, %116, %107, %101, %94, %86, %78, %68
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %19, align 4
  br label %42

184:                                              ; preds = %42
  %185 = load i32**, i32*** %10, align 8
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %210

189:                                              ; preds = %184
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %25, align 4
  br label %210

195:                                              ; preds = %189
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %11, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call i8* @kmalloc_array(i32 %198, i32 4, i32 %199)
  %201 = bitcast i8* %200 to i32*
  %202 = load i32**, i32*** %10, align 8
  store i32* %201, i32** %202, align 8
  %203 = load i32**, i32*** %10, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %195
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %25, align 4
  br label %210

209:                                              ; preds = %195
  store i32 0, i32* %17, align 4
  br label %41

210:                                              ; preds = %206, %192, %188
  %211 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %18, align 8
  %212 = call i32 @kfree(%struct.zcrypt_device_status_ext* %211)
  %213 = load i32, i32* %25, align 4
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %210, %35
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @zcrypt_device_status_mask_ext(%struct.zcrypt_device_status_ext*) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i64 @cca_get_info(i32, i32, %struct.cca_info*, i32) #1

declare dso_local i32 @kfree(%struct.zcrypt_device_status_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
