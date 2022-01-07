; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_crtc1_panpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_crtc1_panpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_EXTVGA_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @matroxfb_crtc1_panpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_crtc1_panpos(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @matroxfb_DAC_lock_irqsave(i64 %12)
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* @M_EXTVGA_INDEX, align 4
  %25 = call i32 @mga_inb(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @M_EXTVGA_INDEX, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mga_setr(i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @M_EXTVGA_INDEX, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mga_outb(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %20
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %37)
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @matroxfb_DAC_lock_irqsave(i64) #1

declare dso_local i32 @mga_inb(i32) #1

declare dso_local i32 @mga_setr(i32, i32, i32) #1

declare dso_local i32 @mga_outb(i32, i32) #1

declare dso_local i32 @matroxfb_DAC_unlock_irqrestore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
