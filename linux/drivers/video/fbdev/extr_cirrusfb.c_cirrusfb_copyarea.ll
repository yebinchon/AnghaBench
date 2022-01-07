; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.cirrusfb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.cirrusfb_info = type { i32 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @cirrusfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrusfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.fb_copyarea, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cirrusfb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 4
  %12 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %11, align 8
  store %struct.cirrusfb_info* %12, %struct.cirrusfb_info** %8, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %175

23:                                               ; preds = %2
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %33 = call i32 @cfb_copyarea(%struct.fb_info* %31, %struct.fb_copyarea* %32)
  br label %175

34:                                               ; preds = %23
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %44 = call i32 @memcpy(%struct.fb_copyarea* %5, %struct.fb_copyarea* %43, i32 48)
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %62, %57, %52, %48, %34
  br label %175

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = load i64, i64* %6, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %82, %84
  %86 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %89, %91
  %93 = load i64, i64* %6, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %87
  %102 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %103, %105
  %107 = load i64, i64* %7, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %110, %112
  %114 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %117, %119
  %121 = load i64, i64* %7, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %124, %126
  %128 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %131 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %138 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %139, %141
  %143 = sdiv i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %146 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %149 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %150, %152
  %154 = sdiv i64 %153, 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %157 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %160 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %161, %163
  %165 = sdiv i64 %164, 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %168 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @cirrusfb_BitBLT(i32 %132, i32 %136, i32 %144, i64 %147, i32 %155, i64 %158, i32 %166, i64 %169, i32 %173)
  br label %175

175:                                              ; preds = %129, %72, %30, %22
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @memcpy(%struct.fb_copyarea*, %struct.fb_copyarea*, i32) #1

declare dso_local i32 @cirrusfb_BitBLT(i32, i32, i32, i64, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
