; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_screen_center.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_screen_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@VertStretch = common dso_local global i32 0, align 4
@HorStretch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*)* @screen_center to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_center(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  %3 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %4 = load i32, i32* @VertStretch, align 4
  %5 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %6 = load i32, i32* @VertStretch, align 4
  %7 = call i32 @read3CE(%struct.tridentfb_par* %5, i32 %6)
  %8 = and i32 %7, 124
  %9 = or i32 %8, 128
  %10 = call i32 @write3CE(%struct.tridentfb_par* %3, i32 %4, i32 %9)
  %11 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %12 = load i32, i32* @HorStretch, align 4
  %13 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %14 = load i32, i32* @HorStretch, align 4
  %15 = call i32 @read3CE(%struct.tridentfb_par* %13, i32 %14)
  %16 = and i32 %15, 124
  %17 = or i32 %16, 128
  %18 = call i32 @write3CE(%struct.tridentfb_par* %11, i32 %12, i32 %17)
  ret void
}

declare dso_local i32 @write3CE(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @read3CE(%struct.tridentfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
