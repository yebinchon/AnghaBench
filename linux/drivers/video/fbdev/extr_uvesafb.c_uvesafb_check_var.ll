; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_8__, %struct.uvesafb_par* }
%struct.TYPE_8__ = type { i32 }
%struct.uvesafb_par = type { i64, %struct.vbe_mode_ib* }
%struct.vbe_mode_ib = type { i32, i32 }

@UVESAFB_EXACT_RES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @uvesafb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.uvesafb_par*, align 8
  %7 = alloca %struct.vbe_mode_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.uvesafb_par*, %struct.uvesafb_par** %11, align 8
  store %struct.uvesafb_par* %12, %struct.uvesafb_par** %6, align 8
  store %struct.vbe_mode_ib* null, %struct.vbe_mode_ib** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = call i32 @abs(i32 %34) #3
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %41

37:                                               ; preds = %29, %2
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @UVESAFB_EXACT_RES, align 4
  %51 = call i32 @uvesafb_vbe_find_mode(%struct.uvesafb_par* %42, i32 %45, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %169

57:                                               ; preds = %41
  %58 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %59 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %58, i32 0, i32 1
  %60 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %60, i64 %62
  store %struct.vbe_mode_ib* %63, %struct.vbe_mode_ib** %7, align 8
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %66 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %67 = call i32 @uvesafb_setup_var(%struct.fb_var_screeninfo* %64, %struct.fb_info* %65, %struct.vbe_mode_ib* %66)
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %72 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %57
  %81 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %169

89:                                               ; preds = %80, %57
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %98 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %97, i32 0, i32 1
  %99 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %99, i64 %101
  %103 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 256
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %96, %89
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %123 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %122, i32 0, i32 1
  %124 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %124, i64 %126
  %128 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 512
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %132, %121, %114
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %142 = call i32 @uvesafb_check_limits(%struct.fb_var_screeninfo* %140, %struct.fb_info* %141)
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %149 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %139
  %153 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %158 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %156, %159
  br label %165

161:                                              ; preds = %139
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  br label %165

165:                                              ; preds = %161, %152
  %166 = phi i32 [ %160, %152 ], [ %164, %161 ]
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %86, %54
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @uvesafb_vbe_find_mode(%struct.uvesafb_par*, i32, i32, i32, i32) #2

declare dso_local i32 @uvesafb_setup_var(%struct.fb_var_screeninfo*, %struct.fb_info*, %struct.vbe_mode_ib*) #2

declare dso_local i32 @uvesafb_check_limits(%struct.fb_var_screeninfo*, %struct.fb_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
