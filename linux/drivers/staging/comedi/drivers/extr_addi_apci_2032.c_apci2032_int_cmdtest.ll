; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_2032.c_apci2032_int_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_2032.c_apci2032_int_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci2032_int_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci2032_int_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %10 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* @TRIG_NOW, align 4
  %12 = call i32 @comedi_check_trigger_src(i32* %10, i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* @TRIG_EXT, align 4
  %18 = call i32 @comedi_check_trigger_src(i32* %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 2
  %23 = load i32, i32* @TRIG_NOW, align 4
  %24 = call i32 @comedi_check_trigger_src(i32* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 3
  %29 = load i32, i32* @TRIG_COUNT, align 4
  %30 = call i32 @comedi_check_trigger_src(i32* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 4
  %35 = load i32, i32* @TRIG_COUNT, align 4
  %36 = load i32, i32* @TRIG_NONE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @comedi_check_trigger_src(i32* %34, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %100

44:                                               ; preds = %3
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @comedi_check_trigger_is_unique(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 2, i32* %4, align 4
  br label %100

54:                                               ; preds = %44
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 10
  %57 = call i32 @comedi_check_trigger_arg_is(i32* %56, i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 9
  %62 = call i32 @comedi_check_trigger_arg_is(i32* %61, i32 0)
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 8
  %67 = call i32 @comedi_check_trigger_arg_is(i32* %66, i32 0)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 7
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @comedi_check_trigger_arg_is(i32* %71, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TRIG_COUNT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %54
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 5
  %86 = call i32 @comedi_check_trigger_arg_min(i32* %85, i32 1)
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %95

89:                                               ; preds = %54
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 5
  %92 = call i32 @comedi_check_trigger_arg_is(i32* %91, i32 0)
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 3, i32* %4, align 4
  br label %100

99:                                               ; preds = %95
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %98, %53, %43
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
