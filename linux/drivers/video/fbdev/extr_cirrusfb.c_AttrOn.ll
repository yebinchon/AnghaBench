; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_AttrOn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_AttrOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cirrusfb_info = type { i32 }

@CL_CRT24 = common dso_local global i32 0, align 4
@VGA_ATT_IW = common dso_local global i32 0, align 4
@VGA_ATT_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cirrusfb_info*)* @AttrOn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AttrOn(%struct.cirrusfb_info* %0) #0 {
  %2 = alloca %struct.cirrusfb_info*, align 8
  store %struct.cirrusfb_info* %0, %struct.cirrusfb_info** %2, align 8
  %3 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %4 = icmp ne %struct.cirrusfb_info* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CL_CRT24, align 4
  %11 = call i32 @vga_rcrt(i32 %9, i32 %10)
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VGA_ATT_IW, align 4
  %19 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VGA_ATT_R, align 4
  %23 = call i32 @vga_r(i32 %21, i32 %22)
  %24 = call i32 @vga_w(i32 %17, i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %27 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VGA_ATT_IW, align 4
  %30 = call i32 @vga_w(i32 %28, i32 %29, i32 51)
  %31 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %2, align 8
  %32 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VGA_ATT_IW, align 4
  %35 = call i32 @vga_w(i32 %33, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vga_rcrt(i32, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @vga_r(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
