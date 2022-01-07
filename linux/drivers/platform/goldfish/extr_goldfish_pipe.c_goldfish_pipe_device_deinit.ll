; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_device_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_device_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.goldfish_pipe_dev = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.goldfish_pipe_dev*)* @goldfish_pipe_device_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_pipe_device_deinit(%struct.platform_device* %0, %struct.goldfish_pipe_dev* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.goldfish_pipe_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.goldfish_pipe_dev* %1, %struct.goldfish_pipe_dev** %4, align 8
  %5 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %6 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %5, i32 0, i32 3
  %7 = call i32 @misc_deregister(i32* %6)
  %8 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %9 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %8, i32 0, i32 2
  %10 = call i32 @tasklet_kill(i32* %9)
  %11 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %12 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %16 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @free_page(i64 %17)
  ret void
}

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
