; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.lynxfb_par* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lynxfb_par = type { %struct.TYPE_5__, %struct.sm750_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.sm750_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i64, i32)* }
%struct.fb_fillrect = type { i64, i32, i32, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@ROP_COPY = common dso_local global i32 0, align 4
@HW_ROP2_XOR = common dso_local global i32 0, align 4
@HW_ROP2_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @lynxfb_ops_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lynxfb_ops_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.lynxfb_par*, align 8
  %6 = alloca %struct.sm750_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 4
  %21 = load %struct.lynxfb_par*, %struct.lynxfb_par** %20, align 8
  store %struct.lynxfb_par* %21, %struct.lynxfb_par** %5, align 8
  %22 = load %struct.lynxfb_par*, %struct.lynxfb_par** %5, align 8
  %23 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %22, i32 0, i32 1
  %24 = load %struct.sm750_dev*, %struct.sm750_dev** %23, align 8
  store %struct.sm750_dev* %24, %struct.sm750_dev** %6, align 8
  %25 = load %struct.lynxfb_par*, %struct.lynxfb_par** %5, align 8
  %26 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 3
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %42 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %54

44:                                               ; preds = %18
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i64*
  %49 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %50 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  br label %54

54:                                               ; preds = %44, %40
  %55 = phi i64 [ %43, %40 ], [ %53, %44 ]
  store i64 %55, i64* %11, align 8
  %56 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ROP_COPY, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @HW_ROP2_XOR, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @HW_ROP2_COPY, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  %67 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %68 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %71 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i64, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i64, i32)** %72, align 8
  %74 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %75 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %80 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %83 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %86 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %89 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 %73(%struct.TYPE_8__* %75, i32 %76, i32 %77, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i64 %91, i32 %92)
  %94 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %95 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  br label %97

97:                                               ; preds = %65, %17
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
