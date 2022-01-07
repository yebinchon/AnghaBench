; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_get_meta_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_get_meta_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @erofs_get_meta_page(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %5, align 8
  %14 = load %struct.address_space*, %struct.address_space** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.address_space*, %struct.address_space** %5, align 8
  %17 = load i32, i32* @__GFP_FS, align 4
  %18 = xor i32 %17, -1
  %19 = call i32 @mapping_gfp_constraint(%struct.address_space* %16, i32 %18)
  %20 = call %struct.page* @read_cache_page_gfp(%struct.address_space* %14, i32 %15, i32 %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @IS_ERR(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i32 @lock_page(%struct.page* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %28
}

declare dso_local %struct.page* @read_cache_page_gfp(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
