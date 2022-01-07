; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.xenfb_info* }
%struct.xenfb_info = type { i32 }
%struct.fb_image = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @xenfb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.xenfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.xenfb_info*, %struct.xenfb_info** %7, align 8
  store %struct.xenfb_info* %8, %struct.xenfb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %11 = call i32 @sys_imageblit(%struct.fb_info* %9, %struct.fb_image* %10)
  %12 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %13 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %14 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %17 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %20 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %23 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xenfb_refresh(%struct.xenfb_info* %12, i32 %15, i32 %18, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @sys_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @xenfb_refresh(%struct.xenfb_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
