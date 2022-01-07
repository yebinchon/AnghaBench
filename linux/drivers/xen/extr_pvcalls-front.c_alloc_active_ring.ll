; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_alloc_active_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_alloc_active_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_mapping = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.pvcalls_data_intf* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.pvcalls_data_intf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_mapping*)* @alloc_active_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_active_ring(%struct.sock_mapping* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_mapping*, align 8
  %4 = alloca i8*, align 8
  store %struct.sock_mapping* %0, %struct.sock_mapping** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i64 @get_zeroed_page(i32 %5)
  %7 = inttoptr i64 %6 to %struct.pvcalls_data_intf*
  %8 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %9 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.pvcalls_data_intf* %7, %struct.pvcalls_data_intf** %10, align 8
  %11 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %12 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %13, align 8
  %15 = icmp ne %struct.pvcalls_data_intf* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %19 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %20 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %21, align 8
  %23 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @__GFP_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %28 = call i64 @__get_free_pages(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %48

33:                                               ; preds = %17
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %36 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %41 = call i32 @XEN_FLEX_RING_SIZE(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %39, i64 %42
  %44 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %45 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %32, %16
  %49 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %50 = call i32 @free_active_ring(%struct.sock_mapping* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @free_active_ring(%struct.sock_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
