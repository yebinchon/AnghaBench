; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_get_tap_ptr_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_get_tap_ptr_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ptr_ring* (i32)* @get_tap_ptr_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptr_ring* @get_tap_ptr_ring(i32 %0) #0 {
  %2 = alloca %struct.ptr_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptr_ring*, align 8
  %5 = alloca %struct.file*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.file* @fget(i32 %6)
  store %struct.file* %7, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ptr_ring* null, %struct.ptr_ring** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.ptr_ring* @tun_get_tx_ring(%struct.file* %12)
  store %struct.ptr_ring* %13, %struct.ptr_ring** %4, align 8
  %14 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %15 = call i32 @IS_ERR(%struct.ptr_ring* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call %struct.ptr_ring* @tap_get_ptr_ring(%struct.file* %19)
  store %struct.ptr_ring* %20, %struct.ptr_ring** %4, align 8
  %21 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %22 = call i32 @IS_ERR(%struct.ptr_ring* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %26

25:                                               ; preds = %18
  store %struct.ptr_ring* null, %struct.ptr_ring** %4, align 8
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = call i32 @fput(%struct.file* %27)
  %29 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  store %struct.ptr_ring* %29, %struct.ptr_ring** %2, align 8
  br label %30

30:                                               ; preds = %26, %10
  %31 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  ret %struct.ptr_ring* %31
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.ptr_ring* @tun_get_tx_ring(%struct.file*) #1

declare dso_local i32 @IS_ERR(%struct.ptr_ring*) #1

declare dso_local %struct.ptr_ring* @tap_get_ptr_ring(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
