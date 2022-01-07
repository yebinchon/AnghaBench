; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_regulator_of_get_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_regulator_of_get_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_init_data = type { i32 }
%struct.device = type { i32 }
%struct.regulator_desc = type { i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* }
%struct.device_node = type opaque
%struct.regulator_config = type opaque
%struct.regulator_config.0 = type { i32 }
%struct.device_node.1 = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to parse DT for regulator %pOFn\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"driver callback failed to parse DT for regulator %pOFn\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regulator_init_data* @regulator_of_get_init_data(%struct.device* %0, %struct.regulator_desc* %1, %struct.regulator_config.0* %2, %struct.device_node.1** %3) #0 {
  %5 = alloca %struct.regulator_init_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.regulator_config.0*, align 8
  %9 = alloca %struct.device_node.1**, align 8
  %10 = alloca %struct.device_node.1*, align 8
  %11 = alloca %struct.regulator_init_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %7, align 8
  store %struct.regulator_config.0* %2, %struct.regulator_config.0** %8, align 8
  store %struct.device_node.1** %3, %struct.device_node.1*** %9, align 8
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %11, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %15 = call %struct.device_node.1* @regulator_of_get_init_node(%struct.device* %13, %struct.regulator_desc* %14)
  store %struct.device_node.1* %15, %struct.device_node.1** %10, align 8
  %16 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %17 = icmp ne %struct.device_node.1* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %5, align 8
  br label %70

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %23 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device* %20, %struct.device_node.1* %21, %struct.regulator_desc* %22)
  store %struct.regulator_init_data* %23, %struct.regulator_init_data** %11, align 8
  %24 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %25 = icmp ne %struct.regulator_init_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.device_node.1* %28)
  br label %67

30:                                               ; preds = %19
  %31 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %32 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %31, i32 0, i32 0
  %33 = load i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)*, i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)** %32, align 8
  %34 = icmp ne i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %37 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %36, i32 0, i32 0
  %38 = load i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)*, i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)** %37, align 8
  %39 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %40 = bitcast %struct.device_node.1* %39 to %struct.device_node*
  %41 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %42 = load %struct.regulator_config.0*, %struct.regulator_config.0** %8, align 8
  %43 = bitcast %struct.regulator_config.0* %42 to %struct.regulator_config*
  %44 = call i32 %38(%struct.device_node* %40, %struct.regulator_desc* %41, %struct.regulator_config* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %54 = call i32 @of_node_put(%struct.device_node.1* %53)
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.regulator_init_data* @ERR_PTR(i32 %56)
  store %struct.regulator_init_data* %57, %struct.regulator_init_data** %5, align 8
  br label %70

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.device_node.1* %60)
  br label %67

62:                                               ; preds = %35
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %65 = load %struct.device_node.1**, %struct.device_node.1*** %9, align 8
  store %struct.device_node.1* %64, %struct.device_node.1** %65, align 8
  %66 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  store %struct.regulator_init_data* %66, %struct.regulator_init_data** %5, align 8
  br label %70

67:                                               ; preds = %58, %26
  %68 = load %struct.device_node.1*, %struct.device_node.1** %10, align 8
  %69 = call i32 @of_node_put(%struct.device_node.1* %68)
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %5, align 8
  br label %70

70:                                               ; preds = %67, %63, %52, %18
  %71 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  ret %struct.regulator_init_data* %71
}

declare dso_local %struct.device_node.1* @regulator_of_get_init_node(%struct.device*, %struct.regulator_desc*) #1

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device*, %struct.device_node.1*, %struct.regulator_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node.1*) #1

declare dso_local i32 @of_node_put(%struct.device_node.1*) #1

declare dso_local %struct.regulator_init_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
