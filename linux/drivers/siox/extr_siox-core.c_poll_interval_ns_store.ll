; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_poll_interval_ns_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_poll_interval_ns_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.siox_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @poll_interval_ns_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_interval_ns_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.siox_master*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.siox_master* @to_siox_master(%struct.device* %13)
  store %struct.siox_master* %14, %struct.siox_master** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtou64(i8* %15, i32 0, i32* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load %struct.siox_master*, %struct.siox_master** %10, align 8
  %23 = call i32 @siox_master_lock(%struct.siox_master* %22)
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @nsecs_to_jiffies(i32 %24)
  %26 = load %struct.siox_master*, %struct.siox_master** %10, align 8
  %27 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.siox_master*, %struct.siox_master** %10, align 8
  %29 = call i32 @siox_master_unlock(%struct.siox_master* %28)
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.siox_master* @to_siox_master(%struct.device*) #1

declare dso_local i32 @kstrtou64(i8*, i32, i32*) #1

declare dso_local i32 @siox_master_lock(%struct.siox_master*) #1

declare dso_local i32 @nsecs_to_jiffies(i32) #1

declare dso_local i32 @siox_master_unlock(%struct.siox_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
