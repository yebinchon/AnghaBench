; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_alloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32, i32, %struct.raw3215_info*, %struct.raw3215_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW3215_INBUF_SIZE = common dso_local global i32 0, align 4
@raw3215_timeout = common dso_local global i32 0, align 4
@raw3215_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raw3215_info* ()* @raw3215_alloc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raw3215_info* @raw3215_alloc_info() #0 {
  %1 = alloca %struct.raw3215_info*, align 8
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = load i32, i32* @GFP_DMA, align 4
  %5 = or i32 %3, %4
  %6 = call i8* @kzalloc(i32 32, i32 %5)
  %7 = bitcast i8* %6 to %struct.raw3215_info*
  store %struct.raw3215_info* %7, %struct.raw3215_info** %2, align 8
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %9 = icmp ne %struct.raw3215_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.raw3215_info* null, %struct.raw3215_info** %1, align 8
  br label %66

11:                                               ; preds = %0
  %12 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @GFP_DMA, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @kzalloc(i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.raw3215_info*
  %18 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %19 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %18, i32 0, i32 4
  store %struct.raw3215_info* %17, %struct.raw3215_info** %19, align 8
  %20 = load i32, i32* @RAW3215_INBUF_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @kzalloc(i32 %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.raw3215_info*
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %27 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %26, i32 0, i32 5
  store %struct.raw3215_info* %25, %struct.raw3215_info** %27, align 8
  %28 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %29 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %28, i32 0, i32 4
  %30 = load %struct.raw3215_info*, %struct.raw3215_info** %29, align 8
  %31 = icmp ne %struct.raw3215_info* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %11
  %33 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %34 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %33, i32 0, i32 5
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %34, align 8
  %36 = icmp ne %struct.raw3215_info* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32, %11
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 5
  %40 = load %struct.raw3215_info*, %struct.raw3215_info** %39, align 8
  %41 = call i32 @kfree(%struct.raw3215_info* %40)
  %42 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %43 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %42, i32 0, i32 4
  %44 = load %struct.raw3215_info*, %struct.raw3215_info** %43, align 8
  %45 = call i32 @kfree(%struct.raw3215_info* %44)
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %47 = call i32 @kfree(%struct.raw3215_info* %46)
  store %struct.raw3215_info* null, %struct.raw3215_info** %1, align 8
  br label %66

48:                                               ; preds = %32
  %49 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %50 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %49, i32 0, i32 3
  %51 = load i32, i32* @raw3215_timeout, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %54 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %53, i32 0, i32 2
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %57 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %56, i32 0, i32 1
  %58 = load i32, i32* @raw3215_wakeup, align 4
  %59 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %60 = ptrtoint %struct.raw3215_info* %59 to i64
  %61 = call i32 @tasklet_init(i32* %57, i32 %58, i64 %60)
  %62 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %63 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %62, i32 0, i32 0
  %64 = call i32 @tty_port_init(i32* %63)
  %65 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  store %struct.raw3215_info* %65, %struct.raw3215_info** %1, align 8
  br label %66

66:                                               ; preds = %48, %37, %10
  %67 = load %struct.raw3215_info*, %struct.raw3215_info** %1, align 8
  ret %struct.raw3215_info* %67
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.raw3215_info*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tty_port_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
