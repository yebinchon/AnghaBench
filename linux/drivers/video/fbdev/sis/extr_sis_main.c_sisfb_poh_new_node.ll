; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_new_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SIS_OH = type { %struct.SIS_OH* }
%struct.SIS_HEAP = type { %struct.SIS_OH*, %struct.SIS_OHALLOC* }
%struct.SIS_OHALLOC = type { %struct.SIS_OH*, %struct.SIS_OHALLOC* }

@SIS_OH_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SIS_OH* (%struct.SIS_HEAP*)* @sisfb_poh_new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SIS_OH* @sisfb_poh_new_node(%struct.SIS_HEAP* %0) #0 {
  %2 = alloca %struct.SIS_OH*, align 8
  %3 = alloca %struct.SIS_HEAP*, align 8
  %4 = alloca %struct.SIS_OHALLOC*, align 8
  %5 = alloca %struct.SIS_OH*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.SIS_HEAP* %0, %struct.SIS_HEAP** %3, align 8
  %8 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %9 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %8, i32 0, i32 0
  %10 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %11 = icmp eq %struct.SIS_OH* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load i32, i32* @SIS_OH_ALLOC_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.SIS_OHALLOC* @kmalloc(i32 %13, i32 %14)
  store %struct.SIS_OHALLOC* %15, %struct.SIS_OHALLOC** %4, align 8
  %16 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %4, align 8
  %17 = icmp ne %struct.SIS_OHALLOC* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.SIS_OH* null, %struct.SIS_OH** %2, align 8
  br label %72

19:                                               ; preds = %12
  %20 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %21 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %20, i32 0, i32 1
  %22 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %21, align 8
  %23 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %4, align 8
  %24 = getelementptr inbounds %struct.SIS_OHALLOC, %struct.SIS_OHALLOC* %23, i32 0, i32 1
  store %struct.SIS_OHALLOC* %22, %struct.SIS_OHALLOC** %24, align 8
  %25 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %4, align 8
  %26 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %27 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %26, i32 0, i32 1
  store %struct.SIS_OHALLOC* %25, %struct.SIS_OHALLOC** %27, align 8
  %28 = load i32, i32* @SIS_OH_ALLOC_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 16
  %31 = udiv i64 %30, 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  %33 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %4, align 8
  %34 = getelementptr inbounds %struct.SIS_OHALLOC, %struct.SIS_OHALLOC* %33, i32 0, i32 0
  %35 = load %struct.SIS_OH*, %struct.SIS_OH** %34, align 8
  %36 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %35, i64 0
  store %struct.SIS_OH* %36, %struct.SIS_OH** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %50, %19
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %45 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %44, i64 1
  %46 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %47 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %46, i32 0, i32 0
  store %struct.SIS_OH* %45, %struct.SIS_OH** %47, align 8
  %48 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %49 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %48, i64 1
  store %struct.SIS_OH* %49, %struct.SIS_OH** %5, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %55 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %54, i32 0, i32 0
  store %struct.SIS_OH* null, %struct.SIS_OH** %55, align 8
  %56 = load %struct.SIS_OHALLOC*, %struct.SIS_OHALLOC** %4, align 8
  %57 = getelementptr inbounds %struct.SIS_OHALLOC, %struct.SIS_OHALLOC* %56, i32 0, i32 0
  %58 = load %struct.SIS_OH*, %struct.SIS_OH** %57, align 8
  %59 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %58, i64 0
  %60 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %61 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %60, i32 0, i32 0
  store %struct.SIS_OH* %59, %struct.SIS_OH** %61, align 8
  br label %62

62:                                               ; preds = %53, %1
  %63 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %64 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %63, i32 0, i32 0
  %65 = load %struct.SIS_OH*, %struct.SIS_OH** %64, align 8
  store %struct.SIS_OH* %65, %struct.SIS_OH** %5, align 8
  %66 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %67 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %66, i32 0, i32 0
  %68 = load %struct.SIS_OH*, %struct.SIS_OH** %67, align 8
  %69 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %70 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %69, i32 0, i32 0
  store %struct.SIS_OH* %68, %struct.SIS_OH** %70, align 8
  %71 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  store %struct.SIS_OH* %71, %struct.SIS_OH** %2, align 8
  br label %72

72:                                               ; preds = %62, %18
  %73 = load %struct.SIS_OH*, %struct.SIS_OH** %2, align 8
  ret %struct.SIS_OH* %73
}

declare dso_local %struct.SIS_OHALLOC* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
