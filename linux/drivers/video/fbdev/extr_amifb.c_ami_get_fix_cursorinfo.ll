; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_get_fix_cursorinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_get_fix_cursorinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_cursorinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.amifb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_cursorinfo*, %struct.amifb_par*)* @ami_get_fix_cursorinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ami_get_fix_cursorinfo(%struct.fb_fix_cursorinfo* %0, %struct.amifb_par* %1) #0 {
  %3 = alloca %struct.fb_fix_cursorinfo*, align 8
  %4 = alloca %struct.amifb_par*, align 8
  store %struct.fb_fix_cursorinfo* %0, %struct.fb_fix_cursorinfo** %3, align 8
  store %struct.amifb_par* %1, %struct.amifb_par** %4, align 8
  %5 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %6 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %11, i32 0, i32 5
  store i32 %8, i32* %12, align 4
  %13 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %14 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %19, i32 0, i32 3
  store i32 %16, i32* %20, align 4
  %21 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %21, i32 0, i32 0
  store i32 17, i32* %22, align 4
  %23 = load %struct.fb_fix_cursorinfo*, %struct.fb_fix_cursorinfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_fix_cursorinfo, %struct.fb_fix_cursorinfo* %23, i32 0, i32 1
  store i32 18, i32* %24, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
