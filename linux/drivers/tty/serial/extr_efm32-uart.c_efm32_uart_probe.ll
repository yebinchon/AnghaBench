; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_uart_port = type { i32, %struct.TYPE_2__, %struct.efm32_uart_pdata }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32* }
%struct.efm32_uart_pdata = type { i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to determine base address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"memory resource too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get rx irq\0A\00", align 1
@PORT_EFMUART = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@efm32_uart_pops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@efm32_uart_ports = common dso_local global %struct.efm32_uart_port** null, align 8
@efm32_uart_reg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to add port: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\o/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @efm32_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.efm32_uart_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efm32_uart_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.efm32_uart_port* @kzalloc(i32 64, i32 %9)
  store %struct.efm32_uart_port* %10, %struct.efm32_uart_port** %4, align 8
  %11 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %12 = icmp ne %struct.efm32_uart_port* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %184

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %172

31:                                               ; preds = %19
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = icmp slt i32 %33, 60
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %171

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @platform_get_irq(%struct.platform_device* %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %170

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_get_irq(%struct.platform_device* %55, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %61 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %50
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %68 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %72 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 8
  store i32* %70, i32** %73, align 8
  %74 = load %struct.resource*, %struct.resource** %5, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @PORT_EFMUART, align 4
  %81 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @UPIO_MEM32, align 4
  %85 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %89 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 2, i32* %90, align 4
  %91 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i32* @efm32_uart_pops, i32** %93, align 8
  %94 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %95 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %96 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %100 = call i32 @efm32_uart_probe_dt(%struct.platform_device* %98, %struct.efm32_uart_port* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %65
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  %106 = call %struct.efm32_uart_pdata* @dev_get_platdata(i32* %105)
  store %struct.efm32_uart_pdata* %106, %struct.efm32_uart_pdata** %8, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %111 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 8
  %113 = load %struct.efm32_uart_pdata*, %struct.efm32_uart_pdata** %8, align 8
  %114 = icmp ne %struct.efm32_uart_pdata* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %103
  %116 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %117 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %116, i32 0, i32 2
  %118 = load %struct.efm32_uart_pdata*, %struct.efm32_uart_pdata** %8, align 8
  %119 = bitcast %struct.efm32_uart_pdata* %117 to i8*
  %120 = bitcast %struct.efm32_uart_pdata* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 4 %120, i64 4, i1 false)
  br label %121

121:                                              ; preds = %115, %103
  br label %127

122:                                              ; preds = %65
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %169

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %121
  %128 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %129 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp uge i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.efm32_uart_port**, %struct.efm32_uart_port*** @efm32_uart_ports, align 8
  %137 = call i32 @ARRAY_SIZE(%struct.efm32_uart_port** %136)
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %141 = load %struct.efm32_uart_port**, %struct.efm32_uart_port*** @efm32_uart_ports, align 8
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.efm32_uart_port*, %struct.efm32_uart_port** %141, i64 %143
  store %struct.efm32_uart_port* %140, %struct.efm32_uart_port** %144, align 8
  br label %145

145:                                              ; preds = %139, %134, %127
  %146 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %147 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %146, i32 0, i32 1
  %148 = call i32 @uart_add_one_port(i32* @efm32_uart_reg, %struct.TYPE_2__* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %145
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 1
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = icmp uge i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.efm32_uart_port**, %struct.efm32_uart_port*** @efm32_uart_ports, align 8
  %161 = call i32 @ARRAY_SIZE(%struct.efm32_uart_port** %160)
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.efm32_uart_port**, %struct.efm32_uart_port*** @efm32_uart_ports, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.efm32_uart_port*, %struct.efm32_uart_port** %164, i64 %166
  store %struct.efm32_uart_port* null, %struct.efm32_uart_port** %167, align 8
  br label %168

168:                                              ; preds = %163, %158, %151
  br label %169

169:                                              ; preds = %168, %125
  br label %170

170:                                              ; preds = %169, %46
  br label %171

171:                                              ; preds = %170, %35
  br label %172

172:                                              ; preds = %171, %25
  %173 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %174 = call i32 @kfree(%struct.efm32_uart_port* %173)
  br label %182

175:                                              ; preds = %145
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %178 = call i32 @platform_set_drvdata(%struct.platform_device* %176, %struct.efm32_uart_port* %177)
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %175, %172
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %13
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.efm32_uart_port* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @efm32_uart_probe_dt(%struct.platform_device*, %struct.efm32_uart_port*) #1

declare dso_local %struct.efm32_uart_pdata* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.efm32_uart_port**) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.efm32_uart_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.efm32_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
