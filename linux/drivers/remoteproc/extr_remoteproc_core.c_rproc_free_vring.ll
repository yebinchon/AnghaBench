; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_free_vring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_free_vring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_vring = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.rproc_vring*, %struct.rproc* }
%struct.rproc = type { i64, i32 }
%struct.fw_rsc_vdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rproc_free_vring(%struct.rproc_vring* %0) #0 {
  %2 = alloca %struct.rproc_vring*, align 8
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_rsc_vdev*, align 8
  store %struct.rproc_vring* %0, %struct.rproc_vring** %2, align 8
  %6 = load %struct.rproc_vring*, %struct.rproc_vring** %2, align 8
  %7 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.rproc*, %struct.rproc** %9, align 8
  store %struct.rproc* %10, %struct.rproc** %3, align 8
  %11 = load %struct.rproc_vring*, %struct.rproc_vring** %2, align 8
  %12 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.rproc_vring*, %struct.rproc_vring** %14, align 8
  %16 = load %struct.rproc_vring*, %struct.rproc_vring** %2, align 8
  %17 = ptrtoint %struct.rproc_vring* %15 to i64
  %18 = ptrtoint %struct.rproc_vring* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 16
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.rproc*, %struct.rproc** %3, align 8
  %23 = getelementptr inbounds %struct.rproc, %struct.rproc* %22, i32 0, i32 1
  %24 = load %struct.rproc_vring*, %struct.rproc_vring** %2, align 8
  %25 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @idr_remove(i32* %23, i32 %26)
  %28 = load %struct.rproc*, %struct.rproc** %3, align 8
  %29 = getelementptr inbounds %struct.rproc, %struct.rproc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.rproc_vring*, %struct.rproc_vring** %2, align 8
  %33 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %31, i64 %37
  %39 = bitcast i8* %38 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %39, %struct.fw_rsc_vdev** %5, align 8
  %40 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %5, align 8
  %41 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %5, align 8
  %48 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  ret void
}

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
