; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_uio_private_data = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.hv_uio_private_data*)* @hv_uio_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_uio_cleanup(%struct.hv_device* %0, %struct.hv_uio_private_data* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_uio_private_data*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.hv_uio_private_data* %1, %struct.hv_uio_private_data** %4, align 8
  %5 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %6 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %11 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %14 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @vmbus_teardown_gpadl(i32 %12, i64 %15)
  %17 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %18 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %20 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vfree(i32 %21)
  br label %23

23:                                               ; preds = %9, %2
  %24 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %25 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %30 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %33 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @vmbus_teardown_gpadl(i32 %31, i64 %34)
  %36 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %37 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %4, align 8
  %39 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @vfree(i32 %40)
  br label %42

42:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @vmbus_teardown_gpadl(i32, i64) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
