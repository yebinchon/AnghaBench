; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_xen_front_pgdir_shbuf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-front-pgdir-shbuf.c_xen_front_pgdir_shbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_front_pgdir_shbuf = type { i64*, i32, i64* }

@GRANT_INVALID_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_front_pgdir_shbuf_free(%struct.xen_front_pgdir_shbuf* %0) #0 {
  %2 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.xen_front_pgdir_shbuf* %0, %struct.xen_front_pgdir_shbuf** %2, align 8
  %4 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %5 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %12 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %17 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GRANT_INVALID_REF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %27 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gnttab_end_foreign_access(i64 %32, i32 0, i64 0)
  br label %34

34:                                               ; preds = %25, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %9
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %41 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @kfree(i64* %42)
  %44 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %2, align 8
  %45 = getelementptr inbounds %struct.xen_front_pgdir_shbuf, %struct.xen_front_pgdir_shbuf* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @kfree(i64* %46)
  ret void
}

declare dso_local i32 @gnttab_end_foreign_access(i64, i32, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
