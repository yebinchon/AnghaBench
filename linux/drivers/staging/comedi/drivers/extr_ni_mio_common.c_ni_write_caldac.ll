; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_write_caldac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_write_caldac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32*)* }
%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32* }
%struct.ni_board_struct = type { i32* }

@caldac_none = common dso_local global i32 0, align 4
@caldacs = common dso_local global %struct.TYPE_2__* null, align 8
@NI_E_SERIAL_CMD_SDATA = common dso_local global i32 0, align 4
@NI_E_SERIAL_CMD_REG = common dso_local global i32 0, align 4
@NI_E_SERIAL_CMD_SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @ni_write_caldac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_write_caldac(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_board_struct*, align 8
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.ni_board_struct*, %struct.ni_board_struct** %17, align 8
  store %struct.ni_board_struct* %18, %struct.ni_board_struct** %7, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load %struct.ni_private*, %struct.ni_private** %20, align 8
  store %struct.ni_private* %21, %struct.ni_private** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %23 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %133

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %35 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %85, %32
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %88

43:                                               ; preds = %40
  %44 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %45 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @caldac_none, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %88

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 %70(i32 %71, i32 %72, i32* %12)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @NI_E_SERIAL_CMD_DAC_LD(i32 %74)
  store i32 %75, i32* %9, align 4
  br label %88

76:                                               ; preds = %55
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %40

88:                                               ; preds = %64, %54, %40
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %133

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = sub i32 %93, 1
  %95 = shl i32 1, %94
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %121, %92
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @NI_E_SERIAL_CMD_SDATA, align 4
  br label %107

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  store i32 %108, i32* %13, align 4
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %112 = call i32 @ni_writeb(%struct.comedi_device* %109, i32 %110, i32 %111)
  %113 = call i32 @udelay(i32 1)
  %114 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %115 = load i32, i32* @NI_E_SERIAL_CMD_SCLK, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %119 = call i32 @ni_writeb(%struct.comedi_device* %114, i32 %117, i32 %118)
  %120 = call i32 @udelay(i32 1)
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %11, align 4
  %123 = lshr i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %96

124:                                              ; preds = %96
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %128 = call i32 @ni_writeb(%struct.comedi_device* %125, i32 %126, i32 %127)
  %129 = call i32 @udelay(i32 1)
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %132 = call i32 @ni_writeb(%struct.comedi_device* %130, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %124, %91, %31
  ret void
}

declare dso_local i32 @NI_E_SERIAL_CMD_DAC_LD(i32) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
