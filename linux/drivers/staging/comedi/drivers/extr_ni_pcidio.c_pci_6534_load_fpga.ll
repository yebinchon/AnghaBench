; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_load_fpga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_load_fpga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32 }

@pci_6534_load_fpga.timeout = internal constant i32 1000, align 4
@Firmware_Control_Register = common dso_local global i64 0, align 8
@Firmware_Status_Register = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x2\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x3\0A\00", align 1
@Firmware_Data_Register = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"ni_pcidio: failed to load word into fpga %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i64, i64)* @pci_6534_load_fpga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_6534_load_fpga(%struct.comedi_device* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = or i32 128, %16
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @Firmware_Control_Register, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writew(i32 %17, i64 %22)
  %24 = load i32, i32* %10, align 4
  %25 = or i32 192, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @Firmware_Control_Register, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writew(i32 %25, i64 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %48, %4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @Firmware_Status_Register, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readw(i64 %37)
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 1000
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ false, %32 ], [ %43, %41 ]
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %32

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 1000
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %170

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = or i32 128, %63
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @Firmware_Control_Register, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writew(i32 %64, i64 %69)
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %86, %62
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @Firmware_Status_Register, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readw(i64 %76)
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 1000
  br label %82

82:                                               ; preds = %79, %71
  %83 = phi i1 [ false, %71 ], [ %81, %79 ]
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %71

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 1000
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dev_warn(i32 %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %170

100:                                              ; preds = %89
  store i64 0, i64* %12, align 8
  br label %101

101:                                              ; preds = %162, %100
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  %104 = load i64, i64* %8, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %163

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %107, i64 %108
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  %115 = getelementptr inbounds i32, i32* %112, i64 %113
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 8
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @Firmware_Data_Register, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writew(i32 %120, i64 %125)
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %143, %106
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @Firmware_Status_Register, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readw(i64 %132)
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 1000
  br label %139

139:                                              ; preds = %136, %127
  %140 = phi i1 [ false, %127 ], [ %138, %136 ]
  br i1 %140, label %141, label %146

141:                                              ; preds = %139
  %142 = call i32 @udelay(i32 1)
  br label %143

143:                                              ; preds = %141
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %127

146:                                              ; preds = %139
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 1000
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @dev_warn(i32 %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @EIO, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %170

157:                                              ; preds = %146
  %158 = call i64 (...) @need_resched()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @schedule()
  br label %162

162:                                              ; preds = %160, %157
  br label %101

163:                                              ; preds = %101
  %164 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %165 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @Firmware_Control_Register, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writew(i32 0, i64 %168)
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %163, %149, %92, %54
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
