; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32*, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Enabling LCD controller\0A\00", align 1
@LCCR3 = common dso_local global i64 0, align 8
@LCCR2 = common dso_local global i64 0, align 8
@LCCR1 = common dso_local global i64 0, align 8
@LCCR0_LEN = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i64 0, align 8
@DBAR1 = common dso_local global i64 0, align 8
@DBAR2 = common dso_local global i64 0, align 8
@SHANNON_GPIO_DISP_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DBAR1: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DBAR2: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"LCCR0: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LCCR1: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LCCR2: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"LCCR3: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_enable_controller(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  %3 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = call i32 (i32, i8*, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 53247
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @palette_pbs(i32* %15)
  %17 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_prepare_enable(i32 %25)
  %27 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LCCR3, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %29, i64 %34)
  %36 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LCCR2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  %45 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %49 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LCCR1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 %47, i64 %52)
  %54 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %55 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LCCR0_LEN, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LCCR0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel_relaxed(i32 %59, i64 %64)
  %66 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %70 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DBAR1, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i32 %68, i64 %73)
  %75 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %76 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %79 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DBAR2, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel_relaxed(i32 %77, i64 %82)
  %84 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %85 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LCCR0_LEN, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %90 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LCCR0, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 %88, i64 %93)
  %95 = call i64 (...) @machine_is_shannon()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %1
  %98 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %99 = call i32 @gpio_set_value(i32 %98, i32 1)
  br label %100

100:                                              ; preds = %97, %1
  %101 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %102 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %105 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DBAR1, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl_relaxed(i64 %108)
  %110 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %112 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %115 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DBAR2, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl_relaxed(i64 %118)
  %120 = call i32 (i32, i8*, ...) @dev_dbg(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %122 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %125 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LCCR0, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl_relaxed(i64 %128)
  %130 = call i32 (i32, i8*, ...) @dev_dbg(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %132 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %135 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LCCR1, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @readl_relaxed(i64 %138)
  %140 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %142 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %145 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LCCR2, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @readl_relaxed(i64 %148)
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %152 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %155 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LCCR3, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readl_relaxed(i64 %158)
  %160 = call i32 (i32, i8*, ...) @dev_dbg(i32 %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @palette_pbs(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @machine_is_shannon(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
