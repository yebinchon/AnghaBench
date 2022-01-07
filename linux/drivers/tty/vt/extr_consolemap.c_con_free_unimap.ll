; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_free_unimap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_free_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.uni_pagedir** }
%struct.uni_pagedir = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_free_unimap(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 0
  %6 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %5, align 8
  %7 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  store %struct.uni_pagedir* %7, %struct.uni_pagedir** %3, align 8
  %8 = load %struct.uni_pagedir*, %struct.uni_pagedir** %3, align 8
  %9 = icmp ne %struct.uni_pagedir* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %13, align 8
  store %struct.uni_pagedir* null, %struct.uni_pagedir** %14, align 8
  %15 = load %struct.uni_pagedir*, %struct.uni_pagedir** %3, align 8
  %16 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.uni_pagedir*, %struct.uni_pagedir** %3, align 8
  %23 = call i32 @con_release_unimap(%struct.uni_pagedir* %22)
  %24 = load %struct.uni_pagedir*, %struct.uni_pagedir** %3, align 8
  %25 = call i32 @kfree(%struct.uni_pagedir* %24)
  br label %26

26:                                               ; preds = %21, %20, %10
  ret void
}

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

declare dso_local i32 @kfree(%struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
