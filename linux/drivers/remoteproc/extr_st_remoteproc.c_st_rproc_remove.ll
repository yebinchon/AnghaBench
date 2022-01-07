; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rproc = type { %struct.st_rproc* }
%struct.st_rproc = type { i32*, i32 }

@ST_RPROC_MAX_VRING = common dso_local global i32 0, align 4
@MBOX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rproc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.st_rproc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.rproc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.rproc* %7, %struct.rproc** %3, align 8
  %8 = load %struct.rproc*, %struct.rproc** %3, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 0
  %10 = load %struct.st_rproc*, %struct.st_rproc** %9, align 8
  store %struct.st_rproc* %10, %struct.st_rproc** %4, align 8
  %11 = load %struct.rproc*, %struct.rproc** %3, align 8
  %12 = call i32 @rproc_del(%struct.rproc* %11)
  %13 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %14 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ST_RPROC_MAX_VRING, align 4
  %20 = load i32, i32* @MBOX_MAX, align 4
  %21 = mul nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %25 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mbox_free_channel(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.rproc*, %struct.rproc** %3, align 8
  %37 = call i32 @rproc_free(%struct.rproc* %36)
  ret i32 0
}

declare dso_local %struct.rproc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rproc_del(%struct.rproc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
