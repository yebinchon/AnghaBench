; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_screen_stretch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_screen_stretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i64 }

@CYBERBLADEXPAi1 = common dso_local global i64 0, align 8
@BiosReg = common dso_local global i32 0, align 4
@VertStretch = common dso_local global i32 0, align 4
@HorStretch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*)* @screen_stretch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_stretch(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  %3 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %4 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CYBERBLADEXPAi1, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %10 = load i32, i32* @BiosReg, align 4
  %11 = call i32 @write3CE(%struct.tridentfb_par* %9, i32 %10, i32 0)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %14 = load i32, i32* @BiosReg, align 4
  %15 = call i32 @write3CE(%struct.tridentfb_par* %13, i32 %14, i32 8)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %18 = load i32, i32* @VertStretch, align 4
  %19 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %20 = load i32, i32* @VertStretch, align 4
  %21 = call i32 @read3CE(%struct.tridentfb_par* %19, i32 %20)
  %22 = and i32 %21, 124
  %23 = or i32 %22, 1
  %24 = call i32 @write3CE(%struct.tridentfb_par* %17, i32 %18, i32 %23)
  %25 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %26 = load i32, i32* @HorStretch, align 4
  %27 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %28 = load i32, i32* @HorStretch, align 4
  %29 = call i32 @read3CE(%struct.tridentfb_par* %27, i32 %28)
  %30 = and i32 %29, 124
  %31 = or i32 %30, 1
  %32 = call i32 @write3CE(%struct.tridentfb_par* %25, i32 %26, i32 %31)
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
