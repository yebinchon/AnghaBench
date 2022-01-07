; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_update_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfb_info*, %struct.fb_var_screeninfo*)* @cyber2000fb_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_update_start(%struct.cfb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  store %struct.cfb_info* %0, %struct.cfb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 5
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 1048576
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  %33 = or i32 %32, 16
  %34 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %35 = call i32 @cyber2000_grphw(i32 16, i32 %33, %struct.cfb_info* %34)
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 8
  %38 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %39 = call i32 @cyber2000_crtcw(i32 12, i32 %37, %struct.cfb_info* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %42 = call i32 @cyber2000_crtcw(i32 13, i32 %40, %struct.cfb_info* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @cyber2000_grphw(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000_crtcw(i32, i32, %struct.cfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
