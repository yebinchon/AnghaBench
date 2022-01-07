; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.iproc_gpio = type { i32, i32, %struct.irq_chip, i32, %struct.gpio_chip, i32, i8*, i8*, %struct.device* }
%struct.irq_chip = type { i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.gpio_chip = type { i32, i32, %struct.gpio_irq_chip, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, %struct.irq_chip* }

@IOCTRL_TYPE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"brcm,iproc-nsp-gpio\00", align 1
@IPROC_PINCONF_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"brcm,iproc-stingray-gpio\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to map I/O memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"brcm,cygnus-ccm-gpio\00", align 1
@IOCTRL_TYPE_CDRU = common dso_local global i32 0, align 4
@IOCTRL_TYPE_AON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"missing ngpios DT property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NGPIOS_PER_BANK = common dso_local global i32 0, align 4
@iproc_gpio_request = common dso_local global i32 0, align 4
@iproc_gpio_free = common dso_local global i32 0, align 4
@iproc_gpio_direction_input = common dso_local global i32 0, align 4
@iproc_gpio_direction_output = common dso_local global i32 0, align 4
@iproc_gpio_get_direction = common dso_local global i32 0, align 4
@iproc_gpio_set = common dso_local global i32 0, align 4
@iproc_gpio_get = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"bcm-iproc-gpio\00", align 1
@iproc_gpio_irq_ack = common dso_local global i32 0, align 4
@iproc_gpio_irq_mask = common dso_local global i8* null, align 8
@iproc_gpio_irq_unmask = common dso_local global i8* null, align 8
@iproc_gpio_irq_set_type = common dso_local global i32 0, align 4
@iproc_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"unable to add GPIO chip\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unable to register pinconf\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"unable to create pinconf disable map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.iproc_gpio*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.irq_chip*, align 8
  %15 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @IOCTRL_TYPE_INVALID, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @of_device_is_compatible(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @IPROC_PINCONF_DRIVE_STRENGTH, align 4
  %26 = call i32 @BIT(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @of_device_is_compatible(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.iproc_gpio* @devm_kzalloc(%struct.device* %36, i32 200, i32 %37)
  store %struct.iproc_gpio* %38, %struct.iproc_gpio** %6, align 8
  %39 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %40 = icmp ne %struct.iproc_gpio* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %280

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %47 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %46, i32 0, i32 8
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.iproc_gpio* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource(%struct.platform_device* %51, i32 %52, i32 0)
  store %struct.resource* %53, %struct.resource** %5, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = call i8* @devm_ioremap_resource(%struct.device* %54, %struct.resource* %55)
  %57 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %58 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %59, i32 0, i32 7
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %44
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %67, i32 0, i32 7
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %280

71:                                               ; preds = %44
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 1)
  store %struct.resource* %74, %struct.resource** %5, align 8
  %75 = load %struct.resource*, %struct.resource** %5, align 8
  %76 = icmp ne %struct.resource* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = call i8* @devm_ioremap_resource(%struct.device* %78, %struct.resource* %79)
  %81 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %82 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %84 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %83, i32 0, i32 6
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %92 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %91, i32 0, i32 6
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %280

95:                                               ; preds = %77
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @of_device_is_compatible(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @IOCTRL_TYPE_CDRU, align 4
  store i32 %102, i32* %13, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @IOCTRL_TYPE_AON, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %109 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @of_property_read_u32(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %280

121:                                              ; preds = %106
  %122 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %123 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %122, i32 0, i32 5
  %124 = call i32 @raw_spin_lock_init(i32* %123)
  %125 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %126 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %125, i32 0, i32 4
  store %struct.gpio_chip* %126, %struct.gpio_chip** %7, align 8
  %127 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %128 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %127, i32 0, i32 0
  store i32 -1, i32* %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %131 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @NGPIOS_PER_BANK, align 4
  %134 = add nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* @NGPIOS_PER_BANK, align 4
  %137 = sdiv i32 %135, %136
  %138 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %139 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i32 @dev_name(%struct.device* %140)
  %142 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %143 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %142, i32 0, i32 12
  store i32 %141, i32* %143, align 8
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %146 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %145, i32 0, i32 11
  store %struct.device* %144, %struct.device** %146, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %151 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @iproc_gpio_request, align 4
  %153 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %154 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @iproc_gpio_free, align 4
  %156 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %157 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @iproc_gpio_direction_input, align 4
  %159 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %160 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @iproc_gpio_direction_output, align 4
  %162 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %163 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @iproc_gpio_get_direction, align 4
  %165 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %166 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @iproc_gpio_set, align 4
  %168 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %169 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @iproc_gpio_get, align 4
  %171 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %172 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = getelementptr inbounds %struct.device, %struct.device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @of_property_read_bool(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %177 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %178 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = call i32 @platform_get_irq(%struct.platform_device* %179, i32 0)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %240

183:                                              ; preds = %121
  %184 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %185 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %184, i32 0, i32 2
  store %struct.irq_chip* %185, %struct.irq_chip** %14, align 8
  %186 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %187 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %187, align 8
  %188 = load i32, i32* @iproc_gpio_irq_ack, align 4
  %189 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %190 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = load i8*, i8** @iproc_gpio_irq_mask, align 8
  %192 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %193 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %192, i32 0, i32 5
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @iproc_gpio_irq_unmask, align 8
  %195 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %196 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %195, i32 0, i32 4
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @iproc_gpio_irq_set_type, align 4
  %198 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %199 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load i8*, i8** @iproc_gpio_irq_unmask, align 8
  %201 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %202 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @iproc_gpio_irq_mask, align 8
  %204 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %205 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %207 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %206, i32 0, i32 2
  store %struct.gpio_irq_chip* %207, %struct.gpio_irq_chip** %15, align 8
  %208 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  %209 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %210 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %209, i32 0, i32 5
  store %struct.irq_chip* %208, %struct.irq_chip** %210, align 8
  %211 = load i32, i32* @iproc_gpio_irq_handler, align 4
  %212 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %213 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %215 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.device*, %struct.device** %4, align 8
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = call i32* @devm_kcalloc(%struct.device* %216, i32 1, i32 4, i32 %217)
  %219 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %220 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %219, i32 0, i32 1
  store i32* %218, i32** %220, align 8
  %221 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %222 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %183
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %280

228:                                              ; preds = %183
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %231 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %229, i32* %233, align 4
  %234 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %235 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %236 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @handle_simple_irq, align 4
  %238 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %15, align 8
  %239 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %228, %121
  %241 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %242 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %243 = call i32 @gpiochip_add_data(%struct.gpio_chip* %241, %struct.iproc_gpio* %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load %struct.device*, %struct.device** %4, align 8
  %248 = call i32 @dev_err(%struct.device* %247, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %2, align 4
  br label %280

250:                                              ; preds = %240
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %275, label %253

253:                                              ; preds = %250
  %254 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %255 = call i32 @iproc_gpio_register_pinconf(%struct.iproc_gpio* %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = call i32 @dev_err(%struct.device* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %276

261:                                              ; preds = %253
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %261
  %265 = load %struct.iproc_gpio*, %struct.iproc_gpio** %6, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @iproc_pinconf_disable_map_create(%struct.iproc_gpio* %265, i32 %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = load %struct.device*, %struct.device** %4, align 8
  %272 = call i32 @dev_err(%struct.device* %271, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %276

273:                                              ; preds = %264
  br label %274

274:                                              ; preds = %273, %261
  br label %275

275:                                              ; preds = %274, %250
  store i32 0, i32* %2, align 4
  br label %280

276:                                              ; preds = %270, %258
  %277 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %278 = call i32 @gpiochip_remove(%struct.gpio_chip* %277)
  %279 = load i32, i32* %11, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %276, %275, %246, %225, %115, %88, %64, %41
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.iproc_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_gpio*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.iproc_gpio*) #1

declare dso_local i32 @iproc_gpio_register_pinconf(%struct.iproc_gpio*) #1

declare dso_local i32 @iproc_pinconf_disable_map_create(%struct.iproc_gpio*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
