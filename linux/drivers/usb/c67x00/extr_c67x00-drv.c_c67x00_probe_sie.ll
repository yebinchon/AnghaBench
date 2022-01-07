; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_probe_sie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_probe_sie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_sie = type { i32, i32, %struct.c67x00_device*, i32 }
%struct.c67x00_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not using SIE %d as requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unsupported configuration: 0x%x for SIE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_sie*, %struct.c67x00_device*, i32)* @c67x00_probe_sie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_probe_sie(%struct.c67x00_sie* %0, %struct.c67x00_device* %1, i32 %2) #0 {
  %4 = alloca %struct.c67x00_sie*, align 8
  %5 = alloca %struct.c67x00_device*, align 8
  %6 = alloca i32, align 4
  store %struct.c67x00_sie* %0, %struct.c67x00_sie** %4, align 8
  store %struct.c67x00_device* %1, %struct.c67x00_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %8 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %11 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %12 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %11, i32 0, i32 2
  store %struct.c67x00_device* %10, %struct.c67x00_device** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %15 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %17 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @c67x00_sie_config(i32 %20, i32 %21)
  %23 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %24 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %26 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %3
  %29 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %30 = call i32 @c67x00_hcd_probe(%struct.c67x00_sie* %29)
  br label %48

31:                                               ; preds = %3
  %32 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %33 = call i32 @sie_dev(%struct.c67x00_sie* %32)
  %34 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %35 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %48

38:                                               ; preds = %3
  %39 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %40 = call i32 @sie_dev(%struct.c67x00_sie* %39)
  %41 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %42 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %45 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %31, %28
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @c67x00_sie_config(i32, i32) #1

declare dso_local i32 @c67x00_hcd_probe(%struct.c67x00_sie*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @sie_dev(%struct.c67x00_sie*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
