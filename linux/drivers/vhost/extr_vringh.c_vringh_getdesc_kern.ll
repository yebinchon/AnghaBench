; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_getdesc_kern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_getdesc_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vringh_kiov = type { i32 }

@getu16_kern = common dso_local global i32 0, align 4
@no_range_check = common dso_local global i32 0, align 4
@copydesc_kern = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vringh_getdesc_kern(%struct.vringh* %0, %struct.vringh_kiov* %1, %struct.vringh_kiov* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vringh*, align 8
  %8 = alloca %struct.vringh_kiov*, align 8
  %9 = alloca %struct.vringh_kiov*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vringh* %0, %struct.vringh** %7, align 8
  store %struct.vringh_kiov* %1, %struct.vringh_kiov** %8, align 8
  store %struct.vringh_kiov* %2, %struct.vringh_kiov** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.vringh*, %struct.vringh** %7, align 8
  %14 = load i32, i32* @getu16_kern, align 4
  %15 = load %struct.vringh*, %struct.vringh** %7, align 8
  %16 = getelementptr inbounds %struct.vringh, %struct.vringh* %15, i32 0, i32 1
  %17 = call i32 @__vringh_get_head(%struct.vringh* %13, i32 %14, i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.vringh*, %struct.vringh** %7, align 8
  %25 = getelementptr inbounds %struct.vringh, %struct.vringh* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.vringh*, %struct.vringh** %7, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vringh_kiov*, %struct.vringh_kiov** %8, align 8
  %37 = load %struct.vringh_kiov*, %struct.vringh_kiov** %9, align 8
  %38 = load i32, i32* @no_range_check, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @copydesc_kern, align 4
  %41 = call i32 @__vringh_iov(%struct.vringh* %33, i32 %35, %struct.vringh_kiov* %36, %struct.vringh_kiov* %37, i32 %38, i32* null, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44, %29, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @__vringh_get_head(%struct.vringh*, i32, i32*) #1

declare dso_local i32 @__vringh_iov(%struct.vringh*, i32, %struct.vringh_kiov*, %struct.vringh_kiov*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
