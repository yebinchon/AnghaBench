; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nidio_board = type { i64, i32 }
%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i64, i32, %struct.nidio_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.pci_dev = type { i32 }
%struct.nidio96_private = type { i32, i32, i32 }

@nidio_boards = common dso_local global %struct.nidio_board* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s rev=%d\0A\00", align 1
@CHIP_VERSION = common dso_local global i64 0, align 8
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@SDF_PACKED = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@ni_pcidio_insn_config = common dso_local global i32 0, align 4
@ni_pcidio_insn_bits = common dso_local global i32 0, align 4
@ni_pcidio_cmd = common dso_local global i32 0, align 4
@ni_pcidio_cmdtest = common dso_local global i32 0, align 4
@ni_pcidio_cancel = common dso_local global i32 0, align 4
@ni_pcidio_change = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ni_pcidio_poll = common dso_local global i32 0, align 4
@nidio_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @nidio_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nidio_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.nidio_board*, align 8
  %8 = alloca %struct.nidio96_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  store %struct.nidio_board* null, %struct.nidio_board** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.nidio_board*, %struct.nidio_board** @nidio_boards, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.nidio_board* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.nidio_board*, %struct.nidio_board** @nidio_boards, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %19, i64 %20
  store %struct.nidio_board* %21, %struct.nidio_board** %7, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.nidio_board*, %struct.nidio_board** %7, align 8
  %24 = icmp ne %struct.nidio_board* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %184

28:                                               ; preds = %22
  %29 = load %struct.nidio_board*, %struct.nidio_board** %7, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 6
  store %struct.nidio_board* %29, %struct.nidio_board** %31, align 8
  %32 = load %struct.nidio_board*, %struct.nidio_board** %7, align 8
  %33 = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i32 @comedi_pci_enable(%struct.comedi_device* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %184

43:                                               ; preds = %28
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = call %struct.nidio96_private* @comedi_alloc_devpriv(%struct.comedi_device* %44, i32 12)
  store %struct.nidio96_private* %45, %struct.nidio96_private** %8, align 8
  %46 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %47 = icmp ne %struct.nidio96_private* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %184

51:                                               ; preds = %43
  %52 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %53 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = call i32 @mite_attach(%struct.comedi_device* %55, i32 0)
  %57 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %58 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %60 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %184

66:                                               ; preds = %51
  %67 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %68 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mite_alloc_ring(i32 %69)
  %71 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %72 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nidio96_private*, %struct.nidio96_private** %8, align 8
  %74 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %184

80:                                               ; preds = %66
  %81 = load %struct.nidio_board*, %struct.nidio_board** %7, align 8
  %82 = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = call i32 @pci_6534_upload_firmware(%struct.comedi_device* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %184

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %80
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = call i32 @nidio_reset_board(%struct.comedi_device* %94)
  %96 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %97 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %96, i32 1)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %184

102:                                              ; preds = %93
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CHIP_VERSION, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readb(i64 %113)
  %115 = call i32 @dev_info(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %114)
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 3
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %117, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i64 0
  store %struct.comedi_subdevice* %119, %struct.comedi_subdevice** %9, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 2
  store %struct.comedi_subdevice* %120, %struct.comedi_subdevice** %122, align 8
  %123 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 13
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @SDF_READABLE, align 4
  %127 = load i32, i32* @SDF_WRITABLE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SDF_LSAMPL, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @SDF_PACKED, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SDF_CMD_READ, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %137, i32 0, i32 1
  store i32 32, i32* %138, align 4
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %140 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %139, i32 0, i32 12
  store i32* @range_digital, i32** %140, align 8
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %142 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 11
  store i32* @ni_pcidio_insn_config, i32** %144, align 8
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 10
  store i32* @ni_pcidio_insn_bits, i32** %146, align 8
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %148 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %147, i32 0, i32 9
  store i32* @ni_pcidio_cmd, i32** %148, align 8
  %149 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %150 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %149, i32 0, i32 8
  store i32* @ni_pcidio_cmdtest, i32** %150, align 8
  %151 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %152 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %151, i32 0, i32 7
  store i32* @ni_pcidio_cancel, i32** %152, align 8
  %153 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %154 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %153, i32 0, i32 3
  store i32 32, i32* %154, align 4
  %155 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %156 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %155, i32 0, i32 6
  store i32* @ni_pcidio_change, i32** %156, align 8
  %157 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 4
  store i32* @ni_pcidio_poll, i32** %161, align 8
  %162 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %102
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @nidio_interrupt, align 4
  %170 = load i32, i32* @IRQF_SHARED, align 4
  %171 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %172 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %175 = call i32 @request_irq(i32 %168, i32 %169, i32 %170, i32 %173, %struct.comedi_device* %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %181 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %167
  br label %183

183:                                              ; preds = %182, %102
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %100, %90, %77, %63, %48, %41, %25
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nidio_board*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local %struct.nidio96_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mite_attach(%struct.comedi_device*, i32) #1

declare dso_local i32 @mite_alloc_ring(i32) #1

declare dso_local i32 @pci_6534_upload_firmware(%struct.comedi_device*) #1

declare dso_local i32 @nidio_reset_board(%struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
