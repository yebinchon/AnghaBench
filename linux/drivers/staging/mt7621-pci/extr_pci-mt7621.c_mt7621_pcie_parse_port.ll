; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_parse_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pcie_parse_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pcie = type { i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mt7621_pcie_port = type { i32, i32, %struct.mt7621_pcie*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"missing \22reg\22 property\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pcie%d\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get pcie%d reset control\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pcie-phy%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7621_pcie*, %struct.device_node*, i32)* @mt7621_pcie_parse_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pcie_parse_port(%struct.mt7621_pcie* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7621_pcie*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt7621_pcie_port*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.resource, align 4
  %12 = alloca [10 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.mt7621_pcie* %0, %struct.mt7621_pcie** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %10, align 8
  %20 = load %struct.device*, %struct.device** %9, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mt7621_pcie_port* @devm_kzalloc(%struct.device* %20, i32 32, i32 %21)
  store %struct.mt7621_pcie_port* %22, %struct.mt7621_pcie_port** %8, align 8
  %23 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %24 = icmp ne %struct.mt7621_pcie_port* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %112

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @of_address_to_resource(%struct.device_node* %29, i32 %31, %struct.resource* %11)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %40, %struct.resource* %11)
  %42 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %43 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %45 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %51 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %112

54:                                               ; preds = %39
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @snprintf(i8* %55, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %60 = call i32 @devm_reset_control_get_exclusive(%struct.device* %58, i8* %59)
  %61 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %62 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %64 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %75 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %112

78:                                               ; preds = %54
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @snprintf(i8* %79, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %84 = call i32 @devm_phy_get(%struct.device* %82, i8* %83)
  %85 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %86 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %88 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %94 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %4, align 4
  br label %112

97:                                               ; preds = %78
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %100 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %102 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %103 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %102, i32 0, i32 2
  store %struct.mt7621_pcie* %101, %struct.mt7621_pcie** %103, align 8
  %104 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %105 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %104, i32 0, i32 1
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.mt7621_pcie_port*, %struct.mt7621_pcie_port** %8, align 8
  %108 = getelementptr inbounds %struct.mt7621_pcie_port, %struct.mt7621_pcie_port* %107, i32 0, i32 1
  %109 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %110 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %109, i32 0, i32 0
  %111 = call i32 @list_add_tail(i32* %108, i32* %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %97, %92, %70, %49, %35, %25
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.mt7621_pcie_port* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
