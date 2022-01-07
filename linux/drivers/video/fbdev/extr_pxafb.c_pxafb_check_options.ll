; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_check_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxafb_mach_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@LCCR0_INVALID_CONFIG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"machine LCCR0 setting contains illegal bits: %08x\0A\00", align 1
@LCCR3_INVALID_CONFIG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"machine LCCR3 setting contains illegal bits: %08x\0A\00", align 1
@LCCR0_DPD = common dso_local global i32 0, align 4
@LCCR0_PAS = common dso_local global i32 0, align 4
@LCCR0_Pas = common dso_local global i32 0, align 4
@LCCR0_SDS = common dso_local global i32 0, align 4
@LCCR0_Sngl = common dso_local global i32 0, align 4
@LCCR0_CMS = common dso_local global i32 0, align 4
@LCCR0_Mono = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Double Pixel Data (DPD) mode is only valid in passive mono single panel mode\0A\00", align 1
@LCCR0_Act = common dso_local global i32 0, align 4
@LCCR0_Dual = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Dual panel only valid in passive mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Upper and lower margins must be 0 in passive mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.pxafb_mach_info*)* @pxafb_check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxafb_check_options(%struct.device* %0, %struct.pxafb_mach_info* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pxafb_mach_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.pxafb_mach_info* %1, %struct.pxafb_mach_info** %4, align 8
  %5 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %6 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %118

10:                                               ; preds = %2
  %11 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %12 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LCCR0_INVALID_CONFIG_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %20 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LCCR0_INVALID_CONFIG_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %17, %10
  %26 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %27 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LCCR3_INVALID_CONFIG_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %35 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LCCR3_INVALID_CONFIG_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %42 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LCCR0_DPD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %49 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LCCR0_PAS, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @LCCR0_Pas, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %47
  %56 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %57 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LCCR0_SDS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @LCCR0_Sngl, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %65 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LCCR0_CMS, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @LCCR0_Mono, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63, %55, %47
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %63, %40
  %75 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %76 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LCCR0_PAS, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @LCCR0_Act, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %84 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @LCCR0_SDS, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @LCCR0_Dual, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %82, %74
  %94 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %95 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LCCR0_PAS, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @LCCR0_Pas, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %93
  %102 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %103 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %4, align 8
  %110 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108, %101
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %9, %115, %108, %93
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
