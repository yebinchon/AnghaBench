; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_output_setMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_output_setMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynxfb_output = type { i32*, i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_fix_screeninfo = type { i32 }

@SM750LE = common dso_local global i64 0, align 8
@sm750_primary = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"primary channel\0A\00", align 1
@sm750_panel = common dso_local global i32 0, align 4
@do_LCD1_PRI = common dso_local global i32 0, align 4
@sm750_crt = common dso_local global i32 0, align 4
@do_CRT_PRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"secondary channel\0A\00", align 1
@do_LCD1_SEC = common dso_local global i32 0, align 4
@do_CRT_SEC = common dso_local global i32 0, align 4
@DISPLAY_CONTROL_750LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ddk setlogicdispout done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750_output_setMode(%struct.lynxfb_output* %0, %struct.fb_var_screeninfo* %1, %struct.fb_fix_screeninfo* %2) #0 {
  %4 = alloca %struct.lynxfb_output*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lynxfb_output* %0, %struct.lynxfb_output** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store %struct.fb_fix_screeninfo* %2, %struct.fb_fix_screeninfo** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %12 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = call i64 (...) @sm750_get_chip_type()
  %16 = load i64, i64* @SM750LE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @sm750_primary, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %25 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @sm750_panel, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @do_LCD1_PRI, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %36 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @sm750_crt, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @do_CRT_PRI, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %34
  br label %70

46:                                               ; preds = %18
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %49 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @sm750_panel, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @do_LCD1_SEC, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load %struct.lynxfb_output*, %struct.lynxfb_output** %4, align 8
  %60 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @sm750_crt, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @do_CRT_SEC, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ddk750_set_logical_disp_out(i32 %71)
  br label %81

73:                                               ; preds = %3
  %74 = load i32, i32* @DISPLAY_CONTROL_750LE, align 4
  %75 = call i32 @peek32(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, 15
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @DISPLAY_CONTROL_750LE, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @poke32(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ddk750_set_logical_disp_out(i32) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
