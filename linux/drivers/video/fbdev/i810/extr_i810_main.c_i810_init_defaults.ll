; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_init_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_init_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_par = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@voffset = common dso_local global i32 0, align 4
@v_offset_default = common dso_local global i32 0, align 4
@vram = common dso_local global i32 0, align 4
@accel = common dso_local global i64 0, align 8
@HAS_ACCELERATION = common dso_local global i32 0, align 4
@sync = common dso_local global i64 0, align 8
@ALWAYS_SYNC = common dso_local global i32 0, align 4
@ddc3 = common dso_local global i64 0, align 8
@bpp = common dso_local global i32 0, align 4
@i810fb_ops = common dso_local global i32 0, align 4
@xres = common dso_local global i32 0, align 4
@yres = common dso_local global i32 0, align 4
@vyres = common dso_local global i32 0, align 4
@dcolor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i810fb_par*, %struct.fb_info*)* @i810_init_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_init_defaults(%struct.i810fb_par* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.i810fb_par*, align 8
  %4 = alloca %struct.fb_info*, align 8
  store %struct.i810fb_par* %0, %struct.i810fb_par** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %6 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %5, i32 0, i32 4
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load i32, i32* @voffset, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @voffset, align 4
  store i32 %11, i32* @v_offset_default, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %14 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 33554432
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 16, i32* @v_offset_default, align 4
  br label %20

19:                                               ; preds = %12
  store i32 8, i32* @v_offset_default, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* @vram, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* @vram, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* @accel, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @HAS_ACCELERATION, align 4
  %30 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %31 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i64, i64* @sync, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @ALWAYS_SYNC, align 4
  %39 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %40 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i64, i64* @ddc3, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 2
  %48 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %49 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @bpp, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 8, i32* @bpp, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* @i810fb_ops, align 4
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %56 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @xres, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @xres, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 640, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @yres, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @yres, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 480, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* @vyres, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @vram, align 4
  %85 = shl i32 %84, 20
  %86 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @bpp, align 4
  %91 = mul nsw i32 %89, %90
  %92 = ashr i32 %91, 3
  %93 = sdiv i32 %85, %92
  store i32 %93, i32* @vyres, align 4
  br label %94

94:                                               ; preds = %83, %80
  %95 = load i32, i32* @vyres, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @bpp, align 4
  %100 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i64, i64* @dcolor, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %94
  %110 = load %struct.i810fb_par*, %struct.i810fb_par** %3, align 8
  %111 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HAS_ACCELERATION, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %122 = call i32 @i810_init_monspecs(%struct.fb_info* %121)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i810_init_monspecs(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
