; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_xilinx_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_xilinx_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.me4000_private* }
%struct.me4000_private = type { i64 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PLX9052_INTCSR_LI2POL = common dso_local global i32 0, align 4
@PLX9052_INTCSR = common dso_local global i64 0, align 8
@PLX9052_CNTRL = common dso_local global i64 0, align 8
@PLX9052_CNTRL_UIO2_DATA = common dso_local global i32 0, align 4
@PLX9052_INTCSR_LI2STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Can't init Xilinx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PLX9052_CNTRL_UIO1_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Xilinx is still busy (i = %d)\0A\00", align 1
@PLX9052_CNTRL_UIO0_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"DONE flag is not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Download not successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64*, i64, i64)* @me4000_xilinx_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_xilinx_download(%struct.comedi_device* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.me4000_private*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %10, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.me4000_private*, %struct.me4000_private** %19, align 8
  store %struct.me4000_private* %20, %struct.me4000_private** %11, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %22 = call i64 @pci_resource_start(%struct.pci_dev* %21, i32 5)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %193

28:                                               ; preds = %4
  %29 = load i32, i32* @PLX9052_INTCSR_LI2POL, align 4
  %30 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %31 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PLX9052_INTCSR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outl(i32 %29, i64 %34)
  %36 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %37 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PLX9052_CNTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inl(i64 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @PLX9052_CNTRL_UIO2_DATA, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %47 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PLX9052_CNTRL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outl(i32 %45, i64 %50)
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 200
  %54 = call i32 @inb(i64 %53)
  %55 = call i32 @usleep_range(i32 20, i32 1000)
  %56 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %57 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PLX9052_INTCSR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @inl(i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @PLX9052_INTCSR_LI2STAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %28
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %193

73:                                               ; preds = %28
  %74 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %75 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PLX9052_CNTRL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* @PLX9052_CNTRL_UIO2_DATA, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %86 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PLX9052_CNTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outl(i32 %84, i64 %89)
  %91 = load i64*, i64** %7, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 24
  %97 = load i64*, i64** %7, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 255
  %102 = shl i32 %101, 16
  %103 = add i32 %96, %102
  %104 = load i64*, i64** %7, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 255
  %109 = shl i32 %108, 8
  %110 = add i32 %103, %109
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 255
  %116 = add i32 %110, %115
  store i32 %116, i32* %13, align 4
  %117 = call i32 @usleep_range(i32 10, i32 1000)
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %151, %73
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %154

122:                                              ; preds = %118
  %123 = load i64*, i64** %7, align 8
  %124 = load i32, i32* %15, align 4
  %125 = add i32 16, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @outb(i64 %128, i64 %129)
  %131 = call i32 @usleep_range(i32 10, i32 1000)
  %132 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %133 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PLX9052_CNTRL, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @inl(i64 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @PLX9052_CNTRL_UIO1_DATA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %122
  %143 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %193

150:                                              ; preds = %122
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %118

154:                                              ; preds = %118
  %155 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %156 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @PLX9052_CNTRL, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @inl(i64 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @PLX9052_CNTRL_UIO0_DATA, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %154
  %166 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @dev_err(i32 %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %171 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, ...) @dev_err(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %193

176:                                              ; preds = %154
  %177 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %178 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @PLX9052_CNTRL, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @inl(i64 %181)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* @PLX9052_CNTRL_UIO2_DATA, align 4
  %184 = load i32, i32* %14, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.me4000_private*, %struct.me4000_private** %11, align 8
  %188 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @PLX9052_CNTRL, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @outl(i32 %186, i64 %191)
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %176, %165, %142, %66, %25
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @outb(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
