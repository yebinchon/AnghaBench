; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i64 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ion_page_pool_free(%struct.ion_page_pool* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.ion_page_pool*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.ion_page_pool* %0, %struct.ion_page_pool** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %6 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @compound_order(%struct.page* %8)
  %10 = icmp ne i64 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @ion_page_pool_add(%struct.ion_page_pool* %13, %struct.page* %14)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @compound_order(%struct.page*) #1

declare dso_local i32 @ion_page_pool_add(%struct.ion_page_pool*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
