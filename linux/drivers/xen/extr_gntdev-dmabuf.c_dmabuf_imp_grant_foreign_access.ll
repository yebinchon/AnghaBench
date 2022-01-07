; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_grant_foreign_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_grant_foreign_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cannot allocate grant references, ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot claim grant reference, ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32*, i32, i32)* @dmabuf_imp_grant_foreign_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabuf_imp_grant_foreign_access(%struct.page** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @gnttab_alloc_grant_references(i32 %14, i32* %10)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = call i32 @gnttab_claim_grant_reference(i32* %10)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %54

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.page**, %struct.page*** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 %40
  %42 = load %struct.page*, %struct.page** %41, align 8
  %43 = call i32 @xen_page_to_gfn(%struct.page* %42)
  %44 = call i32 @gnttab_grant_foreign_access_ref(i32 %36, i32 %37, i32 %43, i32 0)
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %23

53:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %58

54:                                               ; preds = %31
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @gnttab_free_grant_references(i32 %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %53, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @gnttab_alloc_grant_references(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @gnttab_claim_grant_reference(i32*) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i32, i32) #1

declare dso_local i32 @xen_page_to_gfn(%struct.page*) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
