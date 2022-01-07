; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.daqp_private* }
%struct.daqp_private = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i64, i64, i64, i32* }

@EIO = common dso_local global i32 0, align 4
@DAQP_AUX_REG = common dso_local global i64 0, align 8
@DAQP_CMD_RSTQ = common dso_local global i32 0, align 4
@DAQP_CMD_REG = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@DAQP_FIFO_SIZE = common dso_local global i32 0, align 4
@DAQP_CMD_RSTF = common dso_local global i32 0, align 4
@DAQP_AI_FIFO_REG = common dso_local global i64 0, align 8
@DAQP_CTRL_TRIG_MODE = common dso_local global i32 0, align 4
@DAQP_CTRL_PACER_CLK_5MHZ = common dso_local global i32 0, align 4
@DAQP_CTRL_FIFO_INT_ENA = common dso_local global i32 0, align 4
@DAQP_CTRL_REG = common dso_local global i64 0, align 8
@DAQP_CMD_ARM = common dso_local global i32 0, align 4
@DAQP_CMD_FIFO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @daqp_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.daqp_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.daqp_private*, %struct.daqp_private** %16, align 8
  store %struct.daqp_private* %17, %struct.daqp_private** %6, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %7, align 8
  %22 = load %struct.daqp_private*, %struct.daqp_private** %6, align 8
  %23 = getelementptr inbounds %struct.daqp_private, %struct.daqp_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %185

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAQP_AUX_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 0, i64 %34)
  %36 = load i32, i32* @DAQP_CMD_RSTQ, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DAQP_CMD_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load %struct.daqp_private*, %struct.daqp_private** %6, align 8
  %45 = getelementptr inbounds %struct.daqp_private, %struct.daqp_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @daqp_set_pacer(%struct.comedi_device* %43, i32 %46)
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TRIG_TIMER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %55

54:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ true, %62 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @daqp_ai_set_one_scanlist_entry(%struct.comedi_device* %71, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TRIG_COUNT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %93, %96
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %100 = call i64 @comedi_bytes_per_sample(%struct.comedi_subdevice* %99)
  %101 = mul i64 %98, %100
  store i64 %101, i64* %14, align 8
  br label %102

102:                                              ; preds = %109, %90
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %105 = mul nsw i32 %104, 3
  %106 = sdiv i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = icmp ugt i64 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i64, i64* %14, align 8
  %111 = udiv i64 %110, 2
  store i64 %111, i64* %14, align 8
  br label %102

112:                                              ; preds = %102
  %113 = load i64, i64* %14, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %118

115:                                              ; preds = %84
  %116 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %117 = sdiv i32 %116, 2
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @DAQP_CMD_RSTF, align 4
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DAQP_CMD_REG, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outb(i32 %119, i64 %124)
  %126 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DAQP_AI_FIFO_REG, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 0, i64 %130)
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DAQP_AI_FIFO_REG, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 0, i64 %136)
  %138 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %138, %139
  %141 = and i32 %140, 255
  %142 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DAQP_AI_FIFO_REG, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i32 %141, i64 %146)
  %148 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %148, %149
  %151 = ashr i32 %150, 8
  %152 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %153 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DAQP_AI_FIFO_REG, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outb(i32 %151, i64 %156)
  %158 = load i32, i32* @DAQP_CTRL_TRIG_MODE, align 4
  %159 = load i32, i32* @DAQP_CTRL_PACER_CLK_5MHZ, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @DAQP_CTRL_FIFO_INT_ENA, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %164 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DAQP_CTRL_REG, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @outb(i32 %162, i64 %167)
  %169 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %170 = call i32 @daqp_clear_events(%struct.comedi_device* %169, i32 100)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %118
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %185

175:                                              ; preds = %118
  %176 = load i32, i32* @DAQP_CMD_ARM, align 4
  %177 = load i32, i32* @DAQP_CMD_FIFO_DATA, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %180 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DAQP_CMD_REG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outb(i32 %178, i64 %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %175, %173, %26
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @daqp_set_pacer(%struct.comedi_device*, i32) #1

declare dso_local i32 @daqp_ai_set_one_scanlist_entry(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @daqp_clear_events(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
