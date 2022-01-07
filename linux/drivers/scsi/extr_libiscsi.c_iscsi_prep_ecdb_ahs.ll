; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_ecdb_ahs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_ecdb_ahs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.TYPE_2__*, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 }
%struct.iscsi_ecdb_ahdr = type { i32*, i64, i32, i32 }

@ISCSI_CDB_SIZE = common dso_local global i32 0, align 4
@ISCSI_AHSTYPE_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"iscsi_prep_ecdb_ahs: varlen_cdb_len %d rlen %d pad_len %d ahs_length %d iscsi_headers_size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iscsi_prep_ecdb_ahs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_prep_ecdb_ahs(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.iscsi_ecdb_ahdr*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 2
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %14 = call %struct.iscsi_ecdb_ahdr* @iscsi_next_hdr(%struct.iscsi_task* %13)
  store %struct.iscsi_ecdb_ahdr* %14, %struct.iscsi_ecdb_ahdr** %8, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISCSI_CDB_SIZE, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 8
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %7, align 2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @iscsi_padding(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i64
  %34 = add i64 8, %33
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @iscsi_add_hdr(%struct.iscsi_task* %31, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %91

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.iscsi_ecdb_ahdr*, %struct.iscsi_ecdb_ahdr** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_ecdb_ahdr, %struct.iscsi_ecdb_ahdr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @memset(i32* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i16, i16* %7, align 2
  %58 = call i32 @cpu_to_be16(i16 zeroext %57)
  %59 = load %struct.iscsi_ecdb_ahdr*, %struct.iscsi_ecdb_ahdr** %8, align 8
  %60 = getelementptr inbounds %struct.iscsi_ecdb_ahdr, %struct.iscsi_ecdb_ahdr* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ISCSI_AHSTYPE_CDB, align 4
  %62 = load %struct.iscsi_ecdb_ahdr*, %struct.iscsi_ecdb_ahdr** %8, align 8
  %63 = getelementptr inbounds %struct.iscsi_ecdb_ahdr, %struct.iscsi_ecdb_ahdr* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iscsi_ecdb_ahdr*, %struct.iscsi_ecdb_ahdr** %8, align 8
  %65 = getelementptr inbounds %struct.iscsi_ecdb_ahdr, %struct.iscsi_ecdb_ahdr* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.iscsi_ecdb_ahdr*, %struct.iscsi_ecdb_ahdr** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_ecdb_ahdr, %struct.iscsi_ecdb_ahdr* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISCSI_CDB_SIZE, align 4
  %73 = add i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @memcpy(i32* %68, i32 %73, i32 %74)
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %77 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i16, i16* %7, align 2
  %87 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %88 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ISCSI_DBG_SESSION(i32 %80, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i16 zeroext %86, i32 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %56, %42
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.iscsi_ecdb_ahdr* @iscsi_next_hdr(%struct.iscsi_task*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iscsi_padding(i32) #1

declare dso_local i32 @iscsi_add_hdr(%struct.iscsi_task*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(i32, i8*, i32, i32, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
