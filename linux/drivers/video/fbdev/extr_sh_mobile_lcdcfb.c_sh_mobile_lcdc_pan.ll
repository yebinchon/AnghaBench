; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_pan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i64, i64, i64, i64, i64, %struct.sh_mobile_lcdc_priv*, %struct.TYPE_2__* }
%struct.sh_mobile_lcdc_priv = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@LDSA1R = common dso_local global i32 0, align 4
@LDSA2R = common dso_local global i32 0, align 4
@_LDRCNTR = common dso_local global i32 0, align 4
@LDRCNTR_SRS = common dso_local global i64 0, align 8
@LDRCNTR_MRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sh_mobile_lcdc_pan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_pan(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %7 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %16, align 8
  store %struct.sh_mobile_lcdc_chan* %17, %struct.sh_mobile_lcdc_chan** %6, align 8
  %18 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 6
  %20 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %19, align 8
  store %struct.sh_mobile_lcdc_priv* %20, %struct.sh_mobile_lcdc_priv** %7, align 8
  %21 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %22 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %21, i32 0, i32 7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %2
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %39, i32 0, i32 7
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %38, %43
  %45 = sdiv i32 %44, 8
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %96

47:                                               ; preds = %2
  %48 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %48, i32 0, i32 7
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 24
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %57 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %56, i32 0, i32 7
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 16
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 1
  store i32 %63, i32* %14, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %68 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %11, align 8
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = udiv i32 %78, %79
  %81 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %82 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul i32 %80, %83
  %85 = mul i32 %84, 2
  %86 = load i32, i32* %13, align 4
  %87 = udiv i32 %85, %86
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 2
  %92 = load i32, i32* %13, align 4
  %93 = udiv i32 %91, %92
  %94 = add i32 %87, %93
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %47, %27
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %99 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %175

103:                                              ; preds = %96
  %104 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %105 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %106, %107
  store i64 %108, i64* %9, align 8
  %109 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %110 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %113 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %117 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 %115, %118
  %120 = add i64 %111, %119
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %125 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %128 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %131 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %133 = load i32, i32* @LDSA1R, align 4
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan* %132, i32 %133, i64 %134)
  %136 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %137 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %136, i32 0, i32 7
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %103
  %143 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %144 = load i32, i32* @LDSA2R, align 4
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan* %143, i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %142, %103
  %148 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %149 = load i32, i32* @_LDRCNTR, align 4
  %150 = call i64 @lcdc_read(%struct.sh_mobile_lcdc_priv* %148, i32 %149)
  store i64 %150, i64* %8, align 8
  %151 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %152 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %156 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %155, i32 0, i32 6
  %157 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %156, align 8
  %158 = load i32, i32* @_LDRCNTR, align 4
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* @LDRCNTR_SRS, align 8
  %161 = xor i64 %159, %160
  %162 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %157, i32 %158, i64 %161)
  br label %172

163:                                              ; preds = %147
  %164 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %165 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %164, i32 0, i32 6
  %166 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %165, align 8
  %167 = load i32, i32* @_LDRCNTR, align 4
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @LDRCNTR_MRS, align 8
  %170 = xor i64 %168, %169
  %171 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %166, i32 %167, i64 %170)
  br label %172

172:                                              ; preds = %163, %154
  %173 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %174 = call i32 @sh_mobile_lcdc_deferred_io_touch(%struct.fb_info* %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %172, %102
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan*, i32, i64) #1

declare dso_local i64 @lcdc_read(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i64) #1

declare dso_local i32 @sh_mobile_lcdc_deferred_io_touch(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
