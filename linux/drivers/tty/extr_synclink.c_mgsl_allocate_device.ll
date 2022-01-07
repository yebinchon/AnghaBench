; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error can't allocate device instance data\0A\00", align 1
@mgsl_port_ops = common dso_local global i32 0, align 4
@MGSL_MAGIC = common dso_local global i32 0, align 4
@mgsl_bh_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@default_params = common dso_local global i32 0, align 4
@HDLC_TXIDLE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mgsl_struct* ()* @mgsl_allocate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mgsl_struct* @mgsl_allocate_device() #0 {
  %1 = alloca %struct.mgsl_struct*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.mgsl_struct* @kzalloc(i32 64, i32 %2)
  store %struct.mgsl_struct* %3, %struct.mgsl_struct** %1, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %5 = icmp ne %struct.mgsl_struct* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %57

8:                                                ; preds = %0
  %9 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %10 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %9, i32 0, i32 9
  %11 = call i32 @tty_port_init(%struct.TYPE_2__* %10)
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32* @mgsl_port_ops, i32** %14, align 8
  %15 = load i32, i32* @MGSL_MAGIC, align 4
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %19 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %18, i32 0, i32 10
  %20 = load i32, i32* @mgsl_bh_handler, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %23 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %22, i32 0, i32 0
  store i32 4096, i32* %23, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 5, %24
  %26 = sdiv i32 %25, 10
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %28 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 30, %30
  %32 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %33 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %36 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %35, i32 0, i32 8
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %39 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %38, i32 0, i32 7
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %42 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %41, i32 0, i32 6
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %45 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %44, i32 0, i32 5
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %48 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %47, i32 0, i32 4
  %49 = call i32 @memcpy(i32* %48, i32* @default_params, i32 4)
  %50 = load i32, i32* @HDLC_TXIDLE_FLAGS, align 4
  %51 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %52 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  %56 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %8, %6
  %58 = load %struct.mgsl_struct*, %struct.mgsl_struct** %1, align 8
  ret %struct.mgsl_struct* %58
}

declare dso_local %struct.mgsl_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
