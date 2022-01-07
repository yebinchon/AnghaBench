; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_write_todo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_write_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pvcalls_data_intf* }
%struct.pvcalls_data_intf = type { i64, i64, i32 }

@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_mapping*)* @pvcalls_front_write_todo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_front_write_todo(%struct.sock_mapping* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_mapping*, align 8
  %4 = alloca %struct.pvcalls_data_intf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock_mapping* %0, %struct.sock_mapping** %3, align 8
  %9 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %10 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %11, align 8
  store %struct.pvcalls_data_intf* %12, %struct.pvcalls_data_intf** %4, align 8
  %13 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %14 = call i64 @XEN_FLEX_RING_SIZE(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %4, align 8
  %16 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %44

27:                                               ; preds = %23
  %28 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %4, align 8
  %29 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %4, align 8
  %32 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @pvcalls_queued(i64 %35, i64 %36, i64 %37)
  %39 = sub nsw i64 %34, %38
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %26, %22
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i64 @pvcalls_queued(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
