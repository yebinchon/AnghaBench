; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_setup_flash_ddb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_setup_flash_ddb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }
%struct.ddb_entry = type { i32, i32, %struct.TYPE_2__, i8*, i32, i32, i32, i8*, i32, i32, %struct.scsi_qla_host*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FLASH_DDB = common dso_local global i32 0, align 4
@INVALID_ENTRY = common dso_local global i8* null, align 8
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@qla4xxx_unblock_flash_ddb = common dso_local global i32 0, align 4
@qla4xxx_flash_ddb_change = common dso_local global i32 0, align 4
@LOGIN_TOV = common dso_local global i32 0, align 4
@ql4xdisablesysfsboot = common dso_local global i64 0, align 8
@DF_BOOT_TGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.ddb_entry*, i32)* @qla4xxx_setup_flash_ddb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_setup_flash_ddb_entry(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @FLASH_DDB, align 4
  %9 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** @INVALID_ENTRY, align 8
  %12 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %12, i32 0, i32 12
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %15 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %16 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %18 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %18, i32 0, i32 10
  store %struct.scsi_qla_host* %17, %struct.scsi_qla_host** %19, align 8
  %20 = load i32, i32* @qla4xxx_unblock_flash_ddb, align 4
  %21 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @qla4xxx_flash_ddb_change, align 4
  %24 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @INVALID_ENTRY, align 8
  %27 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %30 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %29, i32 0, i32 6
  %31 = load i8*, i8** @INVALID_ENTRY, align 8
  %32 = call i32 @atomic_set(i32* %30, i8* %31)
  %33 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %33, i32 0, i32 5
  %35 = call i32 @atomic_set(i32* %34, i8* null)
  %36 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %36, i32 0, i32 4
  %38 = call i32 @atomic_set(i32* %37, i8* null)
  %39 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %40 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le16_to_cpu(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LOGIN_TOV, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @LOGIN_TOV, align 4
  %51 = mul nsw i32 %50, 10
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  br label %57

55:                                               ; preds = %48, %3
  %56 = load i32, i32* @LOGIN_TOV, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %60 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %62 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @le16_to_cpu(i32 %64)
  %66 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %67 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* @ql4xdisablesysfsboot, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %57
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @DF_BOOT_TGT, align 4
  %84 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %85 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %84, i32 0, i32 1
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %82, %76, %57
  ret void
}

declare dso_local i32 @atomic_set(i32*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
