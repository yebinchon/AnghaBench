; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.tb_switch* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"device disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_switch_remove(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %4 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %5 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_sync(i32* %10)
  %12 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %13 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_disable(i32* %13)
  br label %15

15:                                               ; preds = %8, %1
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %79, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %17, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %16
  %24 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %25 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = call i64 @tb_port_has_remote(%struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.tb_switch*, %struct.tb_switch** %41, align 8
  call void @tb_switch_remove(%struct.tb_switch* %42)
  %43 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %44 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %49, align 8
  br label %78

50:                                               ; preds = %23
  %51 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %52 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %62 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @tb_xdomain_remove(i32* %68)
  %70 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %71 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %60, %50
  br label %78

78:                                               ; preds = %77, %32
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %16

82:                                               ; preds = %16
  %83 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %84 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %89 = call i32 @tb_plug_events_active(%struct.tb_switch* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %92 = call i32 @tb_lc_unconfigure_link(%struct.tb_switch* %91)
  %93 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %94 = call i32 @tb_switch_nvm_remove(%struct.tb_switch* %93)
  %95 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %96 = call i64 @tb_route(%struct.tb_switch* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %100 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %99, i32 0, i32 0
  %101 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %90
  %103 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %104 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %103, i32 0, i32 0
  %105 = call i32 @device_unregister(i32* %104)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i64 @tb_port_has_remote(%struct.TYPE_6__*) #1

declare dso_local i32 @tb_xdomain_remove(i32*) #1

declare dso_local i32 @tb_plug_events_active(%struct.tb_switch*, i32) #1

declare dso_local i32 @tb_lc_unconfigure_link(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_nvm_remove(%struct.tb_switch*) #1

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
