; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_fixup_burst_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_fixup_burst_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32, i32, i64, i32, i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @das1800_ai_fixup_burst_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_fixup_burst_timing(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = call i32 @comedi_check_trigger_arg_max(i32* %5, i32 64000)
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 130, label %22
    i32 128, label %25
  ]

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %2, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DIV_ROUND_CLOSEST(i32 %20, i32 1000)
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = udiv i32 %23, 1000
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 1000)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %22, %19
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 %31, 1000
  %33 = call i32 @comedi_check_trigger_arg_is(i32* %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRIG_TIMER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %28
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = mul i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @comedi_check_trigger_arg_min(i32* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %60, i32* %5, i32 %63)
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @comedi_check_trigger_arg_is(i32* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %41, %28
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
