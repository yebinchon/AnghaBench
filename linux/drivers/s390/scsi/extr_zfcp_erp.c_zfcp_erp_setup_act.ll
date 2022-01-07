; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_setup_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_setup_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, i64, i32, i32, i32, %struct.zfcp_adapter*, %struct.scsi_device*, %struct.zfcp_port* }
%struct.zfcp_adapter = type { i32, %struct.zfcp_erp_action, i32 }
%struct.zfcp_port = type { i32, %struct.zfcp_erp_action, i32 }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32, %struct.zfcp_erp_action }

@ZFCP_STATUS_ERP_NO_REF = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@ZFCP_ERP_STEP_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_erp_action* (i32, i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*)* @zfcp_erp_setup_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32 %0, i32 %1, %struct.zfcp_adapter* %2, %struct.zfcp_port* %3, %struct.scsi_device* %4) #0 {
  %6 = alloca %struct.zfcp_erp_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_adapter*, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca %struct.zfcp_erp_action*, align 8
  %13 = alloca %struct.zfcp_scsi_dev*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.zfcp_adapter* %2, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_port* %3, %struct.zfcp_port** %10, align 8
  store %struct.scsi_device* %4, %struct.scsi_device** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 130
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 129
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 131
  br label %25

25:                                               ; preds = %22, %19, %16, %5
  %26 = phi i1 [ false, %19 ], [ false, %16 ], [ false, %5 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %6, align 8
  br label %178

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %152 [
    i32 130, label %33
    i32 129, label %78
    i32 128, label %78
    i32 131, label %117
  ]

33:                                               ; preds = %31
  %34 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %35 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %34)
  store %struct.zfcp_scsi_dev* %35, %struct.zfcp_scsi_dev** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ZFCP_STATUS_ERP_NO_REF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %42 = call i32 @scsi_device_get(%struct.scsi_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %6, align 8
  br label %178

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %48 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %13, align 8
  %49 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %48, i32 0, i32 0
  %50 = call i32 @atomic_or(i32 %47, i32* %49)
  %51 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %13, align 8
  %52 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %51, i32 0, i32 1
  store %struct.zfcp_erp_action* %52, %struct.zfcp_erp_action** %12, align 8
  %53 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %54 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %53, i32 0, i32 8
  %55 = load %struct.zfcp_port*, %struct.zfcp_port** %54, align 8
  %56 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %57 = icmp ne %struct.zfcp_port* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON_ONCE(i32 %58)
  %60 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %61 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %60, i32 0, i32 7
  %62 = load %struct.scsi_device*, %struct.scsi_device** %61, align 8
  %63 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %64 = icmp ne %struct.scsi_device* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON_ONCE(i32 %65)
  %67 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %13, align 8
  %68 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %67, i32 0, i32 0
  %69 = call i32 @atomic_read(i32* %68)
  %70 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %46
  %74 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %46
  br label %152

78:                                               ; preds = %31, %31
  %79 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %80 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %79, i32 0, i32 2
  %81 = call i32 @get_device(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %6, align 8
  br label %178

84:                                               ; preds = %78
  %85 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %86 = call i32 @zfcp_erp_action_dismiss_port(%struct.zfcp_port* %85)
  %87 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %88 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %89 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %88, i32 0, i32 0
  %90 = call i32 @atomic_or(i32 %87, i32* %89)
  %91 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %92 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %91, i32 0, i32 1
  store %struct.zfcp_erp_action* %92, %struct.zfcp_erp_action** %12, align 8
  %93 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %94 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %93, i32 0, i32 8
  %95 = load %struct.zfcp_port*, %struct.zfcp_port** %94, align 8
  %96 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %97 = icmp ne %struct.zfcp_port* %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @WARN_ON_ONCE(i32 %98)
  %100 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %101 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %100, i32 0, i32 7
  %102 = load %struct.scsi_device*, %struct.scsi_device** %101, align 8
  %103 = icmp ne %struct.scsi_device* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @WARN_ON_ONCE(i32 %104)
  %106 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %107 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %106, i32 0, i32 0
  %108 = call i32 @atomic_read(i32* %107)
  %109 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %84
  %113 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %84
  br label %152

117:                                              ; preds = %31
  %118 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %119 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %118, i32 0, i32 2
  %120 = call i32 @kref_get(i32* %119)
  %121 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %122 = call i32 @zfcp_erp_action_dismiss_adapter(%struct.zfcp_adapter* %121)
  %123 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %124 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %125 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %124, i32 0, i32 0
  %126 = call i32 @atomic_or(i32 %123, i32* %125)
  %127 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %128 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %127, i32 0, i32 1
  store %struct.zfcp_erp_action* %128, %struct.zfcp_erp_action** %12, align 8
  %129 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %130 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %129, i32 0, i32 8
  %131 = load %struct.zfcp_port*, %struct.zfcp_port** %130, align 8
  %132 = icmp ne %struct.zfcp_port* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @WARN_ON_ONCE(i32 %133)
  %135 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %136 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %135, i32 0, i32 7
  %137 = load %struct.scsi_device*, %struct.scsi_device** %136, align 8
  %138 = icmp ne %struct.scsi_device* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @WARN_ON_ONCE(i32 %139)
  %141 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %142 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %141, i32 0, i32 0
  %143 = call i32 @atomic_read(i32* %142)
  %144 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %117
  %148 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %117
  br label %152

152:                                              ; preds = %31, %151, %116, %77
  %153 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %154 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %153, i32 0, i32 6
  %155 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %154, align 8
  %156 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %157 = icmp ne %struct.zfcp_adapter* %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @WARN_ON_ONCE(i32 %158)
  %160 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %161 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %160, i32 0, i32 5
  %162 = call i32 @memset(i32* %161, i32 0, i32 4)
  %163 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %164 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %163, i32 0, i32 4
  %165 = call i32 @memset(i32* %164, i32 0, i32 4)
  %166 = load i32, i32* @ZFCP_ERP_STEP_UNINITIALIZED, align 4
  %167 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %168 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %170 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %173 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  %176 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %12, align 8
  store %struct.zfcp_erp_action* %177, %struct.zfcp_erp_action** %6, align 8
  br label %178

178:                                              ; preds = %152, %83, %44, %30
  %179 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  ret %struct.zfcp_erp_action* %179
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @zfcp_erp_action_dismiss_port(%struct.zfcp_port*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @zfcp_erp_action_dismiss_adapter(%struct.zfcp_adapter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
