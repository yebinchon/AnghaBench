; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_config = type { i32, i32, i32, i32, i8*, i8* }

@VCHIQ_MAX_MSG_SIZE = common dso_local global i8* null, align 8
@VCHIQ_NUM_SERVICE_BULKS = common dso_local global i32 0, align 4
@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@VCHIQ_VERSION = common dso_local global i32 0, align 4
@VCHIQ_VERSION_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_get_config(%struct.vchiq_config* %0) #0 {
  %2 = alloca %struct.vchiq_config*, align 8
  store %struct.vchiq_config* %0, %struct.vchiq_config** %2, align 8
  %3 = load i8*, i8** @VCHIQ_MAX_MSG_SIZE, align 8
  %4 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %5 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %4, i32 0, i32 5
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @VCHIQ_MAX_MSG_SIZE, align 8
  %7 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %8 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %7, i32 0, i32 4
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @VCHIQ_NUM_SERVICE_BULKS, align 4
  %10 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %11 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %13 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %14 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @VCHIQ_VERSION, align 4
  %16 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %17 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @VCHIQ_VERSION_MIN, align 4
  %19 = load %struct.vchiq_config*, %struct.vchiq_config** %2, align 8
  %20 = getelementptr inbounds %struct.vchiq_config, %struct.vchiq_config* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
