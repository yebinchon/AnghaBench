; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_4__, i64, %struct.ufx_data* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ufx_data = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"set_par mode %dx%d\00", align 1
@UFX_DEFIO_WRITE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ufx_ops_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_ops_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.ufx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 4
  %9 = load %struct.ufx_data*, %struct.ufx_data** %8, align 8
  store %struct.ufx_data* %9, %struct.ufx_data** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = call i32 @ufx_set_vid_mode(%struct.ufx_data* %19, %struct.TYPE_6__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %1
  %26 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %48, %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 14310, i32* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ufx_handle_damage(%struct.ufx_data* %52, i32 0, i32 0, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %51, %25, %1
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @UFX_DEFIO_WRITE_DELAY, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @ufx_set_vid_mode(%struct.ufx_data*, %struct.TYPE_6__*) #1

declare dso_local i32 @ufx_handle_damage(%struct.ufx_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
