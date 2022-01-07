; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tb_eeprom_read_rom failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"uid: %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"disabled by eeprom\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"new device found, vendor=%#x device=%#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@TB_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_switch_add(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %6 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %7 = call i32 @tb_switch_add_dma_port(%struct.tb_switch* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %159

12:                                               ; preds = %1
  %13 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %81, label %17

17:                                               ; preds = %12
  %18 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %19 = call i32 @tb_drom_read(%struct.tb_switch* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %24 = call i32 @tb_sw_warn(%struct.tb_switch* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %159

26:                                               ; preds = %17
  %27 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %28 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tb_sw_dbg(%struct.tb_switch* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %33 = call i32 @tb_switch_set_uuid(%struct.tb_switch* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %159

38:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %77, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %42 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %40, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %39
  %47 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %58 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %57, i32 0, i32 6
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = call i32 @tb_port_dbg(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %77

64:                                               ; preds = %46
  %65 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %66 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %65, i32 0, i32 6
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = call i32 @tb_init_port(%struct.TYPE_5__* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %159

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %39

80:                                               ; preds = %39
  br label %81

81:                                               ; preds = %80, %12
  %82 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %83 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %82, i32 0, i32 0
  %84 = call i32 @device_add(i32* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %159

89:                                               ; preds = %81
  %90 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %91 = call i64 @tb_route(%struct.tb_switch* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %95 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %94, i32 0, i32 0
  %96 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %97 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %100 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %98, i64 %101)
  %103 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %104 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %93
  %108 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %109 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %114 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %113, i32 0, i32 0
  %115 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %116 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %119 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %112, %107, %93
  br label %123

123:                                              ; preds = %122, %89
  %124 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %125 = call i32 @tb_switch_nvm_add(%struct.tb_switch* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %130 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %129, i32 0, i32 0
  %131 = call i32 @device_del(i32* %130)
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %159

133:                                              ; preds = %123
  %134 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %135 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %134, i32 0, i32 0
  %136 = call i32 @pm_runtime_set_active(i32* %135)
  %137 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %138 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %133
  %142 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %143 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %142, i32 0, i32 0
  %144 = load i32, i32* @TB_AUTOSUSPEND_DELAY, align 4
  %145 = call i32 @pm_runtime_set_autosuspend_delay(i32* %143, i32 %144)
  %146 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %147 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %146, i32 0, i32 0
  %148 = call i32 @pm_runtime_use_autosuspend(i32* %147)
  %149 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %150 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %149, i32 0, i32 0
  %151 = call i32 @pm_runtime_mark_last_busy(i32* %150)
  %152 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %153 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %152, i32 0, i32 0
  %154 = call i32 @pm_runtime_enable(i32* %153)
  %155 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %156 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %155, i32 0, i32 0
  %157 = call i32 @pm_request_autosuspend(i32* %156)
  br label %158

158:                                              ; preds = %141, %133
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %128, %87, %74, %36, %22, %10
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @tb_switch_add_dma_port(%struct.tb_switch*) #1

declare dso_local i32 @tb_drom_read(%struct.tb_switch*) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*) #1

declare dso_local i32 @tb_sw_dbg(%struct.tb_switch*, i8*, i32) #1

declare dso_local i32 @tb_switch_set_uuid(%struct.tb_switch*) #1

declare dso_local i32 @tb_port_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @tb_init_port(%struct.TYPE_5__*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i32 @tb_switch_nvm_add(%struct.tb_switch*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_request_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
