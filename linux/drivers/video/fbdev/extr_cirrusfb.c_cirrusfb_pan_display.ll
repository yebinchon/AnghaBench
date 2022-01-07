; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.cirrusfb_info* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cirrusfb_info = type { i64, i32 }

@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VGA_CRTC_START_LO = common dso_local global i32 0, align 4
@VGA_CRTC_START_HI = common dso_local global i32 0, align 4
@CL_CRT1B = common dso_local global i32 0, align 4
@cirrusfb_board_info = common dso_local global %struct.TYPE_6__* null, align 8
@CL_CRT1D = common dso_local global i32 0, align 4
@CL_AR33 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @cirrusfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.cirrusfb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %12, align 8
  store %struct.cirrusfb_info* %13, %struct.cirrusfb_info** %10, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %188

23:                                               ; preds = %2
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %26, %30
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %23
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %52, 8
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %9, align 1
  br label %62

55:                                               ; preds = %23
  %56 = load i64, i64* %7, align 8
  %57 = udiv i64 %56, 4
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = srem i32 %58, 4
  %60 = mul nsw i32 %59, 2
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %64 = call i64 @is_laguna(%struct.cirrusfb_info* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %68 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cirrusfb_WaitBLT(i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %73 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VGA_CRTC_START_LO, align 4
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, 255
  %78 = trunc i64 %77 to i8
  %79 = call i32 @vga_wcrt(i32 %74, i32 %75, i8 zeroext %78)
  %80 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %81 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VGA_CRTC_START_HI, align 4
  %84 = load i64, i64* %7, align 8
  %85 = lshr i64 %84, 8
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i8
  %88 = call i32 @vga_wcrt(i32 %82, i32 %83, i8 zeroext %87)
  %89 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %90 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CL_CRT1B, align 4
  %93 = call i32 @vga_rcrt(i32 %91, i32 %92)
  %94 = and i32 %93, 242
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %8, align 1
  %96 = load i64, i64* %7, align 8
  %97 = and i64 %96, 65536
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %71
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, 1
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  br label %104

104:                                              ; preds = %99, %71
  %105 = load i64, i64* %7, align 8
  %106 = and i64 %105, 131072
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, 4
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %8, align 1
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, 262144
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, 8
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %8, align 1
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %124 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CL_CRT1B, align 4
  %127 = load i8, i8* %8, align 1
  %128 = call i32 @vga_wcrt(i32 %125, i32 %126, i8 zeroext %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cirrusfb_board_info, align 8
  %130 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %131 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %122
  %138 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %139 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CL_CRT1D, align 4
  %142 = call i32 @vga_rcrt(i32 %140, i32 %141)
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %8, align 1
  %144 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %145 = call i64 @is_laguna(%struct.cirrusfb_info* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i8, i8* %8, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, -25
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %7, align 8
  %153 = lshr i64 %152, 16
  %154 = and i64 %153, 24
  %155 = or i64 %151, %154
  %156 = trunc i64 %155 to i8
  store i8 %156, i8* %8, align 1
  br label %167

157:                                              ; preds = %137
  %158 = load i8, i8* %8, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, -129
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %7, align 8
  %163 = lshr i64 %162, 12
  %164 = and i64 %163, 128
  %165 = or i64 %161, %164
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %8, align 1
  br label %167

167:                                              ; preds = %157, %147
  %168 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %169 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CL_CRT1D, align 4
  %172 = load i8, i8* %8, align 1
  %173 = call i32 @vga_wcrt(i32 %170, i32 %171, i8 zeroext %172)
  br label %174

174:                                              ; preds = %167, %122
  %175 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  %182 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @CL_AR33, align 4
  %185 = load i8, i8* %9, align 1
  %186 = call i32 @vga_wattr(i32 %183, i32 %184, i8 zeroext %185)
  br label %187

187:                                              ; preds = %180, %174
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %20
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @is_laguna(%struct.cirrusfb_info*) #1

declare dso_local i32 @cirrusfb_WaitBLT(i32) #1

declare dso_local i32 @vga_wcrt(i32, i32, i8 zeroext) #1

declare dso_local i32 @vga_rcrt(i32, i32) #1

declare dso_local i32 @vga_wattr(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
