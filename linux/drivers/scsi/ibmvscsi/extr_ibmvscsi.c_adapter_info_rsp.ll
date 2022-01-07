; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_adapter_info_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_adapter_info_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { %struct.TYPE_10__*, %struct.ibmvscsi_host_data* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ibmvscsi_host_data = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64, i32, i64*, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"error %d getting adapter info\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"host srp version: %s, host partition %s (%d), OS %d, max io %u\0A\00", align 1
@SRP_MAD_OS_AIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"1.6a\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"host (Ver. %s) doesn't support large transfers\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"limiting scatterlists to %d\0A\00", align 1
@MAX_INDIRECT_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @adapter_info_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_info_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %4 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %5 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %4, i32 0, i32 1
  %6 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  store %struct.ibmvscsi_host_data* %6, %struct.ibmvscsi_host_data** %3, align 8
  %7 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %21 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %125

29:                                               ; preds = %1
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @be32_to_cpu(i64 %44)
  %46 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @be32_to_cpu(i64 %49)
  %51 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %52 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @be32_to_cpu(i64 %56)
  %58 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %45, i32 %50, i32 %57)
  %59 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %29
  %67 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %68 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @be32_to_cpu(i64 %72)
  %74 = ashr i32 %73, 9
  %75 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %76 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %66, %29
  %80 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %81 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @be32_to_cpu(i64 %83)
  %85 = load i32, i32* @SRP_MAD_OS_AIX, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %79
  %88 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %89 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strcmp(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %96 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %99 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %104 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %107 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %109 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %110 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %94, %87, %79
  %114 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %115 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @be32_to_cpu(i64 %117)
  %119 = load i32, i32* @SRP_MAD_OS_AIX, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %123 = call i32 @enable_fast_fail(%struct.ibmvscsi_host_data* %122)
  br label %128

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %16
  %126 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %127 = call i32 @send_srp_login(%struct.ibmvscsi_host_data* %126)
  br label %128

128:                                              ; preds = %125, %121
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @enable_fast_fail(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @send_srp_login(%struct.ibmvscsi_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
