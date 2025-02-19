; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_release_passive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_release_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.pvcalls_fedata = type { i32 }
%struct.sockpass_mapping = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.pvcalls_fedata*, %struct.sockpass_mapping*)* @pvcalls_back_release_passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_release_passive(%struct.xenbus_device* %0, %struct.pvcalls_fedata* %1, %struct.sockpass_mapping* %2) #0 {
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.pvcalls_fedata*, align 8
  %6 = alloca %struct.sockpass_mapping*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.pvcalls_fedata* %1, %struct.pvcalls_fedata** %5, align 8
  store %struct.sockpass_mapping* %2, %struct.sockpass_mapping** %6, align 8
  %7 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %8 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %15 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @write_lock_bh(i32* %19)
  %21 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %22 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %28 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %31 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %29, i32* %35, align 4
  %36 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %37 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @write_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %13, %3
  %44 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %45 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @sock_release(%struct.TYPE_4__* %46)
  %48 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %49 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @flush_workqueue(i32 %50)
  %52 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %53 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @destroy_workqueue(i32 %54)
  %56 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %6, align 8
  %57 = call i32 @kfree(%struct.sockpass_mapping* %56)
  ret i32 0
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sock_release(%struct.TYPE_4__*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.sockpass_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
