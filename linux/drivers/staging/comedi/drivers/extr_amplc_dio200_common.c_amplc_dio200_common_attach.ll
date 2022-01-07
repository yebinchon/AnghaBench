; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_amplc_dio200_common_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_amplc_dio200_common_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i32, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.dio200_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i8*, i32, i32 }
%struct.dio200_board = type { i32*, i32*, i32 }

@DIO200_INT_SCE = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i8* null, align 8
@COMEDI_SUBD_TIMER = common dso_local global i8* null, align 8
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@dio200_subdev_timer_read = common dso_local global i32 0, align 4
@dio200_subdev_timer_config = common dso_local global i32 0, align 4
@dio200_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"warning! irq %u unavailable!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amplc_dio200_common_attach(%struct.comedi_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dio200_board*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 6
  %14 = load %struct.dio200_board*, %struct.dio200_board** %13, align 8
  store %struct.dio200_board* %14, %struct.dio200_board** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %17 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %15, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %167

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %134, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %137

31:                                               ; preds = %25
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 5
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i64 %36
  store %struct.comedi_subdevice* %37, %struct.comedi_subdevice** %9, align 8
  %38 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %39 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %129 [
    i32 131, label %45
    i32 130, label %61
    i32 129, label %77
    i32 128, label %110
  ]

45:                                               ; preds = %31
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %48 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %49 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dio200_subdev_8254_init(%struct.comedi_device* %46, %struct.comedi_subdevice* %47, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %167

60:                                               ; preds = %45
  br label %133

61:                                               ; preds = %31
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %64 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %65 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dio200_subdev_8255_init(%struct.comedi_device* %62, %struct.comedi_subdevice* %63, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %167

76:                                               ; preds = %61
  br label %133

77:                                               ; preds = %31
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 4
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %82, align 8
  %84 = icmp ne %struct.comedi_subdevice* %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %80
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %88 = load i32, i32* @DIO200_INT_SCE, align 4
  %89 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %90 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dio200_subdev_intr_init(%struct.comedi_device* %86, %struct.comedi_subdevice* %87, i32 %88, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %167

101:                                              ; preds = %85
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 4
  store %struct.comedi_subdevice* %102, %struct.comedi_subdevice** %104, align 8
  br label %109

105:                                              ; preds = %80, %77
  %106 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %133

110:                                              ; preds = %31
  %111 = load i8*, i8** @COMEDI_SUBD_TIMER, align 8
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @SDF_READABLE, align 4
  %115 = load i32, i32* @SDF_LSAMPL, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %122 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i32 0, i32 2
  store i32 -1, i32* %122, align 8
  %123 = load i32, i32* @dio200_subdev_timer_read, align 4
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @dio200_subdev_timer_config, align 4
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  br label %133

129:                                              ; preds = %31
  %130 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %110, %109, %76, %60
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %25

137:                                              ; preds = %25
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %137
  %141 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 4
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %142, align 8
  %144 = icmp ne %struct.comedi_subdevice* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @dio200_interrupt, align 4
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %150 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %153 = call i64 @request_irq(i32 %146, i32 %147, i64 %148, i32 %151, %struct.comedi_device* %152)
  %154 = icmp sge i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %165

159:                                              ; preds = %145
  %160 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @dev_warn(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %155
  br label %166

166:                                              ; preds = %165, %140, %137
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %99, %74, %58, %22
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @dio200_subdev_8254_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @dio200_subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @dio200_subdev_intr_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i64, i32, %struct.comedi_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
