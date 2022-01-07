; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.ni_gpct*, %struct.TYPE_3__* }
%struct.ni_gpct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ni_route_tables* }
%struct.ni_route_tables = type { i32 }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i64, i32, i32 }

@TRIG_EXT = common dso_local global i64 0, align 8
@NI_NAMES_BASE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_subdevice*)* @ni_tio_cmd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_cmd_setup(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_route_tables*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %17, align 8
  store %struct.ni_gpct* %18, %struct.ni_gpct** %5, align 8
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %23 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.ni_route_tables*, %struct.ni_route_tables** %25, align 8
  store %struct.ni_route_tables* %26, %struct.ni_route_tables** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRIG_EXT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TRIG_EXT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @CR_CHAN(i32 %51)
  %53 = load i64, i64* @NI_NAMES_BASE, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @CR_CHAN(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @NI_CtrGate(i32 %58)
  %60 = load %struct.ni_route_tables*, %struct.ni_route_tables** %7, align 8
  %61 = call i32 @ni_get_reg_value(i64 %57, i32 %59, %struct.ni_route_tables* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %94

67:                                               ; preds = %55
  %68 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ni_tio_set_gate_src_raw(%struct.ni_gpct* %68, i32 0, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %75

71:                                               ; preds = %50
  %72 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ni_tio_set_gate_src(%struct.ni_gpct* %72, i32 0, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @NITIO_INT_ENA_REG(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @GI_GATE_INTERRUPT_ENABLE(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @GI_GATE_INTERRUPT_ENABLE(i32 %89)
  %91 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %84, i32 %86, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %64
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @ni_get_reg_value(i64, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @NI_CtrGate(i32) #1

declare dso_local i32 @ni_tio_set_gate_src_raw(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_set_gate_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_INT_ENA_REG(i32) #1

declare dso_local i32 @GI_GATE_INTERRUPT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
