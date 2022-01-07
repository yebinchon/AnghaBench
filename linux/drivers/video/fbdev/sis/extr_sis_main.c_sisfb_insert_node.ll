; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SIS_OH = type { %struct.SIS_OH*, %struct.SIS_OH* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SIS_OH*, %struct.SIS_OH*)* @sisfb_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_insert_node(%struct.SIS_OH* %0, %struct.SIS_OH* %1) #0 {
  %3 = alloca %struct.SIS_OH*, align 8
  %4 = alloca %struct.SIS_OH*, align 8
  %5 = alloca %struct.SIS_OH*, align 8
  store %struct.SIS_OH* %0, %struct.SIS_OH** %3, align 8
  store %struct.SIS_OH* %1, %struct.SIS_OH** %4, align 8
  %6 = load %struct.SIS_OH*, %struct.SIS_OH** %3, align 8
  %7 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %6, i32 0, i32 0
  %8 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  store %struct.SIS_OH* %8, %struct.SIS_OH** %5, align 8
  %9 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %10 = load %struct.SIS_OH*, %struct.SIS_OH** %3, align 8
  %11 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %10, i32 0, i32 0
  store %struct.SIS_OH* %9, %struct.SIS_OH** %11, align 8
  %12 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %13 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %14 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %13, i32 0, i32 1
  store %struct.SIS_OH* %12, %struct.SIS_OH** %14, align 8
  %15 = load %struct.SIS_OH*, %struct.SIS_OH** %3, align 8
  %16 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %17 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %16, i32 0, i32 1
  store %struct.SIS_OH* %15, %struct.SIS_OH** %17, align 8
  %18 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %19 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %20 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %19, i32 0, i32 0
  store %struct.SIS_OH* %18, %struct.SIS_OH** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
