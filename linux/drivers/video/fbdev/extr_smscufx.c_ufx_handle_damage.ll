; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_handle_damage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_handle_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.urb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ufx_handle_damage unable to get urb\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error submitting URB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32, i32, i32, i32)* @ufx_handle_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_handle_damage(%struct.ufx_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufx_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  store %struct.ufx_data* %0, %struct.ufx_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i64 @ALIGN(i32 %19, i32 4)
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %31 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %29, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %42 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37, %26, %23, %5
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %126

51:                                               ; preds = %37
  %52 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %53 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %52, i32 0, i32 0
  %54 = call i32 @atomic_read(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %126

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %125

62:                                               ; preds = %58
  %63 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %64 = call %struct.urb* @ufx_get_urb(%struct.ufx_data* %63)
  store %struct.urb* %64, %struct.urb** %17, align 8
  %65 = load %struct.urb*, %struct.urb** %17, align 8
  %66 = icmp ne %struct.urb* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %126

69:                                               ; preds = %62
  %70 = load %struct.urb*, %struct.urb** %17, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %73, 2
  %75 = add nsw i32 24, %74
  %76 = icmp slt i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.urb*, %struct.urb** %17, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 24
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %12, align 8
  %85 = udiv i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @min(i32 %87, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load %struct.urb*, %struct.urb** %17, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.urb*, %struct.urb** %17, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memset(i32 %94, i32 0, i32 %97)
  %99 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %100 = load %struct.urb*, %struct.urb** %17, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @ufx_raw_rect(%struct.ufx_data* %99, i32 %102, i32 %103, i32 %106, i32 %107, i32 %108)
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %110, %112
  %114 = add i64 24, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %13, align 4
  %116 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %117 = load %struct.urb*, %struct.urb** %17, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @ufx_submit_urb(%struct.ufx_data* %116, %struct.urb* %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @check_warn_return(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %16, align 4
  br label %58

125:                                              ; preds = %58
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %67, %56, %48
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.urb* @ufx_get_urb(%struct.ufx_data*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ufx_raw_rect(%struct.ufx_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ufx_submit_urb(%struct.ufx_data*, %struct.urb*, i32) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
