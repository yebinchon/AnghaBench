; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }
%struct.matrox_fb_info = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @matroxfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroxfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = call %struct.matrox_fb_info* @info2minfo(%struct.fb_info* %11)
  store %struct.matrox_fb_info* %12, %struct.matrox_fb_info** %10, align 8
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %10, align 8
  %14 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %10, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = call i32 @matroxfb_decode_var(%struct.matrox_fb_info* %21, %struct.fb_var_screeninfo* %22, i32* %7, i32* %8, i32* %9)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.matrox_fb_info* @info2minfo(%struct.fb_info*) #1

declare dso_local i32 @matroxfb_decode_var(%struct.matrox_fb_info*, %struct.fb_var_screeninfo*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
