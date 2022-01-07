; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_uart_port = type { i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"nvidia,enable-modem-interrupt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"RX in PIO mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"TX in PIO mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"nvidia,adjust-baud-rates\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.tegra_uart_port*)* @tegra_uart_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_parse_dt(%struct.platform_device* %0, %struct.tegra_uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.tegra_uart_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.tegra_uart_port* %1, %struct.tegra_uart_port** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_alias_get_id(%struct.device_node* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_err(%struct.TYPE_8__* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %150

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call i32 @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_property_match_string(%struct.device_node* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_info(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %27
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_property_match_string(%struct.device_node* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_info(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = call i32 @of_property_count_u32_elems(%struct.device_node* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %146

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = sdiv i32 %63, 3
  %65 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 24
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.TYPE_7__* @devm_kzalloc(%struct.TYPE_8__* %68, i32 %74, i32 %75)
  %77 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %77, i32 0, i32 3
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %62
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %150

86:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %140, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %145

91:                                               ; preds = %87
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @of_property_read_u32_index(%struct.device_node* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %93, i8** %10)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %100 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i8* %98, i8** %105, align 8
  br label %106

106:                                              ; preds = %97, %91
  %107 = load %struct.device_node*, %struct.device_node** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @of_property_read_u32_index(%struct.device_node* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %109, i8** %10)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %115, i32 0, i32 3
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i8* %114, i8** %121, align 8
  br label %122

122:                                              ; preds = %113, %106
  %123 = load %struct.device_node*, %struct.device_node** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 2
  %126 = call i32 @of_property_read_u32_index(%struct.device_node* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %125, i8** %10)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %122
  %130 = load i8*, i8** %10, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %133 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i64 %131, i64* %138, align 8
  br label %139

139:                                              ; preds = %129, %122
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 3
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %87

145:                                              ; preds = %87
  br label %149

146:                                              ; preds = %57
  %147 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %148 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %145
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %83, %21
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_7__* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
