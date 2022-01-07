; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, i64, %struct.TYPE_6__, %struct.nvidia_par* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nvidia_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @nvidiafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidiafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.nvidia_par*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 3
  %21 = load %struct.nvidia_par*, %struct.nvidia_par** %20, align 8
  store %struct.nvidia_par* %21, %struct.nvidia_par** %14, align 8
  %22 = call i32 (...) @NVTRACE_ENTER()
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = icmp uge i32 %23, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %195

34:                                               ; preds = %6
  %35 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = mul i32 %41, 77
  %43 = load i32, i32* %10, align 4
  %44 = mul i32 %43, 151
  %45 = add i32 %42, %44
  %46 = load i32, i32* %11, align 4
  %47 = mul i32 %46, 28
  %48 = add i32 %45, %47
  %49 = lshr i32 %48, 8
  store i32 %49, i32* %11, align 4
  store i32 %49, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %40, %34
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %51, 16
  br i1 %52, label %53, label %91

53:                                               ; preds = %50
  %54 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %61, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %68, %73
  %75 = or i32 %67, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %76, %81
  %83 = or i32 %75, %82
  %84 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %60, %53, %50
  %92 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %192 [
    i32 8, label %96
    i32 16, label %106
    i32 32, label %182
  ]

96:                                               ; preds = %91
  %97 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = lshr i32 %99, 8
  %101 = load i32, i32* %10, align 4
  %102 = lshr i32 %101, 8
  %103 = load i32, i32* %11, align 4
  %104 = lshr i32 %103, 8
  %105 = call i32 @nvidia_write_clut(%struct.nvidia_par* %97, i32 %98, i32 %100, i32 %102, i32 %104)
  br label %193

106:                                              ; preds = %91
  %107 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %134

113:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %115, 8
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %119 = load i32, i32* %8, align 4
  %120 = mul i32 %119, 8
  %121 = load i32, i32* %15, align 4
  %122 = add i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = lshr i32 %123, 8
  %125 = load i32, i32* %10, align 4
  %126 = lshr i32 %125, 8
  %127 = load i32, i32* %11, align 4
  %128 = lshr i32 %127, 8
  %129 = call i32 @nvidia_write_clut(%struct.nvidia_par* %118, i32 %122, i32 %124, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %114

133:                                              ; preds = %114
  br label %181

134:                                              ; preds = %106
  %135 = load i32, i32* %8, align 4
  %136 = icmp ult i32 %135, 32
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %154, %137
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %143 = load i32, i32* %8, align 4
  %144 = mul i32 %143, 8
  %145 = load i32, i32* %15, align 4
  %146 = add i32 %144, %145
  %147 = load i32, i32* %9, align 4
  %148 = lshr i32 %147, 8
  %149 = load i32, i32* %10, align 4
  %150 = lshr i32 %149, 8
  %151 = load i32, i32* %11, align 4
  %152 = lshr i32 %151, 8
  %153 = call i32 @nvidia_write_clut(%struct.nvidia_par* %142, i32 %146, i32 %148, i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %138

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %157, %134
  %159 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %160 = load i32, i32* %8, align 4
  %161 = mul i32 %160, 4
  %162 = call i32 @nvidia_read_clut(%struct.nvidia_par* %159, i32 %161, i32* %16, i32* %17, i32* %18)
  store i32 0, i32* %15, align 4
  br label %163

163:                                              ; preds = %177, %158
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %168 = load i32, i32* %8, align 4
  %169 = mul i32 %168, 4
  %170 = load i32, i32* %15, align 4
  %171 = add i32 %169, %170
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %10, align 4
  %174 = lshr i32 %173, 8
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @nvidia_write_clut(%struct.nvidia_par* %167, i32 %171, i32 %172, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %166
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %163

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %133
  br label %193

182:                                              ; preds = %91
  %183 = load %struct.nvidia_par*, %struct.nvidia_par** %14, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = lshr i32 %185, 8
  %187 = load i32, i32* %10, align 4
  %188 = lshr i32 %187, 8
  %189 = load i32, i32* %11, align 4
  %190 = lshr i32 %189, 8
  %191 = call i32 @nvidia_write_clut(%struct.nvidia_par* %183, i32 %184, i32 %186, i32 %188, i32 %190)
  br label %193

192:                                              ; preds = %91
  br label %193

193:                                              ; preds = %192, %182, %181, %96
  %194 = call i32 (...) @NVTRACE_LEAVE()
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %193, %31
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @nvidia_write_clut(%struct.nvidia_par*, i32, i32, i32, i32) #1

declare dso_local i32 @nvidia_read_clut(%struct.nvidia_par*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
