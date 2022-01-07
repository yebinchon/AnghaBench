; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port = type { i32 }
%struct.plat_sci_port = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@sci_ports_in_use = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get alias id (%d)\0A\00", align 1
@sci_ports = common dso_local global %struct.sci_port* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.plat_sci_port* (%struct.platform_device*, i32*)* @sci_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.plat_sci_port* @sci_parse_dt(%struct.platform_device* %0, i32* %1) #0 {
  %3 = alloca %struct.plat_sci_port*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.plat_sci_port*, align 8
  %8 = alloca %struct.sci_port*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load i32, i32* @CONFIG_OF, align 4
  %16 = call i32 @IS_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store %struct.plat_sci_port* null, %struct.plat_sci_port** %3, align 8
  br label %83

22:                                               ; preds = %18
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i8* @of_device_get_match_data(%struct.TYPE_4__* %24)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.plat_sci_port* @devm_kzalloc(%struct.TYPE_4__* %27, i32 8, i32 %28)
  store %struct.plat_sci_port* %29, %struct.plat_sci_port** %7, align 8
  %30 = load %struct.plat_sci_port*, %struct.plat_sci_port** %7, align 8
  %31 = icmp ne %struct.plat_sci_port* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store %struct.plat_sci_port* null, %struct.plat_sci_port** %3, align 8
  br label %83

33:                                               ; preds = %22
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_alias_get_id(%struct.device_node* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @sci_ports_in_use, align 4
  %40 = xor i32 %39, -1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @sci_ports_in_use, align 4
  %44 = call i32 @ffz(i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %38, %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_err(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store %struct.plat_sci_port* null, %struct.plat_sci_port** %3, align 8
  br label %83

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.sci_port*, %struct.sci_port** @sci_ports, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.sci_port* %55)
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dev_err(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store %struct.plat_sci_port* null, %struct.plat_sci_port** %3, align 8
  br label %83

63:                                               ; preds = %53
  %64 = load %struct.sci_port*, %struct.sci_port** @sci_ports, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %64, i64 %66
  store %struct.sci_port* %67, %struct.sci_port** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @SCI_OF_TYPE(i8* %70)
  %72 = load %struct.plat_sci_port*, %struct.plat_sci_port** %7, align 8
  %73 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @SCI_OF_REGTYPE(i8* %74)
  %76 = load %struct.plat_sci_port*, %struct.plat_sci_port** %7, align 8
  %77 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = call i32 @of_property_read_bool(%struct.device_node* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %81 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.plat_sci_port*, %struct.plat_sci_port** %7, align 8
  store %struct.plat_sci_port* %82, %struct.plat_sci_port** %3, align 8
  br label %83

83:                                               ; preds = %63, %58, %48, %32, %21
  %84 = load %struct.plat_sci_port*, %struct.plat_sci_port** %3, align 8
  ret %struct.plat_sci_port* %84
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i8* @of_device_get_match_data(%struct.TYPE_4__*) #1

declare dso_local %struct.plat_sci_port* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sci_port*) #1

declare dso_local i32 @SCI_OF_TYPE(i8*) #1

declare dso_local i32 @SCI_OF_REGTYPE(i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
