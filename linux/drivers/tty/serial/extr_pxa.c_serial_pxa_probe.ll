; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_PXA = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@serial_pxa_pops = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@serial_pxa_ports = common dso_local global %struct.uart_pxa_port** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PXA_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"UART%d\00", align 1
@serial_pxa_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_pxa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_pxa_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_IRQ, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %195

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.uart_pxa_port* @kzalloc(i32 72, i32 %23)
  store %struct.uart_pxa_port* %24, %struct.uart_pxa_port** %4, align 8
  %25 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %26 = icmp ne %struct.uart_pxa_port* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %195

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = call i32 @clk_get(i32* %32, i32* null)
  %34 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %191

46:                                               ; preds = %30
  %47 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_prepare(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clk_put(i32 %56)
  br label %191

58:                                               ; preds = %46
  %59 = load i32, i32* @PORT_PXA, align 4
  %60 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 10
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @UPIO_MEM, align 4
  %64 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %65 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 9
  store i32 %63, i32* %66, align 8
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 8
  store i32 %69, i32* %72, align 4
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 8
  %79 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %80 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 64, i32* %81, align 8
  %82 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  store i32* @serial_pxa_pops, i32** %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 1
  %87 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32* %86, i32** %89, align 8
  %90 = load i32, i32* @UPF_IOREMAP, align 4
  %91 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %97 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @clk_get_rate(i32 %98)
  %100 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %101 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %105 = call i32 @serial_pxa_probe_dt(%struct.platform_device* %103, %struct.uart_pxa_port* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %58
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %113 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  br label %120

115:                                              ; preds = %58
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %182

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %108
  %121 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.uart_pxa_port**, %struct.uart_pxa_port*** @serial_pxa_ports, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.uart_pxa_port** %125)
  %127 = icmp sge i32 %124, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 1
  %131 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  br label %182

138:                                              ; preds = %120
  %139 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %140 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* @PXA_NAME_LEN, align 8
  %143 = sub nsw i64 %142, 1
  %144 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %145 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  %149 = call i32 @snprintf(i32 %141, i64 %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load %struct.resource*, %struct.resource** %5, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.resource*, %struct.resource** %5, align 8
  %154 = call i32 @resource_size(%struct.resource* %153)
  %155 = call i32 @ioremap(i32 %152, i32 %154)
  %156 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %157 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %160 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %138
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %182

167:                                              ; preds = %138
  %168 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %169 = load %struct.uart_pxa_port**, %struct.uart_pxa_port*** @serial_pxa_ports, align 8
  %170 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %171 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.uart_pxa_port*, %struct.uart_pxa_port** %169, i64 %174
  store %struct.uart_pxa_port* %168, %struct.uart_pxa_port** %175, align 8
  %176 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %176, i32 0, i32 1
  %178 = call i32 @uart_add_one_port(i32* @serial_pxa_reg, %struct.TYPE_2__* %177)
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %181 = call i32 @platform_set_drvdata(%struct.platform_device* %179, %struct.uart_pxa_port* %180)
  store i32 0, i32* %2, align 4
  br label %195

182:                                              ; preds = %164, %128, %118
  %183 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %184 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @clk_unprepare(i32 %185)
  %187 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @clk_put(i32 %189)
  br label %191

191:                                              ; preds = %182, %53, %41
  %192 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %193 = call i32 @kfree(%struct.uart_pxa_port* %192)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %191, %167, %27, %19
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.uart_pxa_port* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @serial_pxa_probe_dt(%struct.platform_device*, %struct.uart_pxa_port*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uart_pxa_port**) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_pxa_port*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @kfree(%struct.uart_pxa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
