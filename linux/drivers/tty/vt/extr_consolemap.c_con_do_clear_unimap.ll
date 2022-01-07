; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_do_clear_unimap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_do_clear_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32, i64 }
%struct.vc_data = type { %struct.uni_pagedir** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dflt = common dso_local global %struct.uni_pagedir* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @con_do_clear_unimap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_do_clear_unimap(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.uni_pagedir*, align 8
  %5 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %7, align 8
  %9 = load %struct.uni_pagedir*, %struct.uni_pagedir** %8, align 8
  store %struct.uni_pagedir* %9, %struct.uni_pagedir** %4, align 8
  %10 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %11 = icmp ne %struct.uni_pagedir* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %14 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.uni_pagedir* @kzalloc(i32 16, i32 %19)
  store %struct.uni_pagedir* %20, %struct.uni_pagedir** %5, align 8
  %21 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %22 = icmp ne %struct.uni_pagedir* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %25 = icmp ne %struct.uni_pagedir* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %28 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %18
  %35 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %36 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 0
  %40 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %39, align 8
  store %struct.uni_pagedir* %37, %struct.uni_pagedir** %40, align 8
  br label %55

41:                                               ; preds = %12
  %42 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %43 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %44 = icmp eq %struct.uni_pagedir* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store %struct.uni_pagedir* null, %struct.uni_pagedir** @dflt, align 8
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %48 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %52 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %54 = call i32 @con_release_unimap(%struct.uni_pagedir* %53)
  br label %55

55:                                               ; preds = %46, %34
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.uni_pagedir* @kzalloc(i32, i32) #1

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
