; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_NVDmaWait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_NVDmaWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { i32, i32, i32, i32, i32 }

@SKIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DMA Get lockup\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nvidiafb: DMA Wait Lockup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @NVDmaWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVDmaWait(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvidia_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  store %struct.nvidia_par* %11, %struct.nvidia_par** %5, align 8
  store i32 1000000000, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %119, %2
  %15 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %16 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %26 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %20, %14
  %31 = phi i1 [ false, %20 ], [ false, %14 ], [ %29, %24 ]
  br i1 %31, label %32, label %120

32:                                               ; preds = %30
  %33 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %34 = call i32 @READ_GET(%struct.nvidia_par* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %36 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %110

40:                                               ; preds = %32
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %42 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %45 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %49 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %40
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %57 = call i32 @NVDmaNext(%struct.nvidia_par* %56, i32 536870912)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SKIPS, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %63 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SKIPS, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %69 = load i32, i32* @SKIPS, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @WRITE_PUT(%struct.nvidia_par* %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  store i32 1000000000, i32* %8, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %75 = call i32 @READ_GET(%struct.nvidia_par* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SKIPS, align 4
  %83 = icmp sle i32 %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %73, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %92 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %55
  %95 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %96 = load i32, i32* @SKIPS, align 4
  %97 = call i32 @WRITE_PUT(%struct.nvidia_par* %95, i32 %96)
  %98 = load i32, i32* @SKIPS, align 4
  %99 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %100 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %102 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SKIPS, align 4
  %105 = add nsw i32 %104, 1
  %106 = sub nsw i32 %103, %105
  %107 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %108 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %40
  br label %119

110:                                              ; preds = %32
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %113 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %118 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %109
  br label %14

120:                                              ; preds = %30
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %126 = call i32 @nvidiafb_safe_mode(%struct.fb_info* %125)
  br label %127

127:                                              ; preds = %123, %120
  ret void
}

declare dso_local i32 @READ_GET(%struct.nvidia_par*) #1

declare dso_local i32 @NVDmaNext(%struct.nvidia_par*, i32) #1

declare dso_local i32 @WRITE_PUT(%struct.nvidia_par*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nvidiafb_safe_mode(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
