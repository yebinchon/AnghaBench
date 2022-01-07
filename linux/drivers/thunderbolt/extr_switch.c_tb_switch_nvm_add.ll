; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.tb_switch_nvm*, i32, i32, i32 }
%struct.tb_switch_nvm = type { i32, i32, i32, %struct.nvmem_device*, %struct.nvmem_device* }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvm_ida = common dso_local global i32 0, align 4
@NVM_FLASH_SIZE = common dso_local global i32 0, align 4
@SZ_8K = common dso_local global i32 0, align 4
@SZ_16K = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@NVM_VERSION = common dso_local global i32 0, align 4
@NVM_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @tb_switch_nvm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_switch_nvm_add(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.nvmem_device*, align 8
  %5 = alloca %struct.tb_switch_nvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %139

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tb_switch_nvm* @kzalloc(i32 32, i32 %16)
  store %struct.tb_switch_nvm* %17, %struct.tb_switch_nvm** %5, align 8
  %18 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %19 = icmp ne %struct.tb_switch_nvm* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %139

23:                                               ; preds = %15
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ida_simple_get(i32* @nvm_ida, i32 0, i32 0, i32 %24)
  %26 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %27 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %94, label %32

32:                                               ; preds = %23
  %33 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NVM_FLASH_SIZE, align 4
  %37 = call i32 @dma_port_flash_read(i32 %35, i32 %36, i32* %6, i32 4)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %131

41:                                               ; preds = %32
  %42 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %43 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @SZ_8K, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @SZ_16K, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @SZ_1M, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 7
  %55 = shl i32 %52, %54
  %56 = sdiv i32 %55, 8
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %8, align 4
  %61 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %62 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NVM_VERSION, align 4
  %65 = call i32 @dma_port_flash_read(i32 %63, i32 %64, i32* %6, i32 4)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %131

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 16
  %72 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %73 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 8
  %76 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %77 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %79 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %80 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.nvmem_device* @register_nvmem(%struct.tb_switch* %78, i32 %81, i32 %82, i32 1)
  store %struct.nvmem_device* %83, %struct.nvmem_device** %4, align 8
  %84 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %85 = call i64 @IS_ERR(%struct.nvmem_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %89 = call i32 @PTR_ERR(%struct.nvmem_device* %88)
  store i32 %89, i32* %7, align 4
  br label %131

90:                                               ; preds = %69
  %91 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %92 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %93 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %92, i32 0, i32 3
  store %struct.nvmem_device* %91, %struct.nvmem_device** %93, align 8
  br label %94

94:                                               ; preds = %90, %23
  %95 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %96 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %94
  %100 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %101 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %102 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NVM_MAX_SIZE, align 4
  %105 = call %struct.nvmem_device* @register_nvmem(%struct.tb_switch* %100, i32 %103, i32 %104, i32 0)
  store %struct.nvmem_device* %105, %struct.nvmem_device** %4, align 8
  %106 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %107 = call i64 @IS_ERR(%struct.nvmem_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %111 = call i32 @PTR_ERR(%struct.nvmem_device* %110)
  store i32 %111, i32* %7, align 4
  br label %120

112:                                              ; preds = %99
  %113 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %114 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %115 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %114, i32 0, i32 4
  store %struct.nvmem_device* %113, %struct.nvmem_device** %115, align 8
  br label %116

116:                                              ; preds = %112, %94
  %117 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %118 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %119 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %118, i32 0, i32 1
  store %struct.tb_switch_nvm* %117, %struct.tb_switch_nvm** %119, align 8
  store i32 0, i32* %2, align 4
  br label %139

120:                                              ; preds = %109
  %121 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %122 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %121, i32 0, i32 3
  %123 = load %struct.nvmem_device*, %struct.nvmem_device** %122, align 8
  %124 = icmp ne %struct.nvmem_device* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %127 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %126, i32 0, i32 3
  %128 = load %struct.nvmem_device*, %struct.nvmem_device** %127, align 8
  %129 = call i32 @nvmem_unregister(%struct.nvmem_device* %128)
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %87, %68, %40
  %132 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %133 = getelementptr inbounds %struct.tb_switch_nvm, %struct.tb_switch_nvm* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ida_simple_remove(i32* @nvm_ida, i32 %134)
  %136 = load %struct.tb_switch_nvm*, %struct.tb_switch_nvm** %5, align 8
  %137 = call i32 @kfree(%struct.tb_switch_nvm* %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %131, %116, %20, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.tb_switch_nvm* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_port_flash_read(i32, i32, i32*, i32) #1

declare dso_local %struct.nvmem_device* @register_nvmem(%struct.tb_switch*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @PTR_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @nvmem_unregister(%struct.nvmem_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.tb_switch_nvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
