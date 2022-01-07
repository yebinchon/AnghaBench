; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_master_attribute_store_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_master_attribute_store_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_master = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @w1_master_attribute_store_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_master_attribute_store_pullup(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.w1_master*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.w1_master* @dev_to_w1_master(%struct.device* %13)
  store %struct.w1_master* %14, %struct.w1_master** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 0, i64* %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %23 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %27 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %29 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.w1_master* @dev_to_w1_master(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
