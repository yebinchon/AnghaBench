; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.s3c_fb_win* }
%struct.s3c_fb_win = type { i32, %struct.s3c_fb* }
%struct.s3c_fb = type { i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"blank mode %d\0A\00", align 1
@WINCONx_ENWIN = common dso_local global i64 0, align 8
@WINxMAP_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @s3c_fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s3c_fb_win*, align 8
  %7 = alloca %struct.s3c_fb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %12, align 8
  store %struct.s3c_fb_win* %13, %struct.s3c_fb_win** %6, align 8
  %14 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %15 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %14, i32 0, i32 1
  %16 = load %struct.s3c_fb*, %struct.s3c_fb** %15, align 8
  store %struct.s3c_fb* %16, %struct.s3c_fb** %7, align 8
  %17 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %18 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %21 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %24 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %29 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  %32 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %33 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %36 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = load i32, i32* %8, align 4
  %41 = mul i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i64 @readl(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %107 [
    i32 130, label %46
    i32 131, label %58
    i32 129, label %79
    i32 128, label %106
    i32 132, label %106
  ]

46:                                               ; preds = %2
  %47 = load i64, i64* @WINCONx_ENWIN, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %55 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %2, %46
  %59 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %60 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %59, i32 1)
  %61 = load i64, i64* @WINxMAP_MAP, align 8
  %62 = call i64 @WINxMAP_MAP_COLOUR(i32 0)
  %63 = or i64 %61, %62
  %64 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %65 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %68 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %72, 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @writel(i64 %63, i64 %75)
  %77 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %78 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %77, i32 0)
  br label %112

79:                                               ; preds = %2
  %80 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %81 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %80, i32 1)
  %82 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %83 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %86 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %84, %88
  %90 = load i32, i32* %8, align 4
  %91 = mul i32 %90, 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = call i32 @writel(i64 0, i64 %93)
  %95 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %96 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %95, i32 0)
  %97 = load i64, i64* @WINCONx_ENWIN, align 8
  %98 = load i64, i64* %9, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %103 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %112

106:                                              ; preds = %2, %2
  br label %107

107:                                              ; preds = %2, %106
  %108 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %109 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pm_runtime_put_sync(i32 %110)
  store i32 1, i32* %3, align 4
  br label %149

112:                                              ; preds = %79, %58
  %113 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %114 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %113, i32 1)
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %117 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %120 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %118, %122
  %124 = load i32, i32* %8, align 4
  %125 = mul i32 %124, 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = call i32 @writel(i64 %115, i64 %127)
  %129 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %130 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %131 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 1, i32 0
  %136 = call i32 @s3c_fb_enable(%struct.s3c_fb* %129, i32 %135)
  %137 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %138 = call i32 @shadow_protect_win(%struct.s3c_fb_win* %137, i32 0)
  %139 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %140 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @pm_runtime_put_sync(i32 %141)
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %145 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %112, %107
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @shadow_protect_win(%struct.s3c_fb_win*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @WINxMAP_MAP_COLOUR(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @s3c_fb_enable(%struct.s3c_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
