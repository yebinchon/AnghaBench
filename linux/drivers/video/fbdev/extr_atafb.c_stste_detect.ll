; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.atafb_par = type { i32 }

@PCM_8BIT = common dso_local global i32 0, align 4
@DMASND_CTRL_OFF = common dso_local global i32 0, align 4
@tt_dmasnd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@st_mfp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@mono_moni = common dso_local global i32 0, align 4
@atafb_predefined = common dso_local global i32* null, align 8
@EXTD_SHIFTER = common dso_local global i32 0, align 4
@use_hwscroll = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stste_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stste_detect() #0 {
  %1 = alloca %struct.atafb_par, align 4
  %2 = load i32, i32* @PCM_8BIT, align 4
  %3 = call i64 @ATARIHW_PRESENT(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @DMASND_CTRL_OFF, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_dmasnd, i32 0, i32 0), align 4
  %7 = call i32 @udelay(i32 20)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st_mfp, i32 0, i32 0), align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @mono_moni, align 4
  %13 = call i32 @stste_get_par(%struct.atafb_par* %1)
  %14 = load i32*, i32** @atafb_predefined, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @stste_encode_var(i32* %15, %struct.atafb_par* %1)
  %17 = load i32, i32* @EXTD_SHIFTER, align 4
  %18 = call i64 @ATARIHW_PRESENT(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  store i64 0, i64* @use_hwscroll, align 8
  br label %21

21:                                               ; preds = %20, %8
  ret i32 1
}

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @stste_get_par(%struct.atafb_par*) #1

declare dso_local i32 @stste_encode_var(i32*, %struct.atafb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
