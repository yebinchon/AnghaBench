; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_do_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_do_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.intelfb_info = type { i32, i32 }

@DSPACNTR = common dso_local global i32 0, align 4
@DISPPLANE_PLANE_ENABLE = common dso_local global i32 0, align 4
@DSPABASE = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@ADPA_DPMS_CONTROL_MASK = common dso_local global i32 0, align 4
@ADPA_DPMS_D0 = common dso_local global i32 0, align 4
@ADPA_DPMS_D1 = common dso_local global i32 0, align 4
@ADPA_DPMS_D2 = common dso_local global i32 0, align 4
@ADPA_DPMS_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_do_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %7)
  store %struct.intelfb_info* %8, %struct.intelfb_info** %5, align 8
  %9 = load i32, i32* @DSPACNTR, align 4
  %10 = call i32 @INREG(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* @DSPACNTR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @OUTREG(i32 %23, i32 %24)
  %26 = load i32, i32* @DSPABASE, align 4
  %27 = call i32 @INREG(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @DSPABASE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @OUTREG(i32 %28, i32 %29)
  %31 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %32 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %40 = call i32 @intelfbhw_cursor_hide(%struct.intelfb_info* %39)
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %43 = call i32 @intelfbhw_cursor_show(%struct.intelfb_info* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %46 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %22
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %50 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ADPA, align 4
  %52 = call i32 @INREG(i32 %51)
  %53 = load i32, i32* @ADPA_DPMS_CONTROL_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  switch i32 %56, label %73 [
    i32 129, label %57
    i32 131, label %57
    i32 128, label %61
    i32 132, label %65
    i32 130, label %69
  ]

57:                                               ; preds = %47, %47
  %58 = load i32, i32* @ADPA_DPMS_D0, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %73

61:                                               ; preds = %47
  %62 = load i32, i32* @ADPA_DPMS_D1, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %73

65:                                               ; preds = %47
  %66 = load i32, i32* @ADPA_DPMS_D2, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %73

69:                                               ; preds = %47
  %70 = load i32, i32* @ADPA_DPMS_D3, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %47, %69, %65, %61, %57
  %74 = load i32, i32* @ADPA, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @OUTREG(i32 %74, i32 %75)
  ret void
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @intelfbhw_cursor_hide(%struct.intelfb_info*) #1

declare dso_local i32 @intelfbhw_cursor_show(%struct.intelfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
