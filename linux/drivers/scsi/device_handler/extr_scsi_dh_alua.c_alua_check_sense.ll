; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@NEEDS_RETRY = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @alua_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_check_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %6 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %115 [
    i32 129, label %9
    i32 128, label %24
  ]

9:                                                ; preds = %2
  %10 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = call i32 @alua_check(%struct.scsi_device* %20, i32 0)
  %22 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %14, %9
  br label %115

24:                                               ; preds = %2
  %25 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 41
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = call i32 @alua_check(%struct.scsi_device* %35, i32 1)
  %37 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %37, i32* %3, align 4
  br label %117

38:                                               ; preds = %29, %24
  %39 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %49, i32* %3, align 4
  br label %117

50:                                               ; preds = %43, %38
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 42
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %61, i32* %3, align 4
  br label %117

62:                                               ; preds = %55, %50
  %63 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 42
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 6
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %74 = call i32 @alua_check(%struct.scsi_device* %73, i32 1)
  %75 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %75, i32* %3, align 4
  br label %117

76:                                               ; preds = %67, %62
  %77 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 42
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %88 = call i32 @alua_check(%struct.scsi_device* %87, i32 1)
  %89 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %89, i32* %3, align 4
  br label %117

90:                                               ; preds = %81, %76
  %91 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 63
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %97 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %101, i32* %3, align 4
  br label %117

102:                                              ; preds = %95, %90
  %103 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 63
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %109 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 14
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %113, i32* %3, align 4
  br label %117

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %2, %114, %23
  %116 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %112, %100, %86, %72, %60, %48, %34, %19
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @alua_check(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
