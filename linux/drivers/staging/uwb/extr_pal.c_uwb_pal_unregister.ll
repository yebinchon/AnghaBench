; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_pal.c_uwb_pal_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_pal.c_uwb_pal_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_pal = type { i8*, %struct.TYPE_5__*, i32, i32, %struct.uwb_rc* }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"uwb_rc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_pal_unregister(%struct.uwb_pal* %0) #0 {
  %2 = alloca %struct.uwb_pal*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_pal* %0, %struct.uwb_pal** %2, align 8
  %4 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %5 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %4, i32 0, i32 4
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rc* %6, %struct.uwb_rc** %3, align 8
  %7 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %8 = call i32 @uwb_radio_stop(%struct.uwb_pal* %7)
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %13, i32 0, i32 3
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %21 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debugfs_remove(i32 %22)
  %24 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %30 = call i64 @uwb_rc_class_device_exists(%struct.uwb_rc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %34 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %38 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sysfs_remove_link(i32* %36, i8* %39)
  br label %41

41:                                               ; preds = %32, %28
  %42 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %43 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @sysfs_remove_link(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @uwb_radio_stop(%struct.uwb_pal*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i64 @uwb_rc_class_device_exists(%struct.uwb_rc*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
