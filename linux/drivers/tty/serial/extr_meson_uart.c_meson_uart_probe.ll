; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, i32, i32*, i64, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.platform_device = type { i32, %struct.TYPE_3__ }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@AML_UART_PORT_OFFSET = common dso_local global i32 0, align 4
@AML_UART_PORT_NUM = common dso_local global i32 0, align 4
@meson_ports = common dso_local global %struct.uart_port** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"port %d already allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"amlogic,meson-uart\00", align 1
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_LOW_LATENCY = common dso_local global i32 0, align 4
@PORT_MESON = common dso_local global i32 0, align 4
@meson_uart_ops = common dso_local global i32 0, align 4
@meson_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @of_alias_get_id(i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load i32, i32* @AML_UART_PORT_OFFSET, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AML_UART_PORT_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.uart_port**, %struct.uart_port*** @meson_ports, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %34, i64 %36
  %38 = load %struct.uart_port*, %struct.uart_port** %37, align 8
  %39 = icmp ne %struct.uart_port* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %40, %29
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AML_UART_PORT_NUM, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %204

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 0)
  store %struct.resource* %66, %struct.resource** %4, align 8
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = icmp ne %struct.resource* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %204

72:                                               ; preds = %63
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_IRQ, align 4
  %75 = call %struct.resource* @platform_get_resource(%struct.platform_device* %73, i32 %74, i32 0)
  store %struct.resource* %75, %struct.resource** %5, align 8
  %76 = load %struct.resource*, %struct.resource** %5, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %204

81:                                               ; preds = %72
  %82 = load %struct.uart_port**, %struct.uart_port*** @meson_ports, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %82, i64 %86
  %88 = load %struct.uart_port*, %struct.uart_port** %87, align 8
  %89 = icmp ne %struct.uart_port* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 1
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = call i32 @dev_err(%struct.TYPE_3__* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %204

100:                                              ; preds = %81
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 1
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.uart_port* @devm_kzalloc(%struct.TYPE_3__* %102, i32 72, i32 %103)
  store %struct.uart_port* %104, %struct.uart_port** %6, align 8
  %105 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %106 = icmp ne %struct.uart_port* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %204

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @of_device_is_compatible(i64 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %120 = call i32 @meson_uart_probe_clocks_legacy(%struct.platform_device* %118, %struct.uart_port* %119)
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %110
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %124 = call i32 @meson_uart_probe_clocks(%struct.platform_device* %122, %struct.uart_port* %123)
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %204

130:                                              ; preds = %125
  %131 = load i32, i32* @UPIO_MEM, align 4
  %132 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 4
  %134 = load %struct.resource*, %struct.resource** %4, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load %struct.resource*, %struct.resource** %4, align 8
  %140 = call i32 @resource_size(%struct.resource* %139)
  %141 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = load %struct.resource*, %struct.resource** %5, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %147 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %149 = load i32, i32* @UPF_LOW_LATENCY, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 1
  %155 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 6
  store %struct.TYPE_3__* %154, %struct.TYPE_3__** %156, align 8
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @PORT_MESON, align 4
  %164 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 4
  store i64 0, i64* %167, align 8
  %168 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 3
  store i32* @meson_uart_ops, i32** %169, align 8
  %170 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %171 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %170, i32 0, i32 2
  store i32 64, i32* %171, align 8
  %172 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %173 = load %struct.uart_port**, %struct.uart_port*** @meson_ports, align 8
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %173, i64 %177
  store %struct.uart_port* %172, %struct.uart_port** %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %181 = call i32 @platform_set_drvdata(%struct.platform_device* %179, %struct.uart_port* %180)
  %182 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %183 = call i64 @meson_uart_request_port(%struct.uart_port* %182)
  %184 = icmp sge i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %130
  %186 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %187 = call i32 @meson_uart_reset(%struct.uart_port* %186)
  %188 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %189 = call i32 @meson_uart_release_port(%struct.uart_port* %188)
  br label %190

190:                                              ; preds = %185, %130
  %191 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %192 = call i32 @uart_add_one_port(i32* @meson_uart_driver, %struct.uart_port* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load %struct.uart_port**, %struct.uart_port*** @meson_ports, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %196, i64 %200
  store %struct.uart_port* null, %struct.uart_port** %201, align 8
  br label %202

202:                                              ; preds = %195, %190
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %128, %107, %90, %78, %69, %60
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @of_alias_get_id(i64, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local %struct.uart_port* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(i64, i8*) #1

declare dso_local i32 @meson_uart_probe_clocks_legacy(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @meson_uart_probe_clocks(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i64 @meson_uart_request_port(%struct.uart_port*) #1

declare dso_local i32 @meson_uart_reset(%struct.uart_port*) #1

declare dso_local i32 @meson_uart_release_port(%struct.uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
