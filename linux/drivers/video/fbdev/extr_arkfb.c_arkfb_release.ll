; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_arkfb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_arkfb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.arkfb_info* }
%struct.arkfb_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DAC_PSEUDO8_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @arkfb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arkfb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arkfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.arkfb_info*, %struct.arkfb_info** %8, align 8
  store %struct.arkfb_info* %9, %struct.arkfb_info** %6, align 8
  %10 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %11 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %14 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %19 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %25 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %30 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %29, i32 0, i32 3
  %31 = call i32 @restore_vga(i32* %30)
  %32 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %33 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %36 = call i32 @dac_set_mode(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %39 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.arkfb_info*, %struct.arkfb_info** %6, align 8
  %43 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @restore_vga(i32*) #1

declare dso_local i32 @dac_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
