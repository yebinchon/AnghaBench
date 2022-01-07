; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setup_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setup_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.uvesafb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.uvesafb_par = type { i64 }
%struct.vbe_mode_ib = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*, %struct.vbe_mode_ib*)* @uvesafb_setup_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_setup_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1, %struct.vbe_mode_ib* %2) #0 {
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.vbe_mode_ib*, align 8
  %7 = alloca %struct.uvesafb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store %struct.vbe_mode_ib* %2, %struct.vbe_mode_ib** %6, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  store %struct.uvesafb_par* %10, %struct.uvesafb_par** %7, align 8
  %11 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %18 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %23 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %28 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %33 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %42 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  br label %49

45:                                               ; preds = %3
  %46 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %47 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi i32 [ %44, %36 ], [ %48, %45 ]
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %58 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 15
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 2
  store i32 16, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %49
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 8
  br i1 %73, label %74, label %123

74:                                               ; preds = %69
  %75 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %76 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %82 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %88 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  %93 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %94 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %100 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %106 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %112 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %6, align 8
  %118 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  br label %148

123:                                              ; preds = %69
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 8, i32* %138, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 8, i32* %141, align 8
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 8, i32* %144, align 8
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %123, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
