; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_debug_shrink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_debug_shrink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.shrink_control*)*, i32 (%struct.TYPE_3__*, %struct.shrink_control*)* }
%struct.shrink_control = type { i32, i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @debug_shrink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_shrink_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ion_heap*, align 8
  %6 = alloca %struct.shrink_control, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ion_heap*
  store %struct.ion_heap* %9, %struct.ion_heap** %5, align 8
  %10 = load i32, i32* @GFP_HIGHUSER, align 4
  %11 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.ion_heap*, %struct.ion_heap** %5, align 8
  %18 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_3__*, %struct.shrink_control*)*, i32 (%struct.TYPE_3__*, %struct.shrink_control*)** %19, align 8
  %21 = load %struct.ion_heap*, %struct.ion_heap** %5, align 8
  %22 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %21, i32 0, i32 0
  %23 = call i32 %20(%struct.TYPE_3__* %22, %struct.shrink_control* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.ion_heap*, %struct.ion_heap** %5, align 8
  %28 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_3__*, %struct.shrink_control*)*, i32 (%struct.TYPE_3__*, %struct.shrink_control*)** %29, align 8
  %31 = load %struct.ion_heap*, %struct.ion_heap** %5, align 8
  %32 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %31, i32 0, i32 0
  %33 = call i32 %30(%struct.TYPE_3__* %32, %struct.shrink_control* %6)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
