; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_init_shared_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_init_shared_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenfb_info = type { i32, %struct.TYPE_6__*, i8**, i8** }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i8** }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenfb_info*, %struct.fb_info*)* @xenfb_init_shared_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_init_shared_page(%struct.xenfb_info* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.xenfb_info*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xenfb_info* %0, %struct.xenfb_info** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %14 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %19 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %18, i32 0, i32 3
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %20, i64 %24
  %26 = call i8* @vmalloc_to_gfn(i8** %25)
  %27 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %26, i8** %32, align 8
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %42 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %37
  %46 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %47 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  %54 = call i8* @vmalloc_to_gfn(i8** %53)
  %55 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %56 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 9
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %54, i8** %62, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %37

66:                                               ; preds = %37
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %72 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 8
  store i32 %70, i32* %74, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %80 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  store i32 %78, i32* %82, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %88 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  store i32 %86, i32* %90, align 8
  %91 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %96 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32 %94, i32* %98, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %104 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store i32 %102, i32* %106, align 8
  %107 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %108 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %112 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %116 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %120 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  ret void
}

declare dso_local i8* @vmalloc_to_gfn(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
