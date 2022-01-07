; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rproc = type { %struct.st_rproc* }
%struct.st_rproc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rproc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.st_rproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.rproc* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.rproc* %9, %struct.rproc** %4, align 8
  %10 = load %struct.rproc*, %struct.rproc** %4, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 0
  %12 = load %struct.st_rproc*, %struct.st_rproc** %11, align 8
  store %struct.st_rproc* %12, %struct.st_rproc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.st_rproc*, %struct.st_rproc** %5, align 8
  %14 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.st_rproc*, %struct.st_rproc** %5, align 8
  %21 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @reset_control_status(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.st_rproc*, %struct.st_rproc** %5, align 8
  %26 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.st_rproc*, %struct.st_rproc** %5, align 8
  %33 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @reset_control_status(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rproc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @reset_control_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
