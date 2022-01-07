; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matrox_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matrox_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@M_STATUS = common dso_local global i32 0, align 4
@M_ICLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @matrox_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrox_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.matrox_fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.matrox_fb_info*
  store %struct.matrox_fb_info* %9, %struct.matrox_fb_info** %7, align 8
  %10 = load i32, i32* @M_STATUS, align 4
  %11 = call i32 @mga_inl(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @M_ICLEAR, align 4
  %17 = call i32 @mga_outl(i32 %16, i32 32)
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %19 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %25 = call i32 @matroxfb_crtc1_panpos(%struct.matrox_fb_info* %24)
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @wake_up_interruptible(i32* %29)
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %15, %2
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 512
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* @M_ICLEAR, align 4
  %37 = call i32 @mga_outl(i32 %36, i32 512)
  %38 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %39 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %45 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @wake_up_interruptible(i32* %47)
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %35, %31
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @IRQ_RETVAL(i32 %50)
  ret i32 %51
}

declare dso_local i32 @mga_inl(i32) #1

declare dso_local i32 @mga_outl(i32, i32) #1

declare dso_local i32 @matroxfb_crtc1_panpos(%struct.matrox_fb_info*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
