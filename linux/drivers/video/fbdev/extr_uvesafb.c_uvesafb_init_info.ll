; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_init_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.fb_info = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_10__, %struct.uvesafb_par*, i32* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.uvesafb_par = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vbe_mode_ib = type { i32, i32 }

@uvesafb_fix = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@blank = common dso_local global i32 0, align 4
@vram_total = common dso_local global i32 0, align 4
@vram_remap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"scrolling: %s using protected mode interface, yres_virtual=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ywrap\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ypan\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"scrolling: redraw\0A\00", align 1
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.vbe_mode_ib*)* @uvesafb_init_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_init_info(%struct.fb_info* %0, %struct.vbe_mode_ib* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vbe_mode_ib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvesafb_par*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vbe_mode_ib* %1, %struct.vbe_mode_ib** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 4
  %13 = load %struct.uvesafb_par*, %struct.uvesafb_par** %12, align 8
  store %struct.uvesafb_par* %13, %struct.uvesafb_par** %8, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 4
  %16 = load %struct.uvesafb_par*, %struct.uvesafb_par** %15, align 8
  %17 = bitcast %struct.uvesafb_par* %16 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 24
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = bitcast %struct.TYPE_10__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 bitcast (%struct.TYPE_10__* @uvesafb_fix to i8*), i64 16, i1 false)
  %24 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %25 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %34 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @blank, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %2
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %80, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %53 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %58 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %66 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %64, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %56
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %6, align 4
  %85 = mul i32 %84, 2
  store i32 %85, i32* %6, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %4, align 8
  %91 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %89, %92
  store i32 %93, i32* %5, align 4
  %94 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %95 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 65536
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @vram_total, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %83
  %102 = load i32, i32* @vram_total, align 4
  %103 = mul nsw i32 %102, 1024
  %104 = mul nsw i32 %103, 1024
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %83
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, i32* @vram_remap, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* @vram_remap, align 4
  %116 = mul nsw i32 %115, 1024
  %117 = mul nsw i32 %116, 1024
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %4, align 8
  %136 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %4, align 8
  %146 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = udiv i32 %144, %147
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %153 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %130
  %157 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ugt i32 %160, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %156
  %167 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %168 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 1
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %173 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %172, i32 %176)
  br label %189

178:                                              ; preds = %156, %130
  %179 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %180 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %188 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %178, %166
  %190 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %191 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %192 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  br label %198

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ]
  %200 = or i32 %190, %199
  %201 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %202 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %204 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %198
  %208 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %209 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %208, i32 0, i32 1
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store i32* null, i32** %211, align 8
  br label %212

212:                                              ; preds = %207, %198
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
