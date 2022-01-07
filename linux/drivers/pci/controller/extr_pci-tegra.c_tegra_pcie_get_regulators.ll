; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_4__ = type { i8* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"nvidia,tegra186-pcie\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dvdd-pex\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hvdd-pex-pll\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hvdd-pex\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vddio-pexctl-aud\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"nvidia,tegra210-pcie\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"avdd-pll-uerefe\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"hvddio-pex\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dvddio-pex\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dvdd-pex-pll\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"hvdd-pex-pll-e\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"vddio-pex-ctl\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"nvidia,tegra124-pcie\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"avddio-pex\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"avdd-pex-pll\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"avdd-pll-erefe\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"nvidia,tegra30-pcie\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"avdd-plle\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"avdd-pexa\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"vdd-pexa\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"avdd-pexb\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"vdd-pexb\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"nvidia,tegra20-pcie\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"avdd-pex\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"vdd-pex\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"vddio-pex-clk\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"using legacy DT binding for power supplies\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*, i32)* @tegra_pcie_get_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_get_regulators(%struct.tegra_pcie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i64 @of_device_is_compatible(%struct.device_node* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %2
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %23, i32 0, i32 2
  %25 = load %struct.device*, %struct.device** %24, align 8
  %26 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @devm_kcalloc(%struct.device* %25, i32 %28, i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  %32 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %32, i32 0, i32 1
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %430

41:                                               ; preds = %20
  %42 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %73, align 8
  br label %397

74:                                               ; preds = %2
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = call i64 @of_device_is_compatible(%struct.device_node* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %148

78:                                               ; preds = %74
  %79 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %79, i32 0, i32 0
  store i32 6, i32* %80, align 8
  %81 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %81, i32 0, i32 2
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kcalloc(%struct.device* %83, i32 %86, i32 8, i32 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_4__*
  %90 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %90, i32 0, i32 1
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %93 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %78
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %430

99:                                               ; preds = %78
  %100 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %107, align 8
  %108 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %109 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %117 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %123, align 8
  %124 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %125 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %131, align 8
  %132 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %133 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %139, align 8
  %140 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %141 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %8, align 4
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %147, align 8
  br label %396

148:                                              ; preds = %74
  %149 = load %struct.device_node*, %struct.device_node** %7, align 8
  %150 = call i64 @of_device_is_compatible(%struct.device_node* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %228

152:                                              ; preds = %148
  %153 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %154 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %153, i32 0, i32 0
  store i32 7, i32* %154, align 8
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %157 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i8* @devm_kcalloc(%struct.device* %155, i32 %158, i32 8, i32 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_4__*
  %162 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %163 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %162, i32 0, i32 1
  store %struct.TYPE_4__* %161, %struct.TYPE_4__** %163, align 8
  %164 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %165 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %152
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %430

171:                                              ; preds = %152
  %172 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %173 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %179, align 8
  %180 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %181 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %187, align 8
  %188 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %189 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %197 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %203, align 8
  %204 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %205 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %8, align 4
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %211, align 8
  %212 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %213 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %8, align 4
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %219, align 8
  %220 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %221 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %8, align 4
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %227, align 8
  br label %395

228:                                              ; preds = %148
  %229 = load %struct.device_node*, %struct.device_node** %7, align 8
  %230 = call i64 @of_device_is_compatible(%struct.device_node* %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %344

232:                                              ; preds = %228
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %233 = load i32, i32* %5, align 4
  %234 = and i32 %233, 15
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 1, i32* %9, align 4
  br label %237

237:                                              ; preds = %236, %232
  %238 = load i32, i32* %5, align 4
  %239 = and i32 %238, 48
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 1, i32* %10, align 4
  br label %242

242:                                              ; preds = %241, %237
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 2, i32 0
  %247 = add nsw i32 4, %246
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 2, i32 0
  %252 = add nsw i32 %247, %251
  %253 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %254 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.device*, %struct.device** %6, align 8
  %256 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %257 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @GFP_KERNEL, align 4
  %260 = call i8* @devm_kcalloc(%struct.device* %255, i32 %258, i32 8, i32 %259)
  %261 = bitcast i8* %260 to %struct.TYPE_4__*
  %262 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %263 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %262, i32 0, i32 1
  store %struct.TYPE_4__* %261, %struct.TYPE_4__** %263, align 8
  %264 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %265 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = icmp ne %struct.TYPE_4__* %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %242
  %269 = load i32, i32* @ENOMEM, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %430

271:                                              ; preds = %242
  %272 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %273 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %272, i32 0, i32 1
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %8, align 4
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %279, align 8
  %280 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %281 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %280, i32 0, i32 1
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %8, align 4
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %287, align 8
  %288 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %289 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %8, align 4
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %295, align 8
  %296 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %297 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %296, i32 0, i32 1
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %8, align 4
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %303, align 8
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %323

306:                                              ; preds = %271
  %307 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %308 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %307, i32 0, i32 1
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %8, align 4
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %314, align 8
  %315 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %316 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %315, i32 0, i32 1
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %8, align 4
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %322, align 8
  br label %323

323:                                              ; preds = %306, %271
  %324 = load i32, i32* %10, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  %327 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %328 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %327, i32 0, i32 1
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %8, align 4
  %332 = zext i32 %330 to i64
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %334, align 8
  %335 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %336 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %335, i32 0, i32 1
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %8, align 4
  %340 = zext i32 %338 to i64
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %342, align 8
  br label %343

343:                                              ; preds = %326, %323
  br label %394

344:                                              ; preds = %228
  %345 = load %struct.device_node*, %struct.device_node** %7, align 8
  %346 = call i64 @of_device_is_compatible(%struct.device_node* %345, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %393

348:                                              ; preds = %344
  %349 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %350 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %349, i32 0, i32 0
  store i32 5, i32* %350, align 8
  %351 = load %struct.device*, %struct.device** %6, align 8
  %352 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %353 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @GFP_KERNEL, align 4
  %356 = call i8* @devm_kcalloc(%struct.device* %351, i32 %354, i32 8, i32 %355)
  %357 = bitcast i8* %356 to %struct.TYPE_4__*
  %358 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %359 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %358, i32 0, i32 1
  store %struct.TYPE_4__* %357, %struct.TYPE_4__** %359, align 8
  %360 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %361 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %360, i32 0, i32 1
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %361, align 8
  %363 = icmp ne %struct.TYPE_4__* %362, null
  br i1 %363, label %367, label %364

364:                                              ; preds = %348
  %365 = load i32, i32* @ENOMEM, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %3, align 4
  br label %430

367:                                              ; preds = %348
  %368 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %369 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %368, i32 0, i32 1
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i64 0
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %372, align 8
  %373 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %374 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %373, i32 0, i32 1
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i64 1
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %377, align 8
  %378 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %379 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %378, i32 0, i32 1
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 2
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %382, align 8
  %383 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %384 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %383, i32 0, i32 1
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i64 3
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %387, align 8
  %388 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %389 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %388, i32 0, i32 1
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 4
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8** %392, align 8
  br label %393

393:                                              ; preds = %367, %344
  br label %394

394:                                              ; preds = %393, %343
  br label %395

395:                                              ; preds = %394, %171
  br label %396

396:                                              ; preds = %395, %99
  br label %397

397:                                              ; preds = %396, %41
  %398 = load %struct.device*, %struct.device** %6, align 8
  %399 = getelementptr inbounds %struct.device, %struct.device* %398, i32 0, i32 0
  %400 = load %struct.device_node*, %struct.device_node** %399, align 8
  %401 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %402 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %401, i32 0, i32 1
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %405 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i64 @of_regulator_bulk_available(%struct.device_node* %400, %struct.TYPE_4__* %403, i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %397
  %410 = load %struct.device*, %struct.device** %6, align 8
  %411 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %412 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %415 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %414, i32 0, i32 1
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = call i32 @devm_regulator_bulk_get(%struct.device* %410, i32 %413, %struct.TYPE_4__* %416)
  store i32 %417, i32* %3, align 4
  br label %430

418:                                              ; preds = %397
  %419 = load %struct.device*, %struct.device** %6, align 8
  %420 = call i32 @dev_info(%struct.device* %419, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0))
  %421 = load %struct.device*, %struct.device** %6, align 8
  %422 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %423 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %422, i32 0, i32 1
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %423, align 8
  %425 = call i32 @devm_kfree(%struct.device* %421, %struct.TYPE_4__* %424)
  %426 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %427 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %426, i32 0, i32 0
  store i32 0, i32* %427, align 8
  %428 = load %struct.tegra_pcie*, %struct.tegra_pcie** %4, align 8
  %429 = call i32 @tegra_pcie_get_legacy_regulators(%struct.tegra_pcie* %428)
  store i32 %429, i32* %3, align 4
  br label %430

430:                                              ; preds = %418, %409, %364, %268, %168, %96, %38
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @of_regulator_bulk_available(%struct.device_node*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @tegra_pcie_get_legacy_regulators(%struct.tegra_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
