; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdes_am654 = type { %struct.regmap**, %struct.device*, %struct.device_node* }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.serdes_am654_clk_mux = type { i32, i32, %struct.TYPE_2__, %struct.regmap*, %struct.clk_init_data }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i8*, i32, i32* }
%struct.clk = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ti,serdes-clk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Fail to get serdes-clk node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Fail to get Syscon regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SERDES clock must have parents\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@serdes_am654_clk_mux_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdes_am654*, i8*, i32)* @serdes_am654_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_am654_clk_register(%struct.serdes_am654* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdes_am654*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.serdes_am654_clk_mux*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.clk_init_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.regmap*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.clk*, align 8
  %19 = alloca i32, align 4
  store %struct.serdes_am654* %0, %struct.serdes_am654** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.serdes_am654*, %struct.serdes_am654** %5, align 8
  %21 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %20, i32 0, i32 2
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %8, align 8
  %23 = load %struct.serdes_am654*, %struct.serdes_am654** %5, align 8
  %24 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %23, i32 0, i32 1
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %9, align 8
  store i32 0, i32* %19, align 4
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(%struct.device* %26, i32 64, i32 %27)
  %29 = bitcast i8* %28 to %struct.serdes_am654_clk_mux*
  store %struct.serdes_am654_clk_mux* %29, %struct.serdes_am654_clk_mux** %10, align 8
  %30 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %31 = icmp ne %struct.serdes_am654_clk_mux* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %153

35:                                               ; preds = %3
  %36 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %37 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %36, i32 0, i32 4
  store %struct.clk_init_data* %37, %struct.clk_init_data** %13, align 8
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %39, %struct.device_node** %11, align 8
  %40 = load %struct.device_node*, %struct.device_node** %11, align 8
  %41 = icmp ne %struct.device_node* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %19, align 4
  br label %149

47:                                               ; preds = %35
  %48 = load %struct.device_node*, %struct.device_node** %11, align 8
  %49 = getelementptr inbounds %struct.device_node, %struct.device_node* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.regmap* @syscon_node_to_regmap(i32 %50)
  store %struct.regmap* %51, %struct.regmap** %15, align 8
  %52 = load %struct.regmap*, %struct.regmap** %15, align 8
  %53 = call i64 @IS_ERR(%struct.regmap* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.regmap*, %struct.regmap** %15, align 8
  %59 = call i32 @PTR_ERR(%struct.regmap* %58)
  store i32 %59, i32* %19, align 4
  br label %149

60:                                               ; preds = %47
  %61 = load %struct.device_node*, %struct.device_node** %8, align 8
  %62 = call i32 @of_clk_get_parent_count(%struct.device_node* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %19, align 4
  br label %149

70:                                               ; preds = %60
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @devm_kzalloc(%struct.device* %71, i32 %75, i32 %76)
  %78 = bitcast i8* %77 to i8**
  store i8** %78, i8*** %12, align 8
  %79 = load i8**, i8*** %12, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %19, align 4
  br label %149

84:                                               ; preds = %70
  %85 = load %struct.device_node*, %struct.device_node** %8, align 8
  %86 = load i8**, i8*** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @of_clk_parent_fill(%struct.device_node* %85, i8** %86, i32 %87)
  %89 = load %struct.device_node*, %struct.device_node** %11, align 8
  %90 = call i32* @of_get_address(%struct.device_node* %89, i32 0, i32* null, i32* null)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %19, align 4
  br label %149

96:                                               ; preds = %84
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  store i32 %99, i32* %17, align 4
  %100 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %101 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %100, i32 0, i32 4
  store i32* @serdes_am654_clk_mux_ops, i32** %101, align 8
  %102 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %103 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %104 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i8**, i8*** %12, align 8
  %106 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %107 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %106, i32 0, i32 0
  store i8** %105, i8*** %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %110 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %113 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.regmap*, %struct.regmap** %15, align 8
  %115 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %116 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %115, i32 0, i32 3
  store %struct.regmap* %114, %struct.regmap** %116, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %119 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %122 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.clk_init_data*, %struct.clk_init_data** %13, align 8
  %124 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %125 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store %struct.clk_init_data* %123, %struct.clk_init_data** %126, align 8
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = load %struct.serdes_am654_clk_mux*, %struct.serdes_am654_clk_mux** %10, align 8
  %129 = getelementptr inbounds %struct.serdes_am654_clk_mux, %struct.serdes_am654_clk_mux* %128, i32 0, i32 2
  %130 = call %struct.regmap* @devm_clk_register(%struct.device* %127, %struct.TYPE_2__* %129)
  %131 = bitcast %struct.regmap* %130 to %struct.clk*
  store %struct.clk* %131, %struct.clk** %18, align 8
  %132 = load %struct.clk*, %struct.clk** %18, align 8
  %133 = bitcast %struct.clk* %132 to %struct.regmap*
  %134 = call i64 @IS_ERR(%struct.regmap* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %96
  %137 = load %struct.clk*, %struct.clk** %18, align 8
  %138 = bitcast %struct.clk* %137 to %struct.regmap*
  %139 = call i32 @PTR_ERR(%struct.regmap* %138)
  store i32 %139, i32* %19, align 4
  br label %149

140:                                              ; preds = %96
  %141 = load %struct.clk*, %struct.clk** %18, align 8
  %142 = bitcast %struct.clk* %141 to %struct.regmap*
  %143 = load %struct.serdes_am654*, %struct.serdes_am654** %5, align 8
  %144 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %143, i32 0, i32 0
  %145 = load %struct.regmap**, %struct.regmap*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.regmap*, %struct.regmap** %145, i64 %147
  store %struct.regmap* %142, %struct.regmap** %148, align 8
  br label %149

149:                                              ; preds = %140, %136, %93, %81, %65, %55, %42
  %150 = load %struct.device_node*, %struct.device_node** %11, align 8
  %151 = call i32 @of_node_put(%struct.device_node* %150)
  %152 = load i32, i32* %19, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %149, %32
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32 @of_clk_parent_fill(%struct.device_node*, i8**, i32) #1

declare dso_local i32* @of_get_address(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.regmap* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
