; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_login_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_login_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mbx_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MBX_IOCB_TYPE = common dso_local global i32 0, align 4
@MBC_LOGIN_FABRIC_PORT = common dso_local global i32 0, align 4
@SRB_LOGIN_COND_PLOGI = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@SRB_LOGIN_SKIP_PRLI = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.mbx_entry*)* @qla2x00_login_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_login_iocb(%struct.TYPE_17__* %0, %struct.mbx_entry* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.mbx_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.srb_iocb*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.mbx_entry* %1, %struct.mbx_entry** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.srb_iocb* %15, %struct.srb_iocb** %6, align 8
  %16 = load i32, i32* @MBX_IOCB_TYPE, align 4
  %17 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %20 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %21 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %19, i32 %22, i32 %27)
  %29 = load i32, i32* @MBC_LOGIN_FABRIC_PORT, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %32 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %34 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SRB_LOGIN_COND_PLOGI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @BIT_0, align 4
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %7, align 4
  %46 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %47 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SRB_LOGIN_SKIP_PRLI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @BIT_1, align 4
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = call i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %72 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %76 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %89

77:                                               ; preds = %57
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %88 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %77, %64
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %99 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %107, %114
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %118 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @cpu_to_le16(i32 %123)
  %125 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %126 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  ret void
}

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
