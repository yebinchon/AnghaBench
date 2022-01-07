; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_check_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.rdac_dh_data* }
%struct.rdac_dh_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@RDAC_LOG_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"array %s, ctlr %d, I/O returned with sense %02x/%02x/%02x\00", align 1
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@RDAC_STATE_PASSIVE = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @rdac_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_check_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  %6 = alloca %struct.rdac_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  store %struct.rdac_dh_data* %9, %struct.rdac_dh_data** %6, align 8
  %10 = load i32, i32* @RDAC_LOG_SENSE, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %13 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %19 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RDAC_LOG(i32 %10, %struct.scsi_device* %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %126 [
    i32 129, label %36
    i32 130, label %85
    i32 128, label %101
  ]

36:                                               ; preds = %2
  %37 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %47, i32* %3, align 4
  br label %128

48:                                               ; preds = %41, %36
  %49 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %128

60:                                               ; preds = %53, %48
  %61 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 161
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %71, i32* %3, align 4
  br label %128

72:                                               ; preds = %65, %60
  %73 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 161
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %83, i32* %3, align 4
  br label %128

84:                                               ; preds = %77, %72
  br label %126

85:                                               ; preds = %2
  %86 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %87 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 148
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @RDAC_STATE_PASSIVE, align 4
  %97 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %98 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %128

100:                                              ; preds = %90, %85
  br label %126

101:                                              ; preds = %2
  %102 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %103 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 41
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %108 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %112, i32* %3, align 4
  br label %128

113:                                              ; preds = %106, %101
  %114 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 139
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %120 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %124, i32* %3, align 4
  br label %128

125:                                              ; preds = %118, %113
  br label %126

126:                                              ; preds = %2, %125, %100, %84
  %127 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %123, %111, %95, %82, %70, %58, %46
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @RDAC_LOG(i32, %struct.scsi_device*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
