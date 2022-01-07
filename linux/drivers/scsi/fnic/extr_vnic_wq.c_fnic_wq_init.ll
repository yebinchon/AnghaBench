; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq.c_fnic_wq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq.c_fnic_wq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_wq_init(%struct.vnic_wq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vnic_wq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %11 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %19 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = call i32 @writeq(i32 %17, i32* %21)
  %23 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %24 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %28 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = call i32 @iowrite32(i32 %26, i32* %30)
  %32 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %33 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = call i32 @iowrite32(i32 0, i32* %35)
  %37 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %38 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = call i32 @iowrite32(i32 0, i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %44 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = call i32 @iowrite32(i32 %42, i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %50 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i32 @iowrite32(i32 %48, i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %56 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @iowrite32(i32 %54, i32* %58)
  %60 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %61 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @iowrite32(i32 0, i32* %63)
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
