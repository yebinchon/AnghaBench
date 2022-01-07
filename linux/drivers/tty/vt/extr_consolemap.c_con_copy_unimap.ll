; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_copy_unimap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_copy_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.uni_pagedir** }
%struct.uni_pagedir = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_copy_unimap(%struct.vc_data* %0, %struct.vc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.vc_data* %1, %struct.vc_data** %5, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 0
  %9 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %8, align 8
  %10 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %11 = icmp ne %struct.uni_pagedir* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %17, align 8
  %19 = load %struct.uni_pagedir*, %struct.uni_pagedir** %18, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 0
  %22 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %21, align 8
  %23 = load %struct.uni_pagedir*, %struct.uni_pagedir** %22, align 8
  %24 = icmp eq %struct.uni_pagedir* %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %28 = call i32 @con_free_unimap(%struct.vc_data* %27)
  %29 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %30, align 8
  %32 = load %struct.uni_pagedir*, %struct.uni_pagedir** %31, align 8
  store %struct.uni_pagedir* %32, %struct.uni_pagedir** %6, align 8
  %33 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %34 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.uni_pagedir*, %struct.uni_pagedir** %6, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 0
  %40 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %39, align 8
  store %struct.uni_pagedir* %37, %struct.uni_pagedir** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %25, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @con_free_unimap(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
