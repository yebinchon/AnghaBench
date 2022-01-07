; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_pan_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_pan_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fb_info = type { %struct.amifb_par* }
%struct.amifb_par = type { i32, i32, i32 }

@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@do_vmode_pan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*)* @ami_pan_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_pan_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.amifb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.amifb_par*, %struct.amifb_par** %7, align 8
  store %struct.amifb_par* %8, %struct.amifb_par** %5, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.amifb_par*, %struct.amifb_par** %5, align 8
  %13 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.amifb_par*, %struct.amifb_par** %5, align 8
  %18 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %27 = load %struct.amifb_par*, %struct.amifb_par** %5, align 8
  %28 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.amifb_par*, %struct.amifb_par** %5, align 8
  %35 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  store i32 0, i32* @do_vmode_pan, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %40 = call i32 @ami_update_par(%struct.fb_info* %39)
  store i32 1, i32* @do_vmode_pan, align 4
  ret void
}

declare dso_local i32 @ami_update_par(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
