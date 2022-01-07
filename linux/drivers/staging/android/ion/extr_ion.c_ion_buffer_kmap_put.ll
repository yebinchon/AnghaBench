; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_kmap_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_kmap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.ion_buffer*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ion_buffer*)* @ion_buffer_kmap_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ion_buffer_kmap_put(%struct.ion_buffer* %0) #0 {
  %2 = alloca %struct.ion_buffer*, align 8
  store %struct.ion_buffer* %0, %struct.ion_buffer** %2, align 8
  %3 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*, %struct.ion_buffer*)*, i32 (%struct.TYPE_4__*, %struct.ion_buffer*)** %17, align 8
  %19 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %23 = call i32 %18(%struct.TYPE_4__* %21, %struct.ion_buffer* %22)
  %24 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
