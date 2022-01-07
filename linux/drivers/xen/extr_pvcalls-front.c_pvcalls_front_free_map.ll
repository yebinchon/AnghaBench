; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvcalls_bedata = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvcalls_bedata*, %struct.sock_mapping*)* @pvcalls_front_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_front_free_map(%struct.pvcalls_bedata* %0, %struct.sock_mapping* %1) #0 {
  %3 = alloca %struct.pvcalls_bedata*, align 8
  %4 = alloca %struct.sock_mapping*, align 8
  %5 = alloca i32, align 4
  store %struct.pvcalls_bedata* %0, %struct.pvcalls_bedata** %3, align 8
  store %struct.sock_mapping* %1, %struct.sock_mapping** %4, align 8
  %6 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %7 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %11 = call i32 @unbind_from_irqhandler(i32 %9, %struct.sock_mapping* %10)
  %12 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %3, align 8
  %13 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %16 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %21 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %20, i32 0, i32 1
  %22 = call i32 @list_del_init(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %3, align 8
  %25 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %44, %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %30 = shl i32 1, %29
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %34 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gnttab_end_foreign_access(i32 %42, i32 0, i32 0)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %49 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gnttab_end_foreign_access(i32 %51, i32 0, i32 0)
  %53 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %54 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = ptrtoint %struct.TYPE_3__* %56 to i64
  %58 = call i32 @free_page(i64 %57)
  %59 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %60 = call i32 @kfree(%struct.sock_mapping* %59)
  ret void
}

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.sock_mapping*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.sock_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
