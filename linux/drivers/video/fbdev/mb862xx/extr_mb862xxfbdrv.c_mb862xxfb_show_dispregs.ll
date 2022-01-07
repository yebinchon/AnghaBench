; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_show_dispregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_show_dispregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i32 }

@GC_DCM0 = common dso_local global i32 0, align 4
@GC_L0DY_L0DX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%08x = %08x\0A\00", align 1
@disp = common dso_local global i32 0, align 4
@GC_CPM_CUTC = common dso_local global i32 0, align 4
@GC_CUY1_CUX1 = common dso_local global i32 0, align 4
@GC_DCM1 = common dso_local global i32 0, align 4
@GC_L0WH_L0WW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"geo %08x = %08x\0A\00", align 1
@geo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"draw %08x = %08x\0A\00", align 1
@draw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mb862xxfb_show_dispregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xxfb_show_dispregs(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.mb862xxfb_par*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.fb_info* %12, %struct.fb_info** %7, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %14, align 8
  store %struct.mb862xxfb_par* %15, %struct.mb862xxfb_par** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i32, i32* @GC_DCM0, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %32, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @GC_L0DY_L0DX, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @disp, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @inreg(i32 %25, i32 %26)
  %28 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, 4
  store i32 %34, i32* %10, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* @GC_CPM_CUTC, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %51, %35
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GC_CUY1_CUX1, align 4
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @disp, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @inreg(i32 %44, i32 %45)
  %47 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 4
  store i32 %53, i32* %10, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load i32, i32* @GC_DCM1, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %70, %54
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @GC_L0WH_L0WW, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @disp, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @inreg(i32 %63, i32 %64)
  %66 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 4
  store i32 %72, i32* %10, align 4
  br label %56

73:                                               ; preds = %56
  store i32 1024, i32* %10, align 4
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp ule i32 %75, 1040
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @geo, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @inreg(i32 %80, i32 %81)
  %83 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 4
  store i32 %89, i32* %10, align 4
  br label %74

90:                                               ; preds = %74
  store i32 1024, i32* %10, align 4
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp ule i32 %92, 1040
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @draw, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @inreg(i32 %97, i32 %98)
  %100 = call i32 @sprintf(i8* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load i8*, i8** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %9, align 8
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 4
  store i32 %106, i32* %10, align 4
  br label %91

107:                                              ; preds = %91
  store i32 1088, i32* %10, align 4
  br label %108

108:                                              ; preds = %121, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp ule i32 %109, 1104
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @draw, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @inreg(i32 %114, i32 %115)
  %117 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %9, align 8
  br label %121

121:                                              ; preds = %111
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %122, 4
  store i32 %123, i32* %10, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  ret i32 %130
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @inreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
