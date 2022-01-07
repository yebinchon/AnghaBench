; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c___siox_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c___siox_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_master = type { i32, i32, i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siox_master*)* @__siox_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__siox_start(%struct.siox_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siox_master*, align 8
  store %struct.siox_master* %0, %struct.siox_master** %3, align 8
  %4 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %5 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %8 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %17 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %25 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %31 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %33 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wake_up_process(i32 %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %28, %20, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
