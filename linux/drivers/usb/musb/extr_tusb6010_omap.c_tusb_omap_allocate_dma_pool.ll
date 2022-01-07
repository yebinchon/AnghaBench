; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_allocate_dma_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_allocate_dma_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tusb_omap_dma = type { %struct.tusb_dma_data*, i64, %struct.TYPE_2__ }
%struct.tusb_dma_data = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.musb* }
%struct.musb = type { i32 }

@MAX_DMAREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dmareq%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to request %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tusb_omap_dma*)* @tusb_omap_allocate_dma_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_allocate_dma_pool(%struct.tusb_omap_dma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tusb_omap_dma*, align 8
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tusb_dma_data*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.tusb_dma_data*, align 8
  store %struct.tusb_omap_dma* %0, %struct.tusb_omap_dma** %3, align 8
  %10 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %3, align 8
  %11 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.musb*, %struct.musb** %12, align 8
  store %struct.musb* %13, %struct.musb** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %66, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_DMAREQ, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %14
  %19 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %3, align 8
  %20 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %19, i32 0, i32 0
  %21 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %21, i64 %23
  store %struct.tusb_dma_data* %24, %struct.tusb_dma_data** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %3, align 8
  %29 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27, %18
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.musb*, %struct.musb** %4, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %40 = call i32 @dma_request_chan(i32 %38, i8* %39)
  %41 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %7, align 8
  %42 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %7, align 8
  %44 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = load %struct.musb*, %struct.musb** %4, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %7, align 8
  %55 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %70

58:                                               ; preds = %32
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %7, align 8
  %61 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %27
  %63 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %7, align 8
  %64 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %14

69:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %96

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %3, align 8
  %76 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %75, i32 0, i32 0
  %77 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %77, i64 %79
  store %struct.tusb_dma_data* %80, %struct.tusb_dma_data** %9, align 8
  %81 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %9, align 8
  %82 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.tusb_dma_data*, %struct.tusb_dma_data** %9, align 8
  %87 = getelementptr inbounds %struct.tusb_dma_data, %struct.tusb_dma_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dma_release_channel(i32 %88)
  br label %90

90:                                               ; preds = %85, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %69
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dma_request_chan(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
