; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_create_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_message = type { i32 }
%struct.dlm_mhandle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**)* @create_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_message(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2, i32 %3, %struct.dlm_message** %4, %struct.dlm_mhandle** %5) #0 {
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca %struct.dlm_lkb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_message**, align 8
  %12 = alloca %struct.dlm_mhandle**, align 8
  %13 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %7, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dlm_message** %4, %struct.dlm_message*** %11, align 8
  store %struct.dlm_mhandle** %5, %struct.dlm_mhandle*** %12, align 8
  store i32 4, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  switch i32 %14, label %38 [
    i32 130, label %15
    i32 132, label %15
    i32 131, label %15
    i32 135, label %21
    i32 128, label %21
    i32 129, label %21
    i32 134, label %21
    i32 133, label %21
  ]

15:                                               ; preds = %6, %6, %6
  %16 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %17 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %13, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %13, align 4
  br label %38

21:                                               ; preds = %6, %6, %6, %6, %6
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %23 = icmp ne %struct.dlm_lkb* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %31 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %29, %24, %21
  br label %38

38:                                               ; preds = %6, %37, %15
  %39 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %40 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.dlm_message**, %struct.dlm_message*** %11, align 8
  %46 = load %struct.dlm_mhandle**, %struct.dlm_mhandle*** %12, align 8
  %47 = call i32 @_create_message(%struct.TYPE_2__* %41, i32 %42, i32 %43, i32 %44, %struct.dlm_message** %45, %struct.dlm_mhandle** %46)
  ret i32 %47
}

declare dso_local i32 @_create_message(%struct.TYPE_2__*, i32, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
