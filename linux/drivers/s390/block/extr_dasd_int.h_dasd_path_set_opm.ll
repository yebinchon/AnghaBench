; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_int.h_dasd_path_set_opm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_int.h_dasd_path_set_opm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, i32)* @dasd_path_set_opm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_path_set_opm(%struct.dasd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dasd_path_clear_oper(%struct.dasd_device* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 128, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dasd_path_operational(%struct.dasd_device* %19, i32 %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dasd_path_clear_nohpf(%struct.dasd_device* %22, i32 %23)
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dasd_path_clear_cuir(%struct.dasd_device* %25, i32 %26)
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dasd_path_clear_cable(%struct.dasd_device* %28, i32 %29)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dasd_path_clear_ifcc(%struct.dasd_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %9
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dasd_path_clear_oper(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_operational(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_clear_nohpf(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_clear_cuir(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_clear_cable(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_clear_ifcc(%struct.dasd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
