; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_acquire_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_acquire_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.aspeed_pinmux_data = type { %struct.TYPE_2__*, %struct.regmap** }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { %struct.device_node* }

@ASPEED_IP_SCU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Missing SCU syscon!\00", align 1
@ASPEED_NR_PINMUX_IPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASPEED_IP_GFX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"aspeed,external-nodes\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Acquired GFX regmap\00", align 1
@ASPEED_IP_LPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Acquired LPC regmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap* (%struct.aspeed_pinmux_data*, i32)* @aspeed_g5_acquire_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap* @aspeed_g5_acquire_regmap(%struct.aspeed_pinmux_data* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.aspeed_pinmux_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.regmap*, align 8
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ASPEED_IP_SCU, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %15 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %14, i32 0, i32 1
  %16 = load %struct.regmap**, %struct.regmap*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.regmap*, %struct.regmap** %16, i64 %18
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  %21 = icmp ne %struct.regmap* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %26 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %25, i32 0, i32 1
  %27 = load %struct.regmap**, %struct.regmap*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.regmap*, %struct.regmap** %27, i64 %29
  %31 = load %struct.regmap*, %struct.regmap** %30, align 8
  store %struct.regmap* %31, %struct.regmap** %3, align 8
  br label %146

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ASPEED_NR_PINMUX_IPS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.regmap* @ERR_PTR(i32 %38)
  store %struct.regmap* %39, %struct.regmap** %3, align 8
  br label %146

40:                                               ; preds = %32
  %41 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %42 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %41, i32 0, i32 1
  %43 = load %struct.regmap**, %struct.regmap*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.regmap*, %struct.regmap** %43, i64 %45
  %47 = load %struct.regmap*, %struct.regmap** %46, align 8
  %48 = call i64 @likely(%struct.regmap* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %52 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %51, i32 0, i32 1
  %53 = load %struct.regmap**, %struct.regmap*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.regmap*, %struct.regmap** %53, i64 %55
  %57 = load %struct.regmap*, %struct.regmap** %56, align 8
  store %struct.regmap* %57, %struct.regmap** %3, align 8
  br label %146

58:                                               ; preds = %40
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ASPEED_IP_GFX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %64 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.device_node* @of_parse_phandle(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %68, %struct.device_node** %6, align 8
  %69 = load %struct.device_node*, %struct.device_node** %6, align 8
  %70 = icmp ne %struct.device_node* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %72)
  store %struct.regmap* %73, %struct.regmap** %7, align 8
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = call i32 @of_node_put(%struct.device_node* %74)
  %76 = load %struct.regmap*, %struct.regmap** %7, align 8
  %77 = call i64 @IS_ERR(%struct.regmap* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %80, %struct.regmap** %3, align 8
  br label %146

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %62
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.regmap* @ERR_PTR(i32 %84)
  store %struct.regmap* %85, %struct.regmap** %3, align 8
  br label %146

86:                                               ; preds = %81
  %87 = load %struct.regmap*, %struct.regmap** %7, align 8
  %88 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %89 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %88, i32 0, i32 1
  %90 = load %struct.regmap**, %struct.regmap*** %89, align 8
  %91 = load i32, i32* @ASPEED_IP_GFX, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.regmap*, %struct.regmap** %90, i64 %92
  store %struct.regmap* %87, %struct.regmap** %93, align 8
  %94 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %95 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = call i32 @dev_dbg(%struct.TYPE_2__* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %98, %struct.regmap** %3, align 8
  br label %146

99:                                               ; preds = %58
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @ASPEED_IP_LPC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %142

103:                                              ; preds = %99
  %104 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %105 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.device_node* @of_parse_phandle(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.device_node* %109, %struct.device_node** %8, align 8
  %110 = load %struct.device_node*, %struct.device_node** %8, align 8
  %111 = icmp ne %struct.device_node* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %103
  %113 = load %struct.device_node*, %struct.device_node** %8, align 8
  %114 = getelementptr inbounds %struct.device_node, %struct.device_node* %113, i32 0, i32 0
  %115 = load %struct.device_node*, %struct.device_node** %114, align 8
  %116 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %115)
  store %struct.regmap* %116, %struct.regmap** %9, align 8
  %117 = load %struct.device_node*, %struct.device_node** %8, align 8
  %118 = call i32 @of_node_put(%struct.device_node* %117)
  %119 = load %struct.regmap*, %struct.regmap** %9, align 8
  %120 = call i64 @IS_ERR(%struct.regmap* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %123, %struct.regmap** %3, align 8
  br label %146

124:                                              ; preds = %112
  br label %129

125:                                              ; preds = %103
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  %128 = call %struct.regmap* @ERR_PTR(i32 %127)
  store %struct.regmap* %128, %struct.regmap** %3, align 8
  br label %146

129:                                              ; preds = %124
  %130 = load %struct.regmap*, %struct.regmap** %9, align 8
  %131 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %132 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %131, i32 0, i32 1
  %133 = load %struct.regmap**, %struct.regmap*** %132, align 8
  %134 = load i32, i32* @ASPEED_IP_LPC, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.regmap*, %struct.regmap** %133, i64 %135
  store %struct.regmap* %130, %struct.regmap** %136, align 8
  %137 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %4, align 8
  %138 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call i32 @dev_dbg(%struct.TYPE_2__* %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %141, %struct.regmap** %3, align 8
  br label %146

142:                                              ; preds = %99
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  %145 = call %struct.regmap* @ERR_PTR(i32 %144)
  store %struct.regmap* %145, %struct.regmap** %3, align 8
  br label %146

146:                                              ; preds = %142, %129, %125, %122, %86, %82, %79, %50, %36, %13
  %147 = load %struct.regmap*, %struct.regmap** %3, align 8
  ret %struct.regmap* %147
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local i64 @likely(%struct.regmap*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
