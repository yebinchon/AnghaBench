; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i740fb_par* }
%struct.i740fb_par = type { i32 }

@HSYNC_ON = common dso_local global i32 0, align 4
@VSYNC_ON = common dso_local global i32 0, align 4
@VSYNC_OFF = common dso_local global i32 0, align 4
@HSYNC_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SRX = common dso_local global i64 0, align 8
@XRX = common dso_local global i32 0, align 4
@DPMS_SYNC_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @i740fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.i740fb_par*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.i740fb_par*, %struct.i740fb_par** %10, align 8
  store %struct.i740fb_par* %11, %struct.i740fb_par** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 131, label %13
    i32 128, label %17
    i32 132, label %21
    i32 130, label %25
  ]

13:                                               ; preds = %2, %2
  store i8 0, i8* %7, align 1
  %14 = load i32, i32* @HSYNC_ON, align 4
  %15 = load i32, i32* @VSYNC_ON, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  br label %32

17:                                               ; preds = %2
  store i8 32, i8* %7, align 1
  %18 = load i32, i32* @HSYNC_ON, align 4
  %19 = load i32, i32* @VSYNC_OFF, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  store i8 32, i8* %7, align 1
  %22 = load i32, i32* @HSYNC_OFF, align 4
  %23 = load i32, i32* @VSYNC_ON, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %2
  store i8 32, i8* %7, align 1
  %26 = load i32, i32* @HSYNC_OFF, align 4
  %27 = load i32, i32* @VSYNC_OFF, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %25, %21, %17, %13
  %33 = load %struct.i740fb_par*, %struct.i740fb_par** %6, align 8
  %34 = load i64, i64* @SRX, align 8
  %35 = call i32 @i740outb(%struct.i740fb_par* %33, i64 %34, i8 zeroext 1)
  %36 = load %struct.i740fb_par*, %struct.i740fb_par** %6, align 8
  %37 = load i64, i64* @SRX, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @i740inb(%struct.i740fb_par* %36, i64 %38)
  %40 = and i32 %39, -33
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  %45 = load %struct.i740fb_par*, %struct.i740fb_par** %6, align 8
  %46 = load i64, i64* @SRX, align 8
  %47 = call i32 @i740outb(%struct.i740fb_par* %45, i64 %46, i8 zeroext 1)
  %48 = load %struct.i740fb_par*, %struct.i740fb_par** %6, align 8
  %49 = load i64, i64* @SRX, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i8, i8* %7, align 1
  %52 = call i32 @i740outb(%struct.i740fb_par* %48, i64 %50, i8 zeroext %51)
  %53 = load %struct.i740fb_par*, %struct.i740fb_par** %6, align 8
  %54 = load i32, i32* @XRX, align 4
  %55 = load i32, i32* @DPMS_SYNC_SELECT, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @i740outreg(%struct.i740fb_par* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 131
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %32, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @i740outb(%struct.i740fb_par*, i64, i8 zeroext) #1

declare dso_local i32 @i740inb(%struct.i740fb_par*, i64) #1

declare dso_local i32 @i740outreg(%struct.i740fb_par*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
