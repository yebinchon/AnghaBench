; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_chan_to_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_chan_to_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_bitfield = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_bitfield*)* @chan_to_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_to_field(i32 %0, %struct.fb_bitfield* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_bitfield*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_bitfield* %1, %struct.fb_bitfield** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65535
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fb_bitfield*, %struct.fb_bitfield** %4, align 8
  %8 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 16, %9
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.fb_bitfield*, %struct.fb_bitfield** %4, align 8
  %15 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
