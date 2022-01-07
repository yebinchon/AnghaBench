; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_released.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_released.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_dmabuf_priv = type { i32 }
%struct.gntdev_dmabuf = type opaque
%struct.gntdev_dmabuf_wait_obj = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Will wait for dma-buf with fd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_dmabuf_priv*, i32, i32)* @dmabuf_exp_wait_released to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabuf_exp_wait_released(%struct.gntdev_dmabuf_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gntdev_dmabuf_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gntdev_dmabuf*, align 8
  %9 = alloca %struct.gntdev_dmabuf_wait_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.gntdev_dmabuf_wait_obj* @dmabuf_exp_wait_obj_get_dmabuf(%struct.gntdev_dmabuf_priv* %13, i32 %14)
  %16 = bitcast %struct.gntdev_dmabuf_wait_obj* %15 to %struct.gntdev_dmabuf*
  store %struct.gntdev_dmabuf* %16, %struct.gntdev_dmabuf** %8, align 8
  %17 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %8, align 8
  %18 = bitcast %struct.gntdev_dmabuf* %17 to %struct.gntdev_dmabuf_wait_obj*
  %19 = call i64 @IS_ERR(%struct.gntdev_dmabuf_wait_obj* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %8, align 8
  %23 = bitcast %struct.gntdev_dmabuf* %22 to %struct.gntdev_dmabuf_wait_obj*
  %24 = call i32 @PTR_ERR(%struct.gntdev_dmabuf_wait_obj* %23)
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %5, align 8
  %27 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %8, align 8
  %28 = bitcast %struct.gntdev_dmabuf* %27 to %struct.gntdev_dmabuf_wait_obj*
  %29 = call %struct.gntdev_dmabuf_wait_obj* @dmabuf_exp_wait_obj_new(%struct.gntdev_dmabuf_priv* %26, %struct.gntdev_dmabuf_wait_obj* %28)
  store %struct.gntdev_dmabuf_wait_obj* %29, %struct.gntdev_dmabuf_wait_obj** %9, align 8
  %30 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %9, align 8
  %31 = call i64 @IS_ERR(%struct.gntdev_dmabuf_wait_obj* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %9, align 8
  %35 = call i32 @PTR_ERR(%struct.gntdev_dmabuf_wait_obj* %34)
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dmabuf_exp_wait_obj_wait(%struct.gntdev_dmabuf_wait_obj* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %5, align 8
  %41 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %9, align 8
  %42 = call i32 @dmabuf_exp_wait_obj_free(%struct.gntdev_dmabuf_priv* %40, %struct.gntdev_dmabuf_wait_obj* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %33, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.gntdev_dmabuf_wait_obj* @dmabuf_exp_wait_obj_get_dmabuf(%struct.gntdev_dmabuf_priv*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gntdev_dmabuf_wait_obj*) #1

declare dso_local i32 @PTR_ERR(%struct.gntdev_dmabuf_wait_obj*) #1

declare dso_local %struct.gntdev_dmabuf_wait_obj* @dmabuf_exp_wait_obj_new(%struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_wait_obj*) #1

declare dso_local i32 @dmabuf_exp_wait_obj_wait(%struct.gntdev_dmabuf_wait_obj*, i32) #1

declare dso_local i32 @dmabuf_exp_wait_obj_free(%struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_wait_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
