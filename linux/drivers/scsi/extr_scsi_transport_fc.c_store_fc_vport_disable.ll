; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_store_fc_vport_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_store_fc_vport_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fc_vport = type { i32, i64 }
%struct.Scsi_Host = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fc_vport*, i32)* }

@FC_VPORT_DEL = common dso_local global i32 0, align 4
@FC_VPORT_CREATING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FC_VPORT_DISABLED = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fc_vport_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fc_vport_disable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fc_vport*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.fc_internal*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fc_vport* @transport_class_to_vport(%struct.device* %14)
  store %struct.fc_vport* %15, %struct.fc_vport** %10, align 8
  %16 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %17 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %11, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.fc_internal* @to_fc_internal(i32 %20)
  store %struct.fc_internal* %21, %struct.fc_internal** %12, align 8
  %22 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %23 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FC_VPORT_DEL, align 4
  %26 = load i32, i32* @FC_VPORT_CREATING, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 48
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %40 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FC_VPORT_DISABLED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EALREADY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %38
  br label %67

48:                                               ; preds = %33
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 49
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %55 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FC_VPORT_DISABLED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EALREADY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %91

62:                                               ; preds = %53
  br label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %91

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.fc_internal*, %struct.fc_internal** %12, align 8
  %69 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.fc_vport*, i32)*, i32 (%struct.fc_vport*, i32)** %71, align 8
  %73 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 48
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = call i32 %72(%struct.fc_vport* %73, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  br label %88

86:                                               ; preds = %67
  %87 = load i64, i64* %9, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i64 [ %85, %83 ], [ %87, %86 ]
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %63, %59, %44, %30
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.fc_vport* @transport_class_to_vport(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
