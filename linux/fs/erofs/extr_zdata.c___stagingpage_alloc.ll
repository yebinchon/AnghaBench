; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c___stagingpage_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c___stagingpage_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.list_head = type { i32 }

@Z_EROFS_MAPPING_STAGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.list_head*, i32)* @__stagingpage_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__stagingpage_alloc(%struct.list_head* %0, i32 %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.page* @erofs_allocpage(%struct.list_head* %6, i32 %7, i32 1)
  store %struct.page* %8, %struct.page** %5, align 8
  %9 = load i32, i32* @Z_EROFS_MAPPING_STAGING, align 4
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %12
}

declare dso_local %struct.page* @erofs_allocpage(%struct.list_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
