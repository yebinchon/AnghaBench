; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_pal.c_uwb_pal_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_pal.c_uwb_pal_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_pal = type { i8*, i32, i32, %struct.TYPE_5__*, %struct.uwb_rc* }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"uwb_rc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_pal_register(%struct.uwb_pal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_pal*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca i32, align 4
  store %struct.uwb_pal* %0, %struct.uwb_pal** %3, align 8
  %6 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %6, i32 0, i32 4
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %4, align 8
  %9 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_create_link(i32* %17, i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %68

27:                                               ; preds = %13
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %29 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %33 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %37 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sysfs_create_link(i32* %31, i32* %35, i8* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %44 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @sysfs_remove_link(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %52 = call i32 @uwb_dbg_create_pal_dir(%struct.uwb_pal* %51)
  %53 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %54 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %56 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.uwb_pal*, %struct.uwb_pal** %3, align 8
  %60 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %59, i32 0, i32 1
  %61 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %62 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %61, i32 0, i32 1
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %65 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %50, %42, %25
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @uwb_dbg_create_pal_dir(%struct.uwb_pal*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
