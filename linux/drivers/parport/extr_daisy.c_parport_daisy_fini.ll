; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_parport_daisy_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_parport_daisy_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daisydev = type { %struct.daisydev*, %struct.parport* }
%struct.parport = type { i32 }

@topology_lock = common dso_local global i32 0, align 4
@topology = common dso_local global %struct.daisydev* null, align 8
@numdevs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parport_daisy_fini(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.daisydev**, align 8
  %4 = alloca %struct.daisydev*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = call i32 @spin_lock(i32* @topology_lock)
  store %struct.daisydev** @topology, %struct.daisydev*** %3, align 8
  br label %6

6:                                                ; preds = %21, %18, %1
  %7 = load %struct.daisydev**, %struct.daisydev*** %3, align 8
  %8 = load %struct.daisydev*, %struct.daisydev** %7, align 8
  %9 = icmp ne %struct.daisydev* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.daisydev**, %struct.daisydev*** %3, align 8
  %12 = load %struct.daisydev*, %struct.daisydev** %11, align 8
  store %struct.daisydev* %12, %struct.daisydev** %4, align 8
  %13 = load %struct.daisydev*, %struct.daisydev** %4, align 8
  %14 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %13, i32 0, i32 1
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  %16 = load %struct.parport*, %struct.parport** %2, align 8
  %17 = icmp ne %struct.parport* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.daisydev*, %struct.daisydev** %4, align 8
  %20 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %19, i32 0, i32 0
  store %struct.daisydev** %20, %struct.daisydev*** %3, align 8
  br label %6

21:                                               ; preds = %10
  %22 = load %struct.daisydev*, %struct.daisydev** %4, align 8
  %23 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %22, i32 0, i32 0
  %24 = load %struct.daisydev*, %struct.daisydev** %23, align 8
  %25 = load %struct.daisydev**, %struct.daisydev*** %3, align 8
  store %struct.daisydev* %24, %struct.daisydev** %25, align 8
  %26 = load %struct.daisydev*, %struct.daisydev** %4, align 8
  %27 = call i32 @kfree(%struct.daisydev* %26)
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.daisydev*, %struct.daisydev** @topology, align 8
  %30 = icmp ne %struct.daisydev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i64 0, i64* @numdevs, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = call i32 @spin_unlock(i32* @topology_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.daisydev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
