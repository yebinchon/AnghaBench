; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_get_scsi_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_get_scsi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { i32, %struct.TYPE_4__*, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [13 x i8] c"initiator-id\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"scsi-initiator-id\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SCSI ID %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicpti*)* @qpti_get_scsi_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpti_get_scsi_id(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.qlogicpti*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.qlogicpti* %0, %struct.qlogicpti** %2, align 8
  %5 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %6 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %5, i32 0, i32 2
  %7 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i8* @of_getintprop_default(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %16 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %18 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i8* @of_getintprop_default(%struct.device_node* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %26 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %29 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = call i8* @of_getintprop_default(%struct.device_node* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %39 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %42 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %45 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %49 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 64, i32* %51, align 4
  %52 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %53 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  ret void
}

declare dso_local i8* @of_getintprop_default(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
