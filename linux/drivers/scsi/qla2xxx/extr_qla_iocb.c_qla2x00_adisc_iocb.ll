; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_adisc_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_adisc_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mbx_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MBX_IOCB_TYPE = common dso_local global i32 0, align 4
@MBC_GET_PORT_DATABASE = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.mbx_entry*)* @qla2x00_adisc_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_adisc_iocb(%struct.TYPE_7__* %0, %struct.mbx_entry* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.mbx_entry*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.mbx_entry* %1, %struct.mbx_entry** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %5, align 8
  %11 = load i32, i32* @MBX_IOCB_TYPE, align 4
  %12 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %14, i32 %17, i32 %22)
  %24 = load i32, i32* @MBC_GET_PORT_DATABASE, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %27 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = call i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %39 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @BIT_0, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %43 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  br label %56

44:                                               ; preds = %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* @BIT_0, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %55 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %44, %31
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MSW(i32 %59)
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %63 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LSW(i32 %66)
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %70 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MSD(i32 %73)
  %75 = call i32 @MSW(i32 %74)
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %78 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MSD(i32 %81)
  %83 = call i32 @LSW(i32 %82)
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %86 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_le16(i32 %91)
  %93 = load %struct.mbx_entry*, %struct.mbx_entry** %4, align 8
  %94 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  ret void
}

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @HAS_EXTENDED_IDS(%struct.qla_hw_data*) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i32 @MSD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
