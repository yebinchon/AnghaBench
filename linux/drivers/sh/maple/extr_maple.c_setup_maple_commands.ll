; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_setup_maple_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_setup_maple_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAPLE_COMMAND_GETCOND = common dso_local global i32 0, align 4
@maple_pnp_time = common dso_local global i64 0, align 8
@MAPLE_COMMAND_DEVINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @setup_maple_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_maple_commands(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.maple_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.maple_device* @to_maple_dev(%struct.device* %7)
  store %struct.maple_device* %8, %struct.maple_device** %6, align 8
  %9 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %10 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %15 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %21 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @time_after(i64 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %27 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %28 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = load i32, i32* @MAPLE_COMMAND_GETCOND, align 4
  %33 = call i32 @maple_add_packet(%struct.maple_device* %26, i32 %31, i32 %32, i32 1, i32* null)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %39 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %43 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %25
  br label %64

45:                                               ; preds = %18, %13, %2
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* @maple_pnp_time, align 8
  %48 = call i64 @time_after(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %52 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %51, i32 0, i32 2
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %57 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %56, i32 0, i32 2
  %58 = call i32 @atomic_set(i32* %57, i32 1)
  %59 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %60 = load i32, i32* @MAPLE_COMMAND_DEVINFO, align 4
  %61 = call i32 @maple_add_packet(%struct.maple_device* %59, i32 0, i32 %60, i32 0, i32* null)
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %44
  ret i32 0
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
