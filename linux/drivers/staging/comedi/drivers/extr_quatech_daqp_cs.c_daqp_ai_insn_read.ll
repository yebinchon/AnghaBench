; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.daqp_private* }
%struct.daqp_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DAQP_AUX_REG = common dso_local global i64 0, align 8
@DAQP_CMD_RSTQ = common dso_local global i32 0, align 4
@DAQP_CMD_REG = common dso_local global i64 0, align 8
@DAQP_CMD_RSTF = common dso_local global i32 0, align 4
@DAQP_CTRL_PACER_CLK_100KHZ = common dso_local global i32 0, align 4
@DAQP_CTRL_REG = common dso_local global i64 0, align 8
@DAQP_CMD_ARM = common dso_local global i32 0, align 4
@DAQP_CMD_FIFO_DATA = common dso_local global i32 0, align 4
@daqp_ai_eos = common dso_local global i32 0, align 4
@DAQP_STATUS_REG = common dso_local global i64 0, align 8
@DAQP_CMD_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @daqp_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.daqp_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.daqp_private*, %struct.daqp_private** %14, align 8
  store %struct.daqp_private* %15, %struct.daqp_private** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.daqp_private*, %struct.daqp_private** %10, align 8
  %17 = getelementptr inbounds %struct.daqp_private, %struct.daqp_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %128

23:                                               ; preds = %4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAQP_AUX_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 0, i64 %28)
  %30 = load i32, i32* @DAQP_CMD_RSTQ, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAQP_CMD_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %30, i64 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @daqp_ai_set_one_scanlist_entry(%struct.comedi_device* %37, i32 %40, i32 1)
  %42 = load i32, i32* @DAQP_CMD_RSTF, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DAQP_CMD_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load i32, i32* @DAQP_CTRL_PACER_CLK_100KHZ, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAQP_CTRL_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = call i32 @daqp_clear_events(%struct.comedi_device* %56, i32 10000)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %23
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %128

62:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %66 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load i32, i32* @DAQP_CMD_ARM, align 4
  %71 = load i32, i32* @DAQP_CMD_FIFO_DATA, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAQP_CMD_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %82 = load i32, i32* @daqp_ai_eos, align 4
  %83 = call i32 @comedi_timeout(%struct.comedi_device* %79, %struct.comedi_subdevice* %80, %struct.comedi_insn* %81, i32 %82, i32 0)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %104

87:                                               ; preds = %69
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DAQP_STATUS_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @inb(i64 %92)
  %94 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %96 = call i32 @daqp_ai_get_sample(%struct.comedi_device* %94, %struct.comedi_subdevice* %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %63

104:                                              ; preds = %86, %63
  %105 = load i32, i32* @DAQP_CMD_STOP, align 4
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DAQP_CMD_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 %105, i64 %110)
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DAQP_STATUS_REG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @inb(i64 %116)
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i32, i32* %11, align 4
  br label %126

122:                                              ; preds = %104
  %123 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %122, %120
  %127 = phi i32 [ %121, %120 ], [ %125, %122 ]
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %60, %20
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @daqp_ai_set_one_scanlist_entry(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @daqp_clear_events(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @daqp_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
