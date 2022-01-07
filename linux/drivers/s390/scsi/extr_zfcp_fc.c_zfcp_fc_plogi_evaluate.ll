; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_plogi_evaluate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_plogi_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i64, i32, i32, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fc_els_flogi = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"A port opened with WWPN 0x%016Lx returned data that identifies it as WWPN 0x%016Lx\0A\00", align 1
@FC_CPC_VALID = common dso_local global i32 0, align 4
@FC_COS_CLASS1 = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@FC_COS_CLASS4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fc_plogi_evaluate(%struct.zfcp_port* %0, %struct.fc_els_flogi* %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.fc_els_flogi*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store %struct.fc_els_flogi* %1, %struct.fc_els_flogi** %4, align 8
  %5 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %6 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @be64_to_cpu(i32 %7)
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %26 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @be64_to_cpu(i32 %27)
  %29 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %28)
  br label %111

30:                                               ; preds = %2
  %31 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %32 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %38 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %43 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %45 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FC_CPC_VALID, align 4
  %51 = call i32 @cpu_to_be16(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %30
  %55 = load i32, i32* @FC_COS_CLASS1, align 4
  %56 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %57 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %30
  %61 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %62 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FC_CPC_VALID, align 4
  %68 = call i32 @cpu_to_be16(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load i32, i32* @FC_COS_CLASS2, align 4
  %73 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %74 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %60
  %78 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %79 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FC_CPC_VALID, align 4
  %85 = call i32 @cpu_to_be16(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @FC_COS_CLASS3, align 4
  %90 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %91 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %77
  %95 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %4, align 8
  %96 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FC_CPC_VALID, align 4
  %102 = call i32 @cpu_to_be16(i32 %101)
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load i32, i32* @FC_COS_CLASS4, align 4
  %107 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %108 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %13, %105, %94
  ret void
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
