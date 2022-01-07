; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_required_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_required_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }

@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*)* @zfcp_erp_required_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_required_act(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.scsi_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.zfcp_scsi_dev*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %8, align 8
  store %struct.scsi_device* %3, %struct.scsi_device** %9, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %117 [
    i32 130, label %17
    i32 128, label %49
    i32 129, label %59
    i32 131, label %96
  ]

17:                                               ; preds = %4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %19 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %18)
  store %struct.zfcp_scsi_dev* %19, %struct.zfcp_scsi_dev** %14, align 8
  %20 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %14, align 8
  %21 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %119

28:                                               ; preds = %17
  %29 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %30 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %28
  store i32 0, i32* %5, align 4
  br label %119

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 129, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %4, %48
  %50 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %51 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %50, i32 0, i32 0
  %52 = call i32 @atomic_read(i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 129, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %4, %58
  %60 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %61 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %60, i32 0, i32 0
  %62 = call i32 @atomic_read(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %119

68:                                               ; preds = %59
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 0
  %71 = call i32 @atomic_read(i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %68
  store i32 0, i32* %5, align 4
  br label %119

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %119

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 131, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %89
  br label %96

96:                                               ; preds = %4, %95
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %98 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %97, i32 0, i32 0
  %99 = call i32 @atomic_read(i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %119

105:                                              ; preds = %96
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %119

116:                                              ; preds = %110, %105
  br label %117

117:                                              ; preds = %116, %4
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %115, %104, %87, %81, %67, %41, %27
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
