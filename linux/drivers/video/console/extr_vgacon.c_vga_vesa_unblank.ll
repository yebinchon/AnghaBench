; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vga_vesa_unblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vga_vesa_unblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { i32 }

@vga_lock = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@vga_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i32 0, align 4
@VGA_SEQ_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vgastate*)* @vga_vesa_unblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_vesa_unblank(%struct.vgastate* %0) #0 {
  %2 = alloca %struct.vgastate*, align 8
  store %struct.vgastate* %0, %struct.vgastate** %2, align 8
  %3 = call i32 @raw_spin_lock_irq(i32* @vga_lock)
  %4 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %5 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VGA_MIS_W, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 11), align 4
  %9 = call i32 @vga_w(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @vga_video_port_reg, align 4
  %11 = call i32 @outb_p(i32 0, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 0), align 4
  %13 = load i32, i32* @vga_video_port_val, align 4
  %14 = call i32 @outb_p(i32 %12, i32 %13)
  %15 = load i32, i32* @vga_video_port_reg, align 4
  %16 = call i32 @outb_p(i32 1, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 1), align 4
  %18 = load i32, i32* @vga_video_port_val, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  %20 = load i32, i32* @vga_video_port_reg, align 4
  %21 = call i32 @outb_p(i32 4, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 2), align 4
  %23 = load i32, i32* @vga_video_port_val, align 4
  %24 = call i32 @outb_p(i32 %22, i32 %23)
  %25 = load i32, i32* @vga_video_port_reg, align 4
  %26 = call i32 @outb_p(i32 5, i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 3), align 4
  %28 = load i32, i32* @vga_video_port_val, align 4
  %29 = call i32 @outb_p(i32 %27, i32 %28)
  %30 = load i32, i32* @vga_video_port_reg, align 4
  %31 = call i32 @outb_p(i32 7, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 4), align 4
  %33 = load i32, i32* @vga_video_port_val, align 4
  %34 = call i32 @outb_p(i32 %32, i32 %33)
  %35 = load i32, i32* @vga_video_port_reg, align 4
  %36 = call i32 @outb_p(i32 16, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 5), align 4
  %38 = load i32, i32* @vga_video_port_val, align 4
  %39 = call i32 @outb_p(i32 %37, i32 %38)
  %40 = load i32, i32* @vga_video_port_reg, align 4
  %41 = call i32 @outb_p(i32 17, i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 6), align 4
  %43 = load i32, i32* @vga_video_port_val, align 4
  %44 = call i32 @outb_p(i32 %42, i32 %43)
  %45 = load i32, i32* @vga_video_port_reg, align 4
  %46 = call i32 @outb_p(i32 23, i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 7), align 4
  %48 = load i32, i32* @vga_video_port_val, align 4
  %49 = call i32 @outb_p(i32 %47, i32 %48)
  %50 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %51 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 10), align 4
  %55 = call i32 @vga_wseq(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %57 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VGA_SEQ_I, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 9), align 4
  %61 = call i32 @vga_w(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 8), align 4
  %63 = load i32, i32* @vga_video_port_reg, align 4
  %64 = call i32 @outb_p(i32 %62, i32 %63)
  %65 = call i32 @raw_spin_unlock_irq(i32* @vga_lock)
  ret void
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
