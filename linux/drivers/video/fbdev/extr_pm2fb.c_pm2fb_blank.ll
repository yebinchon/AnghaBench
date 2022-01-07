; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.pm2fb_par* }
%struct.pm2fb_par = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"blank_mode %d\0A\00", align 1
@PM2F_VIDEO_ENABLE = common dso_local global i32 0, align 4
@PM2F_VSYNC_MASK = common dso_local global i32 0, align 4
@PM2F_BLANK_LOW = common dso_local global i32 0, align 4
@PM2F_HSYNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @pm2fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.pm2fb_par*, %struct.pm2fb_par** %8, align 8
  store %struct.pm2fb_par* %9, %struct.pm2fb_par** %5, align 8
  %10 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %11 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %48 [
    i32 129, label %16
    i32 131, label %20
    i32 128, label %25
    i32 132, label %32
    i32 130, label %39
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @PM2F_VIDEO_ENABLE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load i32, i32* @PM2F_VIDEO_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load i32, i32* @PM2F_VSYNC_MASK, align 4
  %27 = load i32, i32* @PM2F_BLANK_LOW, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load i32, i32* @PM2F_HSYNC_MASK, align 4
  %34 = load i32, i32* @PM2F_BLANK_LOW, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* @PM2F_VSYNC_MASK, align 4
  %41 = load i32, i32* @PM2F_HSYNC_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PM2F_BLANK_LOW, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %2, %39, %32, %25, %20, %16
  %49 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @set_video(%struct.pm2fb_par* %49, i32 %50)
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @set_video(%struct.pm2fb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
