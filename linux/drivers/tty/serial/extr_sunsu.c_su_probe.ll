; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32*, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.resource*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.resource = type { i32 }
%struct.TYPE_4__ = type { i32* }

@SU_PORT_PORT = common dso_local global i32 0, align 4
@nr_inst = common dso_local global i64 0, align 8
@UART_NR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sunsu_ports = common dso_local global %struct.uart_sunsu_port* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"su\00", align 1
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@SU_BASE_BAUD = common dso_local global i32 0, align 4
@SU_PORT_KBD = common dso_local global i64 0, align 8
@SU_PORT_MS = common dso_local global i64 0, align 8
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sunsu_pops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rsc-console\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"lom-console\00", align 1
@sunsu_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @su_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @su_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.uart_sunsu_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @su_get_type(%struct.device_node* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SU_PORT_PORT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i64, i64* @nr_inst, align 8
  %21 = load i64, i64* @UART_NR, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %219

26:                                               ; preds = %19
  %27 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** @sunsu_ports, align 8
  %28 = load i64, i64* @nr_inst, align 8
  %29 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %27, i64 %28
  store %struct.uart_sunsu_port* %29, %struct.uart_sunsu_port** %5, align 8
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.uart_sunsu_port* @kzalloc(i32 72, i32 %31)
  store %struct.uart_sunsu_port* %32, %struct.uart_sunsu_port** %5, align 8
  %33 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %34 = icmp ne %struct.uart_sunsu_port* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %219

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* @nr_inst, align 8
  %41 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %50 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.resource*, %struct.resource** %52, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i64 0
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 4
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = call i32 @resource_size(%struct.resource* %61)
  %63 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @of_ioremap(%struct.resource* %65, i32 0, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %71 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %74 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %39
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SU_PORT_PORT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %84 = call i32 @kfree(%struct.uart_sunsu_port* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %219

88:                                               ; preds = %39
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 7
  store i32 %94, i32* %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %101 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %102, align 8
  %103 = load i64, i64* @PORT_UNKNOWN, align 8
  %104 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %105 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  %107 = load i32, i32* @SU_BASE_BAUD, align 4
  %108 = mul nsw i32 %107, 16
  %109 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %110 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  store i32 0, i32* %9, align 4
  %112 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %113 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* @SU_PORT_KBD, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %88
  %119 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %120 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @SU_PORT_MS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %118, %88
  %126 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %127 = call i32 @sunsu_kbd_ms_init(%struct.uart_sunsu_port* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.resource*, %struct.resource** %132, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i64 0
  %135 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %136 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %140 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @of_iounmap(%struct.resource* %134, i32 %138, i32 %141)
  %143 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %144 = call i32 @kfree(%struct.uart_sunsu_port* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %219

146:                                              ; preds = %125
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.uart_sunsu_port* %148)
  %150 = load i64, i64* @nr_inst, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* @nr_inst, align 8
  store i32 0, i32* %2, align 4
  br label %219

152:                                              ; preds = %118
  %153 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %154 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %155 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  %159 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %160 = call i32 @sunsu_autoconfig(%struct.uart_sunsu_port* %159)
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %9, align 4
  %163 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %164 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @PORT_UNKNOWN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %203

170:                                              ; preds = %152
  %171 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %172 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  store i32* @sunsu_pops, i32** %173, align 8
  store i32 0, i32* %8, align 4
  %174 = load %struct.device_node*, %struct.device_node** %4, align 8
  %175 = call i64 @of_node_name_eq(%struct.device_node* %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170
  %178 = load %struct.device_node*, %struct.device_node** %4, align 8
  %179 = call i64 @of_node_name_eq(%struct.device_node* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %170
  store i32 1, i32* %8, align 4
  br label %182

182:                                              ; preds = %181, %177
  %183 = call i32 (...) @SUNSU_CONSOLE()
  %184 = load %struct.device_node*, %struct.device_node** %4, align 8
  %185 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %186 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @sunserial_console_match(i32 %183, %struct.device_node* %184, i32* @sunsu_reg, i64 %188, i32 %189)
  %191 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %192 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %191, i32 0, i32 2
  %193 = call i32 @uart_add_one_port(i32* @sunsu_reg, %struct.TYPE_6__* %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %182
  br label %203

197:                                              ; preds = %182
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %200 = call i32 @platform_set_drvdata(%struct.platform_device* %198, %struct.uart_sunsu_port* %199)
  %201 = load i64, i64* @nr_inst, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* @nr_inst, align 8
  store i32 0, i32* %2, align 4
  br label %219

203:                                              ; preds = %196, %169
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load %struct.resource*, %struct.resource** %205, align 8
  %207 = getelementptr inbounds %struct.resource, %struct.resource* %206, i64 0
  %208 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %209 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %213 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @of_iounmap(%struct.resource* %207, i32 %211, i32 %214)
  %216 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %217 = call i32 @kfree(%struct.uart_sunsu_port* %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %203, %197, %146, %130, %85, %35, %23
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @su_get_type(%struct.device_node*) #1

declare dso_local %struct.uart_sunsu_port* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @of_ioremap(%struct.resource*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.uart_sunsu_port*) #1

declare dso_local i32 @sunsu_kbd_ms_init(%struct.uart_sunsu_port*) #1

declare dso_local i32 @of_iounmap(%struct.resource*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_sunsu_port*) #1

declare dso_local i32 @sunsu_autoconfig(%struct.uart_sunsu_port*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @sunserial_console_match(i32, %struct.device_node*, i32*, i64, i32) #1

declare dso_local i32 @SUNSU_CONSOLE(...) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
