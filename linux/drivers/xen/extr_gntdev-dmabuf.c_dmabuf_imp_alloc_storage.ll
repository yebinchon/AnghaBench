; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_alloc_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_alloc_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_dmabuf = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gntdev_dmabuf* (i32)* @dmabuf_imp_alloc_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gntdev_dmabuf* @dmabuf_imp_alloc_storage(i32 %0) #0 {
  %2 = alloca %struct.gntdev_dmabuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gntdev_dmabuf*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.gntdev_dmabuf* @kzalloc(i32 24, i32 %6)
  store %struct.gntdev_dmabuf* %7, %struct.gntdev_dmabuf** %4, align 8
  %8 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %9 = icmp ne %struct.gntdev_dmabuf* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %17 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* %15, i32** %19, align 8
  %20 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %21 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  br label %61

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 1, i32 %29)
  %31 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %32 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %34 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %61

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %41 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %56, %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* @GRANT_INVALID_REF, align 4
  %48 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %49 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  store %struct.gntdev_dmabuf* %60, %struct.gntdev_dmabuf** %2, align 8
  br label %68

61:                                               ; preds = %37, %26
  %62 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %63 = call i32 @dmabuf_imp_free_storage(%struct.gntdev_dmabuf* %62)
  br label %64

64:                                               ; preds = %61, %10
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.gntdev_dmabuf* @ERR_PTR(i32 %66)
  store %struct.gntdev_dmabuf* %67, %struct.gntdev_dmabuf** %2, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %2, align 8
  ret %struct.gntdev_dmabuf* %69
}

declare dso_local %struct.gntdev_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dmabuf_imp_free_storage(%struct.gntdev_dmabuf*) #1

declare dso_local %struct.gntdev_dmabuf* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
