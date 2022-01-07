; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport_pc_pci = type { i32, i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)*, %struct.TYPE_2__*, i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)* }
%struct.pci_dev = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.parport_serial_private = type { i64, %struct.parport**, %struct.parport_pc_pci }
%struct.parport = type { i32 }

@cards = common dso_local global %struct.parport_pc_pci* null, align 8
@PARPORT_IRQ_NONE = common dso_local global i32 0, align 4
@PARPORT_DMA_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"only %zu parallel ports supported (%d reported)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"PCI parallel port detected: I/O at %#lx(%#lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"PCI parallel port detected: I/O at %#lx(%#lx), IRQ %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @parport_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_register(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.parport_pc_pci*, align 8
  %7 = alloca %struct.parport_serial_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.parport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev* %16)
  store %struct.parport_serial_private* %17, %struct.parport_serial_private** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %19 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %18, i32 0, i32 2
  %20 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** @cards, align 8
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %20, i64 %23
  %25 = bitcast %struct.parport_pc_pci* %19 to i8*
  %26 = bitcast %struct.parport_pc_pci* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  %27 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %28 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %27, i32 0, i32 2
  store %struct.parport_pc_pci* %28, %struct.parport_pc_pci** %6, align 8
  %29 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %30 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %29, i32 0, i32 3
  %31 = load i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)*, i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)** %30, align 8
  %32 = icmp ne i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %35 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %34, i32 0, i32 3
  %36 = load i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)*, i64 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)** %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %39 = load i32, i32* @PARPORT_IRQ_NONE, align 4
  %40 = load i32, i32* @PARPORT_DMA_NONE, align 4
  %41 = call i64 %36(%struct.pci_dev* %37, %struct.parport_pc_pci* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %174

46:                                               ; preds = %33, %2
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %154, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %50 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %157

53:                                               ; preds = %47
  %54 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %55 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %63 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %71 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %74 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %73, i32 0, i32 1
  %75 = load %struct.parport**, %struct.parport*** %74, align 8
  %76 = call i64 @ARRAY_SIZE(%struct.parport** %75)
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %53
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %82 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %81, i32 0, i32 1
  %83 = load %struct.parport**, %struct.parport*** %82, align 8
  %84 = call i64 @ARRAY_SIZE(%struct.parport** %83)
  %85 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %86 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_warn(i32* %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %87)
  br label %157

89:                                               ; preds = %53
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @pci_resource_start(%struct.pci_dev* %90, i32 %91)
  store i64 %92, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %93 = load i32, i32* %12, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = icmp sle i32 %96, 6
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @pci_resource_start(%struct.pci_dev* %99, i32 %100)
  store i64 %101, i64* %14, align 8
  br label %111

102:                                              ; preds = %95, %89
  %103 = load i32, i32* %12, align 4
  %104 = icmp sgt i32 %103, 6
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %98
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @IRQ_NONE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 1
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %121, i64 %122)
  %124 = load i32, i32* @PARPORT_IRQ_NONE, align 4
  store i32 %124, i32* %15, align 4
  br label %132

125:                                              ; preds = %111
  %126 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 1
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %118
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @PARPORT_DMA_NONE, align 4
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 1
  %139 = load i32, i32* @IRQF_SHARED, align 4
  %140 = call %struct.parport* @parport_pc_probe_port(i64 %133, i64 %134, i32 %135, i32 %136, i32* %138, i32 %139)
  store %struct.parport* %140, %struct.parport** %10, align 8
  %141 = load %struct.parport*, %struct.parport** %10, align 8
  %142 = icmp ne %struct.parport* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %132
  %144 = load %struct.parport*, %struct.parport** %10, align 8
  %145 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %146 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %145, i32 0, i32 1
  %147 = load %struct.parport**, %struct.parport*** %146, align 8
  %148 = load %struct.parport_serial_private*, %struct.parport_serial_private** %7, align 8
  %149 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds %struct.parport*, %struct.parport** %147, i64 %150
  store %struct.parport* %144, %struct.parport** %152, align 8
  store i32 1, i32* %9, align 4
  br label %153

153:                                              ; preds = %143, %132
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %47

157:                                              ; preds = %78, %47
  %158 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %159 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %158, i32 0, i32 1
  %160 = load i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)*, i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)** %159, align 8
  %161 = icmp ne i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %164 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %163, i32 0, i32 1
  %165 = load i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)*, i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32)** %164, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 %165(%struct.pci_dev* %166, %struct.parport_pc_pci* %167, i32 %171)
  br label %173

173:                                              ; preds = %162, %157
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %43
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.parport_serial_private* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(%struct.parport**) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, ...) #1

declare dso_local %struct.parport* @parport_pc_probe_port(i64, i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
