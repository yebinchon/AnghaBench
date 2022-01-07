; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_alloc_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_alloc_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfb_info = type { i32, i32, i32*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_IGS_CYBER2000 = common dso_local global i32 0, align 4
@FB_ACCEL_IGS_CYBER2010 = common dso_local global i32 0, align 4
@FB_ACCEL_IGS_CYBER5000 = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@cyber2000fb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@NR_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfb_info* (i32, i8*)* @cyberpro_alloc_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfb_info* @cyberpro_alloc_fb_info(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.cfb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cfb_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cfb_info* @kzalloc(i32 112, i32 %7)
  store %struct.cfb_info* %8, %struct.cfb_info** %6, align 8
  %9 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %10 = icmp ne %struct.cfb_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.cfb_info* null, %struct.cfb_info** %3, align 8
  br label %149

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %15 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %20 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %19, i32 0, i32 1
  store i32 40690, i32* %20, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %23 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %22, i32 0, i32 1
  store i32 69842, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %26 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %30 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 2, i32* %32, align 4
  %33 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %34 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 4, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 131
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %41 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 8, i32* %43, align 4
  br label %49

44:                                               ; preds = %24
  %45 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %46 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 6, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %51 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strcpy(i32 %54, i8* %55)
  %57 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %58 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %59 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %57, i32* %61, align 8
  %62 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %63 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %67 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %71 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %75 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %4, align 4
  switch i32 %78, label %102 [
    i32 128, label %79
    i32 131, label %84
    i32 130, label %90
    i32 129, label %96
  ]

79:                                               ; preds = %49
  %80 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %81 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %102

84:                                               ; preds = %49
  %85 = load i32, i32* @FB_ACCEL_IGS_CYBER2000, align 4
  %86 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %87 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  br label %102

90:                                               ; preds = %49
  %91 = load i32, i32* @FB_ACCEL_IGS_CYBER2010, align 4
  %92 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %93 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  br label %102

96:                                               ; preds = %49
  %97 = load i32, i32* @FB_ACCEL_IGS_CYBER5000, align 4
  %98 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %99 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %49, %96, %90, %84, %79
  %103 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %104 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %108 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %109 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32 %107, i32* %111, align 4
  %112 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %113 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 8
  %116 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %117 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 4
  %120 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %121 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %122 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 8
  %125 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %126 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  store i32* @cyber2000fb_ops, i32** %127, align 8
  %128 = load i32, i32* @FBINFO_DEFAULT, align 4
  %129 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %132 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %135 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %138 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %141 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %140, i32 0, i32 4
  %142 = call i32 @spin_lock_init(i32* %141)
  %143 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %144 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* @NR_PALETTE, align 4
  %147 = call i32 @fb_alloc_cmap(i32* %145, i32 %146, i32 0)
  %148 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  store %struct.cfb_info* %148, %struct.cfb_info** %3, align 8
  br label %149

149:                                              ; preds = %102, %11
  %150 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  ret %struct.cfb_info* %150
}

declare dso_local %struct.cfb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
