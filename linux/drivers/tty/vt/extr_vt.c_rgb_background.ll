; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_background.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.rgb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.rgb*)* @rgb_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_background(%struct.vc_data* %0, %struct.rgb* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.rgb*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.rgb* %1, %struct.rgb** %4, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 15
  %9 = load %struct.rgb*, %struct.rgb** %4, align 8
  %10 = getelementptr inbounds %struct.rgb, %struct.rgb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 128
  %13 = ashr i32 %12, 1
  %14 = or i32 %8, %13
  %15 = load %struct.rgb*, %struct.rgb** %4, align 8
  %16 = getelementptr inbounds %struct.rgb, %struct.rgb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = ashr i32 %18, 2
  %20 = or i32 %14, %19
  %21 = load %struct.rgb*, %struct.rgb** %4, align 8
  %22 = getelementptr inbounds %struct.rgb, %struct.rgb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = ashr i32 %24, 3
  %26 = or i32 %20, %25
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
