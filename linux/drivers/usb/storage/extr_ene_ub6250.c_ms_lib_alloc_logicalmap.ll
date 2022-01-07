; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_alloc_logicalmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_alloc_logicalmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8**, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_LB_NOT_USED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @ms_lib_alloc_logicalmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_alloc_logicalmap(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %9, %struct.ene_ub6250_info** %5, align 8
  %10 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %11 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc_array(i32 %13, i32 4, i32 %14)
  %16 = bitcast i8* %15 to i8**
  %17 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %18 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i8** %16, i8*** %19, align 8
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc_array(i32 %23, i32 4, i32 %24)
  %26 = bitcast i8* %25 to i8**
  %27 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %28 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8** %26, i8*** %29, align 8
  %30 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %31 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = icmp eq i8** %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %37 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = icmp eq i8** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %1
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = call i32 @ms_lib_free_logicalmap(%struct.us_data* %42)
  store i32 -1, i32* %2, align 4
  br label %85

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %48 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i8*, i8** @MS_LB_NOT_USED, align 8
  %54 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %55 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %53, i8** %60, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %45

64:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %68 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load i8*, i8** @MS_LB_NOT_USED, align 8
  %74 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %75 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %73, i8** %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %65

84:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %41
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ms_lib_free_logicalmap(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
