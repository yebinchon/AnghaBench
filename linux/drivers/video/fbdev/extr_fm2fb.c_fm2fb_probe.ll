; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fm2fb.c_fm2fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fm2fb.c_fm2fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.zorro_dev = type { i64, i32 }
%struct.zorro_device_id = type { i32 }
%struct.fb_info = type { i64, i32, i32, %struct.TYPE_2__, i32*, i32*, i32, i32* }

@ZORRO_PROD_BSC_FRAMEMASTER_II = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"fm2fb\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fb_fix = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FRAMEMASTER_SIZE = common dso_local global i32 0, align 4
@FRAMEMASTER_REG = common dso_local global i64 0, align 8
@fm2fb_reg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"FrameMaster II\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Rainbow II\00", align 1
@fm2fb_mode = common dso_local global i32 0, align 4
@FM2FB_MODE_PAL = common dso_local global i32 0, align 4
@fm2fb_ops = common dso_local global i32 0, align 4
@fb_var_modes = common dso_local global i32* null, align 8
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @fm2fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm2fb_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %11 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %12 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZORRO_PROD_BSC_FRAMEMASTER_II, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %18 = call i32 @zorro_request_device(%struct.zorro_dev* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %209

23:                                               ; preds = %2
  %24 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %25 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %24, i32 0, i32 1
  %26 = call %struct.fb_info* @framebuffer_alloc(i32 64, i32* %25)
  store %struct.fb_info* %26, %struct.fb_info** %6, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %28 = icmp ne %struct.fb_info* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %31 = call i32 @zorro_release_device(%struct.zorro_dev* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %209

34:                                               ; preds = %23
  %35 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = call i64 @fb_alloc_cmap(i32* %36, i32 256, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = call i32 @framebuffer_release(%struct.fb_info* %40)
  %42 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %43 = call i32 @zorro_release_device(%struct.zorro_dev* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %209

46:                                               ; preds = %34
  %47 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %48 = call i64 @zorro_resource_start(%struct.zorro_dev* %47)
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 1), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 1), align 8
  %50 = load i32, i32* @FRAMEMASTER_SIZE, align 4
  %51 = call i64 @ioremap(i64 %49, i32 %50)
  %52 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 1), align 8
  %55 = load i64, i64* @FRAMEMASTER_REG, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 2), align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FRAMEMASTER_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** @fm2fb_reg, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 0), align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @strcpy(i32 %63, i8* %67)
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 1), align 8
  %70 = inttoptr i64 %69 to i64*
  store i64* %70, i64** %7, align 8
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %155, %46
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 576
  br i1 %73, label %74, label %158

74:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 96
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64*, i64** %7, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %7, align 8
  store i64 16777215, i64* %79, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %75

84:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %91, %84
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 96
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i64*, i64** %7, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %7, align 8
  store i64 16776960, i64* %89, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %85

94:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %101, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 96
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64*, i64** %7, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %7, align 8
  store i64 65535, i64* %99, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %95

104:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %111, %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 96
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %7, align 8
  store i64 65280, i64* %109, align 8
  br label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %105

114:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %121, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 96
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i64*, i64** %7, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %7, align 8
  store i64 16711935, i64* %119, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %115

124:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 96
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %7, align 8
  store i64 16711680, i64* %129, align 8
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %125

134:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %141, %134
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 96
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i64*, i64** %7, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %7, align 8
  store i64 255, i64* %139, align 8
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %135

144:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %151, %144
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 96
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i64*, i64** %7, align 8
  %150 = getelementptr inbounds i64, i64* %149, i32 1
  store i64* %150, i64** %7, align 8
  store i64 0, i64* %149, align 8
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %145

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %71

158:                                              ; preds = %71
  %159 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %160 = call i32 @fm2fb_blank(i32 0, %struct.fb_info* %159)
  %161 = load i32, i32* @fm2fb_mode, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @FM2FB_MODE_PAL, align 4
  store i32 %164, i32* @fm2fb_mode, align 4
  br label %165

165:                                              ; preds = %163, %158
  %166 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 7
  store i32* @fm2fb_ops, i32** %167, align 8
  %168 = load i32*, i32** @fb_var_modes, align 8
  %169 = load i32, i32* @fm2fb_mode, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 8
  %175 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 5
  store i32* %177, i32** %179, align 8
  %180 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 4
  store i32* null, i32** %181, align 8
  %182 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %183 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %182, i32 0, i32 3
  %184 = bitcast %struct.TYPE_2__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 bitcast (%struct.TYPE_2__* @fb_fix to i8*), i64 24, i1 false)
  %185 = load i32, i32* @FBINFO_DEFAULT, align 4
  %186 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %189 = call i64 @register_framebuffer(%struct.fb_info* %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %165
  %192 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 1
  %194 = call i32 @fb_dealloc_cmap(i32* %193)
  %195 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %196 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @iounmap(i64 %197)
  %199 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %200 = call i32 @framebuffer_release(%struct.fb_info* %199)
  %201 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %202 = call i32 @zorro_release_device(%struct.zorro_dev* %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %209

205:                                              ; preds = %165
  %206 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fb_fix, i32 0, i32 0), align 8
  %208 = call i32 @fb_info(%struct.fb_info* %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %191, %39, %29, %20
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @zorro_request_device(%struct.zorro_dev*, i8*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @zorro_release_device(%struct.zorro_dev*) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i64 @zorro_resource_start(%struct.zorro_dev*) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @fm2fb_blank(i32, %struct.fb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
