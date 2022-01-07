; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.syscfg_reset_controller_data = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.syscfg_reset_controller = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.regmap_field*, %struct.regmap_field* }
%struct.regmap_field = type { i32 }
%struct.regmap = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@syscfg_reset_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.syscfg_reset_controller_data*)* @syscfg_reset_controller_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscfg_reset_controller_register(%struct.device* %0, %struct.syscfg_reset_controller_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.syscfg_reset_controller_data*, align 8
  %6 = alloca %struct.syscfg_reset_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.regmap_field*, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.syscfg_reset_controller_data* %1, %struct.syscfg_reset_controller_data** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.syscfg_reset_controller* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.syscfg_reset_controller* %14, %struct.syscfg_reset_controller** %6, align 8
  %15 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %16 = icmp ne %struct.syscfg_reset_controller* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %158

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %23 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_6__* @devm_kcalloc(%struct.device* %21, i32 %24, i32 16, i32 %25)
  %27 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %28 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %27, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %30 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %158

36:                                               ; preds = %20
  %37 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %38 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32* @syscfg_reset_ops, i32** %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %44 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %47 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %50 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %53 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %56 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %144, %36
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %60 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %147

63:                                               ; preds = %57
  %64 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %65 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call %struct.regmap_field* @syscon_regmap_lookup_by_compatible(i8* %72)
  %74 = bitcast %struct.regmap_field* %73 to %struct.regmap*
  store %struct.regmap* %74, %struct.regmap** %9, align 8
  %75 = load %struct.regmap*, %struct.regmap** %9, align 8
  %76 = bitcast %struct.regmap* %75 to %struct.regmap_field*
  %77 = call i64 @IS_ERR(%struct.regmap_field* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %63
  %80 = load %struct.regmap*, %struct.regmap** %9, align 8
  %81 = bitcast %struct.regmap* %80 to %struct.regmap_field*
  %82 = call i32 @PTR_ERR(%struct.regmap_field* %81)
  store i32 %82, i32* %3, align 4
  br label %158

83:                                               ; preds = %63
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.regmap*, %struct.regmap** %9, align 8
  %86 = bitcast %struct.regmap* %85 to %struct.regmap_field*
  %87 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %88 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %84, %struct.regmap_field* %86, i32 %94)
  store %struct.regmap_field* %95, %struct.regmap_field** %10, align 8
  %96 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %97 = call i64 @IS_ERR(%struct.regmap_field* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %83
  %100 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %101 = call i32 @PTR_ERR(%struct.regmap_field* %100)
  store i32 %101, i32* %3, align 4
  br label %158

102:                                              ; preds = %83
  %103 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %104 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %105 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store %struct.regmap_field* %103, %struct.regmap_field** %110, align 8
  %111 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %112 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %102
  br label %144

116:                                              ; preds = %102
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.regmap*, %struct.regmap** %9, align 8
  %119 = bitcast %struct.regmap* %118 to %struct.regmap_field*
  %120 = load %struct.syscfg_reset_controller_data*, %struct.syscfg_reset_controller_data** %5, align 8
  %121 = getelementptr inbounds %struct.syscfg_reset_controller_data, %struct.syscfg_reset_controller_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %117, %struct.regmap_field* %119, i32 %127)
  store %struct.regmap_field* %128, %struct.regmap_field** %10, align 8
  %129 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %130 = call i64 @IS_ERR(%struct.regmap_field* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %116
  %133 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %134 = call i32 @PTR_ERR(%struct.regmap_field* %133)
  store i32 %134, i32* %3, align 4
  br label %158

135:                                              ; preds = %116
  %136 = load %struct.regmap_field*, %struct.regmap_field** %10, align 8
  %137 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %138 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store %struct.regmap_field* %136, %struct.regmap_field** %143, align 8
  br label %144

144:                                              ; preds = %135, %115
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %57

147:                                              ; preds = %57
  %148 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %149 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %148, i32 0, i32 0
  %150 = call i32 @reset_controller_register(%struct.TYPE_5__* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_info(%struct.device* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %132, %99, %79, %33, %17
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.syscfg_reset_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.regmap_field* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap_field*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap_field*) #1

declare dso_local %struct.regmap_field* @devm_regmap_field_alloc(%struct.device*, %struct.regmap_field*, i32) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
