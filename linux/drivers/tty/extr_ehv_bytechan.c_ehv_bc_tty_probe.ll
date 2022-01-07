; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_tty_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehv_bc_data = type { i32, i64, i64, %struct.TYPE_10__, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ehv_bc_tty_probe.index = internal global i32 1, align 4
@.str = private unnamed_addr constant [10 x i8] c"hv-handle\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"no 'hv-handle' property in %pOFn node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@stdout_bc = common dso_local global i32 0, align 4
@bcs = common dso_local global %struct.ehv_bc_data* null, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"no 'interrupts' property in %pOFn node\0A\00", align 1
@ehv_bc_tty_port_ops = common dso_local global i32 0, align 4
@ehv_bc_driver = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"could not register tty (ret=%i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"registered /dev/%s%u for byte channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehv_bc_tty_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehv_bc_tty_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ehv_bc_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32* @of_get_property(%struct.device_node* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = ptrtoint %struct.device_node* %21 to i32
  %23 = call i32 @dev_err(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %142

26:                                               ; preds = %1
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @stdout_bc, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ehv_bc_tty_probe.index, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* @ehv_bc_tty_probe.index, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** @bcs, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %39, i64 %41
  store %struct.ehv_bc_data* %42, %struct.ehv_bc_data** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %45 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %47 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %49 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %51 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %50, i32 0, i32 5
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call i8* @irq_of_parse_and_map(%struct.device_node* %53, i32 0)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %57 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i8* @irq_of_parse_and_map(%struct.device_node* %58, i32 1)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %62 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %64 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NO_IRQ, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %37
  %69 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %70 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NO_IRQ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68, %37
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = ptrtoint %struct.device_node* %77 to i32
  %79 = call i32 @dev_err(%struct.TYPE_12__* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %127

82:                                               ; preds = %68
  %83 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %84 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %83, i32 0, i32 3
  %85 = call i32 @tty_port_init(%struct.TYPE_10__* %84)
  %86 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %87 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32* @ehv_bc_tty_port_ops, i32** %88, align 8
  %89 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %90 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ehv_bc_driver, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @tty_port_register_device(%struct.TYPE_10__* %90, %struct.TYPE_11__* %91, i32 %92, %struct.TYPE_12__* %94)
  %96 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %97 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %99 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %82
  %104 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %105 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_err(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %127

112:                                              ; preds = %82
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %116 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %114, %struct.ehv_bc_data* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ehv_bc_driver, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %124 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_info(%struct.TYPE_12__* %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %122, i32 %125)
  store i32 0, i32* %2, align 4
  br label %142

127:                                              ; preds = %103, %74
  %128 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %129 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %128, i32 0, i32 3
  %130 = call i32 @tty_port_destroy(%struct.TYPE_10__* %129)
  %131 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %132 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @irq_dispose_mapping(i64 %133)
  %135 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %136 = getelementptr inbounds %struct.ehv_bc_data, %struct.ehv_bc_data* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @irq_dispose_mapping(i64 %137)
  %139 = load %struct.ehv_bc_data*, %struct.ehv_bc_data** %5, align 8
  %140 = call i32 @memset(%struct.ehv_bc_data* %139, i32 0, i32 56)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %127, %112, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_10__*) #1

declare dso_local i32 @tty_port_register_device(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.ehv_bc_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32, i32) #1

declare dso_local i32 @tty_port_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @memset(%struct.ehv_bc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
