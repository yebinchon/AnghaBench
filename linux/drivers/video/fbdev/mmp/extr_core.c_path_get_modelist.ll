; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_path_get_modelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_path_get_modelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.mmp_mode**)* }
%struct.mmp_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_path*, %struct.mmp_mode**)* @path_get_modelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_get_modelist(%struct.mmp_path* %0, %struct.mmp_mode** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmp_path*, align 8
  %5 = alloca %struct.mmp_mode**, align 8
  store %struct.mmp_path* %0, %struct.mmp_path** %4, align 8
  store %struct.mmp_mode** %1, %struct.mmp_mode*** %5, align 8
  %6 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %7 = icmp ne %struct.mmp_path* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.mmp_mode**, %struct.mmp_mode*** %5, align 8
  %10 = icmp ne %struct.mmp_mode** %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_2__*, %struct.mmp_mode**)*, i32 (%struct.TYPE_2__*, %struct.mmp_mode**)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_2__*, %struct.mmp_mode**)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %29 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_2__*, %struct.mmp_mode**)*, i32 (%struct.TYPE_2__*, %struct.mmp_mode**)** %31, align 8
  %33 = load %struct.mmp_path*, %struct.mmp_path** %4, align 8
  %34 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.mmp_mode**, %struct.mmp_mode*** %5, align 8
  %37 = call i32 %32(%struct.TYPE_2__* %35, %struct.mmp_mode** %36)
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %20, %12
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
