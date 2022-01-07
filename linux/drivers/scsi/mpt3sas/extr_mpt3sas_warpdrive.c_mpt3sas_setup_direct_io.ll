; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_warpdrive.c_mpt3sas_setup_direct_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_warpdrive.c_mpt3sas_setup_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { i64* }
%struct._raid_device = type { i32, i32, i32, i32, i64, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.scsiio_tracker = type { i32 }

@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@READ_16 = common dso_local global i64 0, align 8
@WRITE_16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_setup_direct_io(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1, %struct._raid_device* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct._raid_device*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.scsiio_tracker*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct._raid_device* %2, %struct._raid_device** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %17, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %25 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %24)
  store %struct.scsiio_tracker* %25, %struct.scsiio_tracker** %18, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load i64, i64* @READ_10, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @WRITE_10, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* @READ_16, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @WRITE_16, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %149

42:                                               ; preds = %37, %33, %29, %4
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @READ_10, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* @WRITE_10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = call i32 @get_unaligned_be32(i32* %55)
  store i32 %56, i32* %9, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = call i32 @get_unaligned_be64(i32* %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %66 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %65)
  %67 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %68 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %66, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %76 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %149

80:                                               ; preds = %64
  %81 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %82 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  %84 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %85 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  br label %149

97:                                               ; preds = %80
  %98 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %99 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %16, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %15, align 4
  %103 = ashr i32 %101, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i64, i64* %16, align 8
  %106 = call i32 @sector_div(i32 %104, i64 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %15, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %10, align 4
  %112 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %113 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cpu_to_le16(i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @READ_10, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %97
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* @WRITE_10, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125, %97
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @lower_32_bits(i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = call i32 @put_unaligned_be32(i32 %131, i32* %136)
  br label %146

138:                                              ; preds = %125
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = call i32 @put_unaligned_be64(i32 %139, i32* %144)
  br label %146

146:                                              ; preds = %138, %129
  %147 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %18, align 8
  %148 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %96, %79, %41
  ret void
}

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @sector_div(i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
