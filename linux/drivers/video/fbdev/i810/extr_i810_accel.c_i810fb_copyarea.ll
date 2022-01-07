; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_i810fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_i810fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.i810fb_par* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i810fb_par = type { i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@LOCKUP = common dso_local global i32 0, align 4
@INCREMENT = common dso_local global i32 0, align 4
@DECREMENT = common dso_local global i32 0, align 4
@PAT_COPY_ROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.i810fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = load %struct.i810fb_par*, %struct.i810fb_par** %17, align 8
  store %struct.i810fb_par* %18, %struct.i810fb_par** %5, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %26 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LOCKUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %33 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %24, %2
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %39 = call i32 @cfb_copyarea(%struct.fb_info* %37, %struct.fb_copyarea* %38)
  br label %149

40:                                               ; preds = %31
  %41 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %45 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %49 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %52 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %59 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %66 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %40
  %75 = load i32, i32* @INCREMENT, align 4
  store i32 %75, i32* %15, align 4
  br label %86

76:                                               ; preds = %40
  %77 = load i32, i32* @DECREMENT, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %76, %74
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %10, align 4
  br label %110

95:                                               ; preds = %86
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 0, %99
  %101 = and i32 %100, 65535
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %95, %90
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %115, %119
  %121 = add nsw i32 %114, %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %13, align 4
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %128, %132
  %134 = add nsw i32 %127, %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @PAT_COPY_ROP, align 4
  %144 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %145 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %148 = call i32 @source_copy_blit(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %146, %struct.fb_info* %147)
  br label %149

149:                                              ; preds = %110, %36
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @source_copy_blit(i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
