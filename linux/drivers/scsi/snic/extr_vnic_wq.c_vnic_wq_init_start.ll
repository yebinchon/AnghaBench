; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_vnic_wq_init_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_vnic_wq_init_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32**, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_wq_init_start(%struct.vnic_wq* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %16 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %20 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %28 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 7
  %31 = call i32 @writeq(i32 %26, i32* %30)
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %34 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  %37 = call i32 @iowrite32(i32 %32, i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %40 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = call i32 @iowrite32(i32 %38, i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %46 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = call i32 @iowrite32(i32 %44, i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %52 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = call i32 @iowrite32(i32 %50, i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %58 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = call i32 @iowrite32(i32 %56, i32* %60)
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %64 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @iowrite32(i32 %62, i32* %66)
  %68 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %69 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @iowrite32(i32 0, i32* %71)
  %73 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %74 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32 %77)
  %79 = udiv i32 %76, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %75, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32 %84)
  %86 = urem i32 %83, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %90 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %92 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %91, i32 0, i32 2
  store i32* %88, i32** %92, align 8
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @VNIC_WQ_BUF_BLK_ENTRIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
