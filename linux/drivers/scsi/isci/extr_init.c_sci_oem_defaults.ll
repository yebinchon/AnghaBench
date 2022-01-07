; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_sci_oem_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_sci_oem_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i64, %struct.sci_oem_params, %struct.sci_user_parameters }
%struct.sci_oem_params = type { %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.sci_user_parameters = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i32 0, align 4
@SCI_MAX_PORTS = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@SCIC_SDS_PARM_GEN2_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @sci_oem_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_oem_defaults(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca %struct.sci_user_parameters*, align 8
  %4 = alloca %struct.sci_oem_params*, align 8
  %5 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %6 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %7 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %6, i32 0, i32 2
  store %struct.sci_user_parameters* %7, %struct.sci_user_parameters** %3, align 8
  %8 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %9 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %8, i32 0, i32 1
  store %struct.sci_oem_params* %9, %struct.sci_oem_params** %4, align 8
  %10 = load i32, i32* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 4
  %11 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %12 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 8
  %14 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %15 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %18 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %21 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %35, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SCI_MAX_PORTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %29 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SCI_MAX_PHYS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %39
  %44 = load i32, i32* @SCIC_SDS_PARM_GEN2_SPEED, align 4
  %45 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %46 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %45, i32 0, i32 5
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %44, i32* %51, align 4
  %52 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %53 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %52, i32 0, i32 5
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 127, i32* %58, align 4
  %59 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %60 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 255, i32* %65, align 4
  %66 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %67 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %66, i32 0, i32 5
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  store i32 51, i32* %72, align 4
  %73 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %74 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 1, %75
  %77 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %78 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i64 %76, i64* %84, align 8
  %85 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %86 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 1607467007, i32* %92, align 8
  br label %93

93:                                               ; preds = %43
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %39

96:                                               ; preds = %39
  %97 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %98 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %97, i32 0, i32 0
  store i32 5, i32* %98, align 8
  %99 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %100 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %99, i32 0, i32 1
  store i32 5, i32* %100, align 4
  %101 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %102 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %101, i32 0, i32 2
  store i32 5, i32* %102, align 8
  %103 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %104 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %103, i32 0, i32 3
  store i32 20, i32* %104, align 4
  %105 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %3, align 8
  %106 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %105, i32 0, i32 4
  store i32 2, i32* %106, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
