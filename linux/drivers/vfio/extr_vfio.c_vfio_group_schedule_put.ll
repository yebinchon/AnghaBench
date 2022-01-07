; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_schedule_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_schedule_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32 }
%struct.vfio_group_put_work = type { i32, %struct.vfio_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vfio_group_put_bg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_group*)* @vfio_group_schedule_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_group_schedule_put(%struct.vfio_group* %0) #0 {
  %2 = alloca %struct.vfio_group*, align 8
  %3 = alloca %struct.vfio_group_put_work*, align 8
  store %struct.vfio_group* %0, %struct.vfio_group** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.vfio_group_put_work* @kmalloc(i32 16, i32 %4)
  store %struct.vfio_group_put_work* %5, %struct.vfio_group_put_work** %3, align 8
  %6 = load %struct.vfio_group_put_work*, %struct.vfio_group_put_work** %3, align 8
  %7 = icmp ne %struct.vfio_group_put_work* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.vfio_group_put_work*, %struct.vfio_group_put_work** %3, align 8
  %15 = getelementptr inbounds %struct.vfio_group_put_work, %struct.vfio_group_put_work* %14, i32 0, i32 0
  %16 = load i32, i32* @vfio_group_put_bg, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %19 = load %struct.vfio_group_put_work*, %struct.vfio_group_put_work** %3, align 8
  %20 = getelementptr inbounds %struct.vfio_group_put_work, %struct.vfio_group_put_work* %19, i32 0, i32 1
  store %struct.vfio_group* %18, %struct.vfio_group** %20, align 8
  %21 = load %struct.vfio_group_put_work*, %struct.vfio_group_put_work** %3, align 8
  %22 = getelementptr inbounds %struct.vfio_group_put_work, %struct.vfio_group_put_work* %21, i32 0, i32 0
  %23 = call i32 @schedule_work(i32* %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.vfio_group_put_work* @kmalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
