; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_goldfishfb.c_goldfish_fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_goldfishfb.c_goldfish_fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @goldfish_fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 1
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %9, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %62, label %25

25:                                               ; preds = %16
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %25
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %34
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 2
  %52 = icmp sgt i32 %46, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53, %43, %34, %25, %16
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %147

65:                                               ; preds = %53
  br label %116

66:                                               ; preds = %2
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %69, %73
  br i1 %74, label %112, label %75

75:                                               ; preds = %66
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %112, label %84

84:                                               ; preds = %75
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %112, label %93

93:                                               ; preds = %84
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  %102 = icmp sgt i32 %96, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %93
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103, %93, %84, %75, %66
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %147

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %65
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %143, label %125

125:                                              ; preds = %116
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %128, %132
  br i1 %133, label %143, label %134

134:                                              ; preds = %125
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %137, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %134, %125, %116
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %147

146:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %143, %112, %62
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
