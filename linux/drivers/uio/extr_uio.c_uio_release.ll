; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.uio_listener* }
%struct.uio_listener = type { %struct.uio_device* }
%struct.uio_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.inode*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uio_listener*, align 8
  %7 = alloca %struct.uio_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.uio_listener*, %struct.uio_listener** %9, align 8
  store %struct.uio_listener* %10, %struct.uio_listener** %6, align 8
  %11 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %12 = getelementptr inbounds %struct.uio_listener, %struct.uio_listener* %11, i32 0, i32 0
  %13 = load %struct.uio_device*, %struct.uio_device** %12, align 8
  store %struct.uio_device* %13, %struct.uio_device** %7, align 8
  %14 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %15 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %18 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %23 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_2__*, %struct.inode*)*, i32 (%struct.TYPE_2__*, %struct.inode*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_2__*, %struct.inode*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %30 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*, %struct.inode*)*, i32 (%struct.TYPE_2__*, %struct.inode*)** %32, align 8
  %34 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %35 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call i32 %33(%struct.TYPE_2__* %36, %struct.inode* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %28, %21, %2
  %40 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %41 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %44 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @module_put(i32 %45)
  %47 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %48 = call i32 @kfree(%struct.uio_listener* %47)
  %49 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %50 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %49, i32 0, i32 0
  %51 = call i32 @put_device(i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.uio_listener*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
