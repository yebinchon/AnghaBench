; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_alloc_backing_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_alloc_backing_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { i32 }
%struct.gntdev_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GNTDEV_DMA_FLAG_WC = common dso_local global i32 0, align 4
@GNTDEV_DMA_FLAG_COHERENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wrong dma-buf flags: 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't map %d pages: over limit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gntdev_grant_map* (%struct.gntdev_priv*, i32, i32)* @dmabuf_exp_alloc_backing_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gntdev_grant_map* @dmabuf_exp_alloc_backing_storage(%struct.gntdev_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gntdev_grant_map*, align 8
  %5 = alloca %struct.gntdev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gntdev_grant_map*, align 8
  store %struct.gntdev_priv* %0, %struct.gntdev_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.gntdev_grant_map* @ERR_PTR(i32 %16)
  store %struct.gntdev_grant_map* %17, %struct.gntdev_grant_map** %4, align 8
  br label %60

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GNTDEV_DMA_FLAG_WC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GNTDEV_DMA_FLAG_COHERENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.gntdev_grant_map* @ERR_PTR(i32 %32)
  store %struct.gntdev_grant_map* %33, %struct.gntdev_grant_map** %4, align 8
  br label %60

34:                                               ; preds = %23, %18
  %35 = load %struct.gntdev_priv*, %struct.gntdev_priv** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.gntdev_grant_map* @gntdev_alloc_map(%struct.gntdev_priv* %35, i32 %36, i32 %37)
  store %struct.gntdev_grant_map* %38, %struct.gntdev_grant_map** %8, align 8
  %39 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %40 = icmp ne %struct.gntdev_grant_map* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.gntdev_grant_map* @ERR_PTR(i32 %43)
  store %struct.gntdev_grant_map* %44, %struct.gntdev_grant_map** %4, align 8
  br label %60

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @gntdev_account_mapped_pages(i32 %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %54 = call i32 @gntdev_put_map(i32* null, %struct.gntdev_grant_map* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.gntdev_grant_map* @ERR_PTR(i32 %56)
  store %struct.gntdev_grant_map* %57, %struct.gntdev_grant_map** %4, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  store %struct.gntdev_grant_map* %59, %struct.gntdev_grant_map** %4, align 8
  br label %60

60:                                               ; preds = %58, %50, %41, %28, %14
  %61 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  ret %struct.gntdev_grant_map* %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.gntdev_grant_map* @ERR_PTR(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.gntdev_grant_map* @gntdev_alloc_map(%struct.gntdev_priv*, i32, i32) #1

declare dso_local i32 @gntdev_account_mapped_pages(i32) #1

declare dso_local i32 @gntdev_put_map(i32*, %struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
