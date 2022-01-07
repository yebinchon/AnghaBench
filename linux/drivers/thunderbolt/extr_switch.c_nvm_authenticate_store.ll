; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tb_switch = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @nvm_authenticate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_authenticate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.tb_switch* @tb_to_switch(%struct.device* %13)
  store %struct.tb_switch* %14, %struct.tb_switch** %10, align 8
  %15 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %16 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_get_sync(i32* %16)
  %18 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mutex_trylock(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = call i32 (...) @restart_syscall()
  store i32 %25, i32* %12, align 4
  br label %91

26:                                               ; preds = %4
  %27 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %28 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %85

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @kstrtobool(i8* %35, i32* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %85

40:                                               ; preds = %34
  %41 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %42 = call i32 @nvm_clear_auth_status(%struct.tb_switch* %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  %46 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %47 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %85

55:                                               ; preds = %45
  %56 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %57 = call i32 @nvm_validate_and_write(%struct.tb_switch* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %85

61:                                               ; preds = %55
  %62 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %63 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %67 = call i32 @tb_route(%struct.tb_switch* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %61
  %70 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %71 = call i32 @nvm_authenticate_start(%struct.tb_switch* %70)
  %72 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %73 = call i32 @nvm_authenticate_host(%struct.tb_switch* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %78 = call i32 @nvm_authenticate_complete(%struct.tb_switch* %77)
  br label %79

79:                                               ; preds = %76, %69
  br label %83

80:                                               ; preds = %61
  %81 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %82 = call i32 @nvm_authenticate_device(%struct.tb_switch* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %79
  br label %84

84:                                               ; preds = %83, %40
  br label %85

85:                                               ; preds = %84, %60, %52, %39, %31
  %86 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %87 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %85, %24
  %92 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %93 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %92, i32 0, i32 0
  %94 = call i32 @pm_runtime_mark_last_busy(i32* %93)
  %95 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %96 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %95, i32 0, i32 0
  %97 = call i32 @pm_runtime_put_autosuspend(i32* %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %105

102:                                              ; preds = %91
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @nvm_clear_auth_status(%struct.tb_switch*) #1

declare dso_local i32 @nvm_validate_and_write(%struct.tb_switch*) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @nvm_authenticate_start(%struct.tb_switch*) #1

declare dso_local i32 @nvm_authenticate_host(%struct.tb_switch*) #1

declare dso_local i32 @nvm_authenticate_complete(%struct.tb_switch*) #1

declare dso_local i32 @nvm_authenticate_device(%struct.tb_switch*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
