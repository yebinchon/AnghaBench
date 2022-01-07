; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @unifb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unifb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.fb_copyarea, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %8 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %9 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %13 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %17 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  store i64 %18, i64* %19, align 8
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  store i64 %22, i64* %23, align 8
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  store i64 %26, i64* %27, align 8
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  store i64 %30, i64* %31, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %41 = call i32 @sys_copyarea(%struct.fb_info* %39, %struct.fb_copyarea* %40)
  br label %138

42:                                               ; preds = %2
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68, %63, %58, %54, %42
  br label %138

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = load i64, i64* %6, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %88, %90
  %92 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %79
  %94 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %95, %97
  %99 = load i64, i64* %6, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %102, %104
  %106 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %109, %111
  %113 = load i64, i64* %7, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %116, %118
  %120 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %115, %107
  %122 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %123, %125
  %127 = load i64, i64* %7, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %130, %132
  %134 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %121
  %136 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %137 = call i32 @unifb_prim_copyarea(%struct.fb_info* %136, %struct.fb_copyarea* %5)
  br label %138

138:                                              ; preds = %135, %78, %38
  ret void
}

declare dso_local i32 @sys_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @unifb_prim_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
