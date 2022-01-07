; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_pcidda_board = type { i32, i32, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i8*, i32, %struct.cb_pcidda_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.cb_pcidda_private = type { i32*, i32*, i8* }

@cb_pcidda_boards = common dso_local global %struct.cb_pcidda_board* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@cb_pcidda_ranges = common dso_local global i32 0, align 4
@cb_pcidda_ao_insn_write = common dso_local global i32 0, align 4
@I8255_SIZE = common dso_local global i32 0, align 4
@EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @cb_pcidda_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidda_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.cb_pcidda_board*, align 8
  %8 = alloca %struct.cb_pcidda_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  store %struct.cb_pcidda_board* null, %struct.cb_pcidda_board** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** @cb_pcidda_boards, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.cb_pcidda_board* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** @cb_pcidda_boards, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.cb_pcidda_board, %struct.cb_pcidda_board* %19, i64 %20
  store %struct.cb_pcidda_board* %21, %struct.cb_pcidda_board** %7, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %24 = icmp ne %struct.cb_pcidda_board* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %159

28:                                               ; preds = %22
  %29 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 3
  store %struct.cb_pcidda_board* %29, %struct.cb_pcidda_board** %31, align 8
  %32 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %33 = getelementptr inbounds %struct.cb_pcidda_board, %struct.cb_pcidda_board* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call %struct.cb_pcidda_private* @comedi_alloc_devpriv(%struct.comedi_device* %37, i32 24)
  store %struct.cb_pcidda_private* %38, %struct.cb_pcidda_private** %8, align 8
  %39 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %8, align 8
  %40 = icmp ne %struct.cb_pcidda_private* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %159

44:                                               ; preds = %28
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = call i32 @comedi_pci_enable(%struct.comedi_device* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %159

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = call i8* @pci_resource_start(%struct.pci_dev* %52, i32 2)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = call i8* @pci_resource_start(%struct.pci_dev* %56, i32 3)
  %58 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %8, align 8
  %59 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %60, i32 3)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %159

66:                                               ; preds = %51
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %68, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i64 0
  store %struct.comedi_subdevice* %70, %struct.comedi_subdevice** %9, align 8
  %71 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @SDF_WRITABLE, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %78 = getelementptr inbounds %struct.cb_pcidda_board, %struct.cb_pcidda_board* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %83 = getelementptr inbounds %struct.cb_pcidda_board, %struct.cb_pcidda_board* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 3
  store i32* @cb_pcidda_ranges, i32** %90, align 8
  %91 = load i32, i32* @cb_pcidda_ao_insn_write, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %116, %66
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i64 %103
  store %struct.comedi_subdevice* %104, %struct.comedi_subdevice** %9, align 8
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @I8255_SIZE, align 4
  %109 = mul nsw i32 %107, %108
  %110 = call i32 @subdev_8255_init(%struct.comedi_device* %105, %struct.comedi_subdevice* %106, i32* null, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %97
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %159

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %94

119:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @EEPROM_SIZE, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @cb_pcidda_read_eeprom(%struct.comedi_device* %125, i32 %126)
  %128 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %8, align 8
  %129 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %120

137:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %155, %137
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.cb_pcidda_board*, %struct.cb_pcidda_board** %7, align 8
  %141 = getelementptr inbounds %struct.cb_pcidda_board, %struct.cb_pcidda_board* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %8, align 8
  %148 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @cb_pcidda_calibrate(%struct.comedi_device* %145, i32 %146, i32 %153)
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %138

158:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %113, %64, %49, %41, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.cb_pcidda_board*) #1

declare dso_local %struct.cb_pcidda_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @cb_pcidda_read_eeprom(%struct.comedi_device*, i32) #1

declare dso_local i32 @cb_pcidda_calibrate(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
