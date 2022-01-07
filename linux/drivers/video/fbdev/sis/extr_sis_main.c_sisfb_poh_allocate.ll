; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SIS_OH = type { i64, i32, %struct.SIS_OH* }
%struct.SIS_HEAP = type { i64, %struct.SIS_OH, %struct.SIS_OH }

@.str = private unnamed_addr constant [40 x i8] c"sisfb: Can't allocate %dk video memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SIS_OH* (%struct.SIS_HEAP*, i64)* @sisfb_poh_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SIS_OH* @sisfb_poh_allocate(%struct.SIS_HEAP* %0, i64 %1) #0 {
  %3 = alloca %struct.SIS_OH*, align 8
  %4 = alloca %struct.SIS_HEAP*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.SIS_OH*, align 8
  %7 = alloca %struct.SIS_OH*, align 8
  %8 = alloca i32, align 4
  store %struct.SIS_HEAP* %0, %struct.SIS_HEAP** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %11 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = udiv i32 %16, 1024
  %18 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.SIS_OH* null, %struct.SIS_OH** %3, align 8
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %21 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %21, i32 0, i32 2
  %23 = load %struct.SIS_OH*, %struct.SIS_OH** %22, align 8
  store %struct.SIS_OH* %23, %struct.SIS_OH** %6, align 8
  br label %24

24:                                               ; preds = %36, %19
  %25 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %26 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %27 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %26, i32 0, i32 2
  %28 = icmp ne %struct.SIS_OH* %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %32 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %38 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %37, i32 0, i32 2
  %39 = load %struct.SIS_OH*, %struct.SIS_OH** %38, align 8
  store %struct.SIS_OH* %39, %struct.SIS_OH** %6, align 8
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  %46 = udiv i32 %45, 1024
  %47 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46)
  store %struct.SIS_OH* null, %struct.SIS_OH** %3, align 8
  br label %97

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %51 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  store %struct.SIS_OH* %55, %struct.SIS_OH** %7, align 8
  %56 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %57 = call i32 @sisfb_delete_node(%struct.SIS_OH* %56)
  br label %85

58:                                               ; preds = %48
  %59 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %60 = call %struct.SIS_OH* @sisfb_poh_new_node(%struct.SIS_HEAP* %59)
  store %struct.SIS_OH* %60, %struct.SIS_OH** %7, align 8
  %61 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %62 = icmp eq %struct.SIS_OH* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store %struct.SIS_OH* null, %struct.SIS_OH** %3, align 8
  br label %97

64:                                               ; preds = %58
  %65 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %66 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %69 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %72 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %75 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %82 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %64, %54
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %88 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %92 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %91, i32 0, i32 1
  store %struct.SIS_OH* %92, %struct.SIS_OH** %6, align 8
  %93 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %94 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %95 = call i32 @sisfb_insert_node(%struct.SIS_OH* %93, %struct.SIS_OH* %94)
  %96 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  store %struct.SIS_OH* %96, %struct.SIS_OH** %3, align 8
  br label %97

97:                                               ; preds = %85, %63, %43, %14
  %98 = load %struct.SIS_OH*, %struct.SIS_OH** %3, align 8
  ret %struct.SIS_OH* %98
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @sisfb_delete_node(%struct.SIS_OH*) #1

declare dso_local %struct.SIS_OH* @sisfb_poh_new_node(%struct.SIS_HEAP*) #1

declare dso_local i32 @sisfb_insert_node(%struct.SIS_OH*, %struct.SIS_OH*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
