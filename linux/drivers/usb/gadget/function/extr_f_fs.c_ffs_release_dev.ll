; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_release_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_release_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { %struct.ffs_dev* }
%struct.ffs_dev = type { i32, i32 (%struct.ffs_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_data*)* @ffs_release_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_release_dev(%struct.ffs_data* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  %3 = alloca %struct.ffs_dev*, align 8
  store %struct.ffs_data* %0, %struct.ffs_data** %2, align 8
  %4 = call i32 (...) @ENTER()
  %5 = call i32 (...) @ffs_dev_lock()
  %6 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %7 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %6, i32 0, i32 0
  %8 = load %struct.ffs_dev*, %struct.ffs_dev** %7, align 8
  store %struct.ffs_dev* %8, %struct.ffs_dev** %3, align 8
  %9 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %10 = icmp ne %struct.ffs_dev* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %14, i32 0, i32 1
  %16 = load i32 (%struct.ffs_dev*)*, i32 (%struct.ffs_dev*)** %15, align 8
  %17 = icmp ne i32 (%struct.ffs_dev*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %19, i32 0, i32 1
  %21 = load i32 (%struct.ffs_dev*)*, i32 (%struct.ffs_dev*)** %20, align 8
  %22 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %23 = call i32 %21(%struct.ffs_dev* %22)
  br label %24

24:                                               ; preds = %18, %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 (...) @ffs_dev_unlock()
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @ffs_dev_lock(...) #1

declare dso_local i32 @ffs_dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
