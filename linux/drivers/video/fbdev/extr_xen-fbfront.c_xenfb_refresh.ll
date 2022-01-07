; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenfb_info = type { i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenfb_info*, i32, i32, i32, i32)* @xenfb_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_refresh(%struct.xenfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xenfb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xenfb_info* %0, %struct.xenfb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %23 = call i32 @xenfb_handle_resize_dpy(%struct.xenfb_info* %22)
  %24 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %25 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %128

29:                                               ; preds = %5
  %30 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %31 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %30, i32 0, i32 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %35 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %41 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %45 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %51 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %55 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %61 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %65 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %71 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %75 = call i64 @xenfb_queue_full(%struct.xenfb_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %80 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %83 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %86 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %89 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %91 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %90, i32 0, i32 4
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %128

94:                                               ; preds = %73
  %95 = load i32, i32* @INT_MAX, align 4
  %96 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %97 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %99 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %101 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %103 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %105 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %104, i32 0, i32 4
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %94
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %123, %124
  %126 = add nsw i32 %125, 1
  %127 = call i32 @xenfb_do_update(%struct.xenfb_info* %116, i32 %117, i32 %118, i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %28, %77, %115, %111, %94
  ret void
}

declare dso_local i32 @xenfb_handle_resize_dpy(%struct.xenfb_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xenfb_queue_full(%struct.xenfb_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xenfb_do_update(%struct.xenfb_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
