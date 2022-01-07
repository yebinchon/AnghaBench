; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_controlfb.c_set_screen_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_controlfb.c_set_screen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info_control = type { %struct.fb_par_control }
%struct.fb_par_control = type { i32, i32, i32, i32 }

@start_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.fb_info_control*)* @set_screen_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_screen_start(i32 %0, i32 %1, %struct.fb_info_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info_control*, align 8
  %7 = alloca %struct.fb_par_control*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.fb_info_control* %2, %struct.fb_info_control** %6, align 8
  %8 = load %struct.fb_info_control*, %struct.fb_info_control** %6, align 8
  %9 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %8, i32 0, i32 0
  store %struct.fb_par_control* %9, %struct.fb_par_control** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %12 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %15 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fb_info_control*, %struct.fb_info_control** %6, align 8
  %17 = load i32, i32* @start_addr, align 4
  %18 = call i32 @CNTRL_REG(%struct.fb_info_control* %16, i32 %17)
  %19 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %20 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %23 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %27 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_par_control*, %struct.fb_par_control** %7, align 8
  %30 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  %33 = add nsw i32 %25, %32
  %34 = call i32 @out_le32(i32 %18, i32 %33)
  ret void
}

declare dso_local i32 @out_le32(i32, i32) #1

declare dso_local i32 @CNTRL_REG(%struct.fb_info_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
