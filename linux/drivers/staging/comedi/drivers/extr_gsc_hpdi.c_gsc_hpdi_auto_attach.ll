; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i8*, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32, i32, i8* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.hpdi_private = type { i32*, i32, i8*, i8**, i8* }

@.str = private unnamed_addr constant [11 x i8] c"pci-hpdi32\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to remap io memory\0A\00", align 1
@gsc_hpdi_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to allocate irq %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" irq %u\0A\00", align 1
@NUM_DMA_BUFFERS = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NUM_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c" dma descriptors not quad-word aligned (bug)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@gsc_hpdi_dio_insn_config = common dso_local global i32 0, align 4
@gsc_hpdi_cmd = common dso_local global i32 0, align 4
@gsc_hpdi_cmd_test = common dso_local global i32 0, align 4
@gsc_hpdi_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @gsc_hpdi_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_hpdi_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.hpdi_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call %struct.hpdi_private* @comedi_alloc_devpriv(%struct.comedi_device* %15, i32 40)
  store %struct.hpdi_private* %16, %struct.hpdi_private** %7, align 8
  %17 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %18 = icmp ne %struct.hpdi_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %199

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_pci_enable(%struct.comedi_device* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %199

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call i32 @pci_set_master(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = call i8* @pci_ioremap_bar(%struct.pci_dev* %32, i32 0)
  %34 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %35 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = call i8* @pci_ioremap_bar(%struct.pci_dev* %36, i32 2)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %41 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44, %29
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @dev_warn(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %199

56:                                               ; preds = %44
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = call i32 @gsc_hpdi_init_plx9080(%struct.comedi_device* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @gsc_hpdi_interrupt, align 4
  %63 = load i32, i32* @IRQF_SHARED, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = call i64 @request_irq(i32 %61, i32 %62, i32 %63, i8* %66, %struct.comedi_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_warn(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %199

80:                                               ; preds = %56
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %115, %80
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @NUM_DMA_BUFFERS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %101 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %102 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @dma_alloc_coherent(i32* %99, i32 %100, i32* %106, i32 %107)
  %109 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %110 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %108, i8** %114, align 8
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %93

118:                                              ; preds = %93
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = load i32, i32* @NUM_DMA_DESCRIPTORS, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %126 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %125, i32 0, i32 1
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @dma_alloc_coherent(i32* %120, i32 %124, i32* %126, i32 %127)
  %129 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %130 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %132 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 15
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %118
  %137 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @dev_warn(i32 %139, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %199

143:                                              ; preds = %118
  %144 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %145 = call i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device* %144, i32 4096)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %199

150:                                              ; preds = %143
  %151 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %152 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %151, i32 1)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %3, align 4
  br label %199

157:                                              ; preds = %150
  %158 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %159 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %158, i32 0, i32 2
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %159, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i64 0
  store %struct.comedi_subdevice* %161, %struct.comedi_subdevice** %8, align 8
  %162 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %163 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %164 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %163, i32 0, i32 1
  store %struct.comedi_subdevice* %162, %struct.comedi_subdevice** %164, align 8
  %165 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %167 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @SDF_READABLE, align 4
  %169 = load i32, i32* @SDF_WRITABLE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @SDF_LSAMPL, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @SDF_CMD_READ, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %176 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %178 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 1
  store i32 32, i32* %178, align 4
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %180 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %179, i32 0, i32 2
  store i32 32, i32* %180, align 8
  %181 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %182 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %184 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %183, i32 0, i32 8
  store i32* @range_digital, i32** %184, align 8
  %185 = load i32, i32* @gsc_hpdi_dio_insn_config, align 4
  %186 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %187 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @gsc_hpdi_cmd, align 4
  %189 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %190 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @gsc_hpdi_cmd_test, align 4
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %193 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @gsc_hpdi_cancel, align 4
  %195 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %196 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %198 = call i32 @gsc_hpdi_init(%struct.comedi_device* %197)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %157, %155, %148, %136, %70, %49, %27, %19
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local %struct.hpdi_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @gsc_hpdi_init_plx9080(%struct.comedi_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.comedi_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @gsc_hpdi_init(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
