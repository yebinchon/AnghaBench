; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_xen_front_pgdir_shbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_xen_front_pgdir_shbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.xen_front_pgdir_shbuf*)*, i32 (%struct.xen_front_pgdir_shbuf*)* }
%struct.xen_front_pgdir_shbuf = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.xen_front_pgdir_shbuf_cfg = type { i32, i32, i32, i64, %struct.xen_front_pgdir_shbuf* }

@backend_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@local_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_front_pgdir_shbuf_alloc(%struct.xen_front_pgdir_shbuf_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_front_pgdir_shbuf_cfg*, align 8
  %4 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.xen_front_pgdir_shbuf_cfg* %0, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %6 = load %struct.xen_front_pgdir_shbuf_cfg*, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %6, i32 0, i32 4
  %8 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %7, align 8
  store %struct.xen_front_pgdir_shbuf* %8, %struct.xen_front_pgdir_shbuf** %4, align 8
  %9 = load %struct.xen_front_pgdir_shbuf_cfg*, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %15 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %14, i32 0, i32 0
  store %struct.TYPE_3__* @backend_ops, %struct.TYPE_3__** %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %18 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %17, i32 0, i32 0
  store %struct.TYPE_3__* @local_ops, %struct.TYPE_3__** %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.xen_front_pgdir_shbuf_cfg*, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %24 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xen_front_pgdir_shbuf_cfg*, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %26 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %29 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.xen_front_pgdir_shbuf_cfg*, %struct.xen_front_pgdir_shbuf_cfg** %3, align 8
  %31 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %34 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %36 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (%struct.xen_front_pgdir_shbuf*)*, i32 (%struct.xen_front_pgdir_shbuf*)** %38, align 8
  %40 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %41 = call i32 %39(%struct.xen_front_pgdir_shbuf* %40)
  %42 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %43 = call i32 @alloc_storage(%struct.xen_front_pgdir_shbuf* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %19
  br label %61

47:                                               ; preds = %19
  %48 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %49 = call i32 @grant_references(%struct.xen_front_pgdir_shbuf* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %55 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.xen_front_pgdir_shbuf*)*, i32 (%struct.xen_front_pgdir_shbuf*)** %57, align 8
  %59 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %60 = call i32 %58(%struct.xen_front_pgdir_shbuf* %59)
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %52, %46
  %62 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %4, align 8
  %63 = call i32 @xen_front_pgdir_shbuf_free(%struct.xen_front_pgdir_shbuf* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @alloc_storage(%struct.xen_front_pgdir_shbuf*) #1

declare dso_local i32 @grant_references(%struct.xen_front_pgdir_shbuf*) #1

declare dso_local i32 @xen_front_pgdir_shbuf_free(%struct.xen_front_pgdir_shbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
