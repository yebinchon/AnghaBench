; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_page_frag_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_page_frag_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i64 }
%struct.page_frag = type { i32, i32, i64 }

@SKB_FRAG_PAGE_ORDER = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, i32, %struct.page_frag*, i32)* @vhost_net_page_frag_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_page_frag_refill(%struct.vhost_net* %0, i32 %1, %struct.page_frag* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_frag*, align 8
  %9 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page_frag* %2, %struct.page_frag** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %11 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %16 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %17, %18
  %20 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %21 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ule i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %92

25:                                               ; preds = %14
  %26 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %27 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %30 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @__page_frag_cache_drain(i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %25, %4
  %34 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %35 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %37 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @SKB_FRAG_PAGE_ORDER, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @__GFP_COMP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @__GFP_NOWARN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @__GFP_NORETRY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SKB_FRAG_PAGE_ORDER, align 4
  %52 = call i64 @alloc_pages(i32 %50, i32 %51)
  %53 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %54 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %56 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @likely(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* @SKB_FRAG_PAGE_ORDER, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %65 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %82

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @alloc_page(i32 %68)
  %70 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %71 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %73 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @likely(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %80 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %92

82:                                               ; preds = %77, %60
  %83 = load i64, i64* @USHRT_MAX, align 8
  %84 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %85 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.page_frag*, %struct.page_frag** %8, align 8
  %87 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @USHRT_MAX, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i32 @page_ref_add(i64 %88, i64 %90)
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %82, %81, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @__page_frag_cache_drain(i64, i64) #1

declare dso_local i64 @alloc_pages(i32, i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @page_ref_add(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
