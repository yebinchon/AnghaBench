; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_release_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_release_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.pvcalls_fedata = type { i32 }
%struct.sock_mapping = type { i8*, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.pvcalls_fedata*, %struct.sock_mapping*)* @pvcalls_back_release_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_release_active(%struct.xenbus_device* %0, %struct.pvcalls_fedata* %1, %struct.sock_mapping* %2) #0 {
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.pvcalls_fedata*, align 8
  %6 = alloca %struct.sock_mapping*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.pvcalls_fedata* %1, %struct.pvcalls_fedata** %5, align 8
  store %struct.sock_mapping* %2, %struct.sock_mapping** %6, align 8
  %7 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %8 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @disable_irq(i32 %9)
  %11 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %12 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %19 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @write_lock_bh(i32* %23)
  %25 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %26 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %32 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %35 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %33, i32* %39, align 4
  %40 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %41 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @write_unlock_bh(i32* %45)
  br label %47

47:                                               ; preds = %17, %3
  %48 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %49 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %52 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @flush_work(i32* %53)
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %56 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %57 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %55, i8* %58)
  %60 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %61 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %62 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %60, i8* %64)
  %66 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %67 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %70 = call i32 @unbind_from_irqhandler(i32 %68, %struct.sock_mapping* %69)
  %71 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %72 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @sock_release(%struct.TYPE_6__* %73)
  %75 = load %struct.sock_mapping*, %struct.sock_mapping** %6, align 8
  %76 = call i32 @kfree(%struct.sock_mapping* %75)
  ret i32 0
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device*, i8*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.sock_mapping*) #1

declare dso_local i32 @sock_release(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.sock_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
