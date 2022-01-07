; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daisydev = type { i32, i32, %struct.daisydev*, %struct.parport* }
%struct.parport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@topology_lock = common dso_local global i32 0, align 4
@topology = common dso_local global %struct.daisydev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.parport*, i32)* @add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dev(i32 %0, %struct.parport* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.daisydev*, align 8
  %8 = alloca %struct.daisydev**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.parport* %1, %struct.parport** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.daisydev* @kmalloc(i32 24, i32 %9)
  store %struct.daisydev* %10, %struct.daisydev** %7, align 8
  %11 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %12 = icmp ne %struct.daisydev* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = load %struct.parport*, %struct.parport** %5, align 8
  %15 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %16 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %15, i32 0, i32 3
  store %struct.parport* %14, %struct.parport** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %19 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %22 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = call i32 @spin_lock(i32* @topology_lock)
  store %struct.daisydev** @topology, %struct.daisydev*** %8, align 8
  br label %24

24:                                               ; preds = %38, %13
  %25 = load %struct.daisydev**, %struct.daisydev*** %8, align 8
  %26 = load %struct.daisydev*, %struct.daisydev** %25, align 8
  %27 = icmp ne %struct.daisydev* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.daisydev**, %struct.daisydev*** %8, align 8
  %30 = load %struct.daisydev*, %struct.daisydev** %29, align 8
  %31 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ false, %24 ], [ %34, %28 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.daisydev**, %struct.daisydev*** %8, align 8
  %40 = load %struct.daisydev*, %struct.daisydev** %39, align 8
  %41 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %40, i32 0, i32 2
  store %struct.daisydev** %41, %struct.daisydev*** %8, align 8
  br label %24

42:                                               ; preds = %35
  %43 = load %struct.daisydev**, %struct.daisydev*** %8, align 8
  %44 = load %struct.daisydev*, %struct.daisydev** %43, align 8
  %45 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %46 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %45, i32 0, i32 2
  store %struct.daisydev* %44, %struct.daisydev** %46, align 8
  %47 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %48 = load %struct.daisydev**, %struct.daisydev*** %8, align 8
  store %struct.daisydev* %47, %struct.daisydev** %48, align 8
  %49 = call i32 @spin_unlock(i32* @topology_lock)
  br label %50

50:                                               ; preds = %42, %3
  ret void
}

declare dso_local %struct.daisydev* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
