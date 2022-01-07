; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_map_outb_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_map_outb_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENODEV = common dso_local global i32 0, align 4
@rio_mmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_map_outb_region(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rio_mport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %17 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)**
  %21 = load i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)*, i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %45

26:                                               ; preds = %6
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @rio_mmap_lock, i64 %27)
  %29 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %30 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)**
  %34 = load i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)*, i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)** %33, align 8
  %35 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 %34(%struct.rio_mport* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @rio_mmap_lock, i64 %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %26, %23
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
