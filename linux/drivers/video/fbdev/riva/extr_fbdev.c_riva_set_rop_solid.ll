; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_set_rop_solid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_set_rop_solid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@Rop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.riva_par*, i32)* @riva_set_rop_solid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_set_rop_solid(%struct.riva_par* %0, i32 %1) #0 {
  %3 = alloca %struct.riva_par*, align 8
  %4 = alloca i32, align 4
  store %struct.riva_par* %0, %struct.riva_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %6 = call i32 @riva_set_pattern(%struct.riva_par* %5, i32 -1, i32 -1, i32 -1, i32 -1)
  %7 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %8 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %7, i32 0, i32 0
  %9 = load i32, i32* @Rop, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @RIVA_FIFO_FREE(%struct.TYPE_3__* %11, i32 %9, i32 1)
  %13 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %14 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @NV_WR32(i32* %17, i32 0, i32 %18)
  ret void
}

declare dso_local i32 @riva_set_pattern(%struct.riva_par*, i32, i32, i32, i32) #1

declare dso_local i32 @RIVA_FIFO_FREE(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @NV_WR32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
