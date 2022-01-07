; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_obj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_obj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_dmabuf_wait_obj = type { i32, %struct.gntdev_dmabuf*, i32 }
%struct.gntdev_dmabuf_priv = type { i32, i32 }
%struct.gntdev_dmabuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmabuf_exp_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gntdev_dmabuf_wait_obj* (%struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf*)* @dmabuf_exp_wait_obj_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gntdev_dmabuf_wait_obj* @dmabuf_exp_wait_obj_new(%struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf* %1) #0 {
  %3 = alloca %struct.gntdev_dmabuf_wait_obj*, align 8
  %4 = alloca %struct.gntdev_dmabuf_priv*, align 8
  %5 = alloca %struct.gntdev_dmabuf*, align 8
  %6 = alloca %struct.gntdev_dmabuf_wait_obj*, align 8
  store %struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf_priv** %4, align 8
  store %struct.gntdev_dmabuf* %1, %struct.gntdev_dmabuf** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.gntdev_dmabuf_wait_obj* @kzalloc(i32 24, i32 %7)
  store %struct.gntdev_dmabuf_wait_obj* %8, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  %9 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  %10 = icmp ne %struct.gntdev_dmabuf_wait_obj* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.gntdev_dmabuf_wait_obj* @ERR_PTR(i32 %13)
  store %struct.gntdev_dmabuf_wait_obj* %14, %struct.gntdev_dmabuf_wait_obj** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  %17 = getelementptr inbounds %struct.gntdev_dmabuf_wait_obj, %struct.gntdev_dmabuf_wait_obj* %16, i32 0, i32 2
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %5, align 8
  %20 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  %21 = getelementptr inbounds %struct.gntdev_dmabuf_wait_obj, %struct.gntdev_dmabuf_wait_obj* %20, i32 0, i32 1
  store %struct.gntdev_dmabuf* %19, %struct.gntdev_dmabuf** %21, align 8
  %22 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %4, align 8
  %23 = getelementptr inbounds %struct.gntdev_dmabuf_priv, %struct.gntdev_dmabuf_priv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  %26 = getelementptr inbounds %struct.gntdev_dmabuf_wait_obj, %struct.gntdev_dmabuf_wait_obj* %25, i32 0, i32 0
  %27 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %4, align 8
  %28 = getelementptr inbounds %struct.gntdev_dmabuf_priv, %struct.gntdev_dmabuf_priv* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %26, i32* %28)
  %30 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %5, align 8
  %31 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @dmabuf_exp_release, align 4
  %35 = call i32 @kref_put(i32* %33, i32 %34)
  %36 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %4, align 8
  %37 = getelementptr inbounds %struct.gntdev_dmabuf_priv, %struct.gntdev_dmabuf_priv* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %6, align 8
  store %struct.gntdev_dmabuf_wait_obj* %39, %struct.gntdev_dmabuf_wait_obj** %3, align 8
  br label %40

40:                                               ; preds = %15, %11
  %41 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %3, align 8
  ret %struct.gntdev_dmabuf_wait_obj* %41
}

declare dso_local %struct.gntdev_dmabuf_wait_obj* @kzalloc(i32, i32) #1

declare dso_local %struct.gntdev_dmabuf_wait_obj* @ERR_PTR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
