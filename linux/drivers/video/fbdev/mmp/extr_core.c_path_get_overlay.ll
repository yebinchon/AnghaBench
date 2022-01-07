; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_path_get_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_path_get_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_overlay = type { i32 }
%struct.mmp_path = type { i32, %struct.mmp_overlay* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmp_overlay* (%struct.mmp_path*, i32)* @path_get_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmp_overlay* @path_get_overlay(%struct.mmp_path* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_overlay*, align 8
  %4 = alloca %struct.mmp_path*, align 8
  %5 = alloca i32, align 4
  store %struct.mmp_path* %0, %struct.mmp_path** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %7 = icmp ne %struct.mmp_path* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %11 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %16 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %15, i32 0, i32 1
  %17 = load %struct.mmp_overlay*, %struct.mmp_overlay** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %17, i64 %19
  store %struct.mmp_overlay* %20, %struct.mmp_overlay** %3, align 8
  br label %22

21:                                               ; preds = %8, %2
  store %struct.mmp_overlay* null, %struct.mmp_overlay** %3, align 8
  br label %22

22:                                               ; preds = %21, %14
  %23 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  ret %struct.mmp_overlay* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
