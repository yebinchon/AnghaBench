; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_decode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i64, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i810fb_par = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PIXCONF8 = common dso_local global i32 0, align 4
@BPP8 = common dso_local global i32 0, align 4
@PIXCONF15 = common dso_local global i32 0, align 4
@PIXCONF16 = common dso_local global i32 0, align 4
@BPP16 = common dso_local global i32 0, align 4
@PIXCONF24 = common dso_local global i32 0, align 4
@BPP24 = common dso_local global i32 0, align 4
@PIXCONF32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.i810fb_par*)* @decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_var(%struct.fb_var_screeninfo* %0, %struct.i810fb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.i810fb_par* %1, %struct.i810fb_par** %4, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %78 [
    i32 8, label %24
    i32 16, label %35
    i32 24, label %57
    i32 32, label %68
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @PIXCONF8, align 4
  %26 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %27 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %29 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %31 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @BPP8, align 4
  %33 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %34 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %78

35:                                               ; preds = %2
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @PIXCONF15, align 4
  %43 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %44 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @PIXCONF16, align 4
  %47 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %48 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %51 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %50, i32 0, i32 1
  store i32 16, i32* %51, align 4
  %52 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %53 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %52, i32 0, i32 2
  store i32 2, i32* %53, align 4
  %54 = load i32, i32* @BPP16, align 4
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %56 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %78

57:                                               ; preds = %2
  %58 = load i32, i32* @PIXCONF24, align 4
  %59 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %60 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %62 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %61, i32 0, i32 1
  store i32 32, i32* %62, align 4
  %63 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %64 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %63, i32 0, i32 2
  store i32 3, i32* %64, align 4
  %65 = load i32, i32* @BPP24, align 4
  %66 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %67 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %78

68:                                               ; preds = %2
  %69 = load i32, i32* @PIXCONF32, align 4
  %70 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %71 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %73 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %75 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %74, i32 0, i32 2
  store i32 4, i32* %75, align 4
  %76 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %77 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %76, i32 0, i32 3
  store i32 50331648, i32* %77, align 4
  br label %78

78:                                               ; preds = %2, %68, %57, %49, %24
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 8
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %90 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 134217728
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %98 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %101 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %104 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @i810_calc_dclk(i32 %96, i32* %99, i32* %102, i32* %105)
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %108 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @i810fb_encode_registers(%struct.fb_var_screeninfo* %107, %struct.i810fb_par* %108, i32 %109, i32 %110)
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %113 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %114 = call i32 @i810_get_watermark(%struct.fb_var_screeninfo* %112, %struct.i810fb_par* %113)
  %115 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %116 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @get_line_length(%struct.i810fb_par* %117, i32 %118, i32 %121)
  %123 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %124 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  ret void
}

declare dso_local i32 @i810_calc_dclk(i32, i32*, i32*, i32*) #1

declare dso_local i32 @i810fb_encode_registers(%struct.fb_var_screeninfo*, %struct.i810fb_par*, i32, i32) #1

declare dso_local i32 @i810_get_watermark(%struct.fb_var_screeninfo*, %struct.i810fb_par*) #1

declare dso_local i32 @get_line_length(%struct.i810fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
