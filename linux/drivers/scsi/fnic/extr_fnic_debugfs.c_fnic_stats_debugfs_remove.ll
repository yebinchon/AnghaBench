; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_stats_debugfs_remove(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %3 = load %struct.fnic*, %struct.fnic** %2, align 8
  %4 = icmp ne %struct.fnic* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.fnic*, %struct.fnic** %2, align 8
  %8 = getelementptr inbounds %struct.fnic, %struct.fnic* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @debugfs_remove(i32* %9)
  %11 = load %struct.fnic*, %struct.fnic** %2, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @debugfs_remove(i32* %15)
  %17 = load %struct.fnic*, %struct.fnic** %2, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @debugfs_remove(i32* %21)
  %23 = load %struct.fnic*, %struct.fnic** %2, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
