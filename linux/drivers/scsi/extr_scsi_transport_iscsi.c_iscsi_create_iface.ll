; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iface = type { %struct.TYPE_4__, %struct.iscsi_iface*, i64, i64, %struct.iscsi_transport* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.iscsi_transport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iscsi_iface_release = common dso_local global i32 0, align 4
@iscsi_iface_class = common dso_local global i32 0, align 4
@ISCSI_IFACE_TYPE_IPV4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"ipv4-iface-%u-%u\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ipv6-iface-%u-%u\00", align 1
@iscsi_iface_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_iface* @iscsi_create_iface(%struct.Scsi_Host* %0, %struct.iscsi_transport* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.iscsi_iface*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_transport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iscsi_iface*, align 8
  %13 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store %struct.iscsi_transport* %1, %struct.iscsi_transport** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 56, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.iscsi_iface* @kzalloc(i32 %17, i32 %18)
  store %struct.iscsi_iface* %19, %struct.iscsi_iface** %12, align 8
  %20 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %21 = icmp ne %struct.iscsi_iface* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.iscsi_iface* null, %struct.iscsi_iface** %6, align 8
  br label %102

23:                                               ; preds = %5
  %24 = load %struct.iscsi_transport*, %struct.iscsi_transport** %8, align 8
  %25 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %26 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %25, i32 0, i32 4
  store %struct.iscsi_transport* %24, %struct.iscsi_transport** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %29 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %32 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @iscsi_iface_release, align 4
  %34 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %35 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %38 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32* @iscsi_iface_class, i32** %39, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 1
  %42 = call i32 @get_device(i32* %41)
  %43 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %44 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @ISCSI_IFACE_TYPE_IPV4, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %23
  %50 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %51 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %50, i32 0, i32 0
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @dev_set_name(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55)
  br label %65

57:                                               ; preds = %23
  %58 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %59 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %58, i32 0, i32 0
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @dev_set_name(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %57, %49
  %66 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %67 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %66, i32 0, i32 0
  %68 = call i32 @device_register(%struct.TYPE_4__* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %94

72:                                               ; preds = %65
  %73 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %74 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @sysfs_create_group(i32* %75, i32* @iscsi_iface_group)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %85 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %84, i64 1
  %86 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %87 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %86, i32 0, i32 1
  store %struct.iscsi_iface* %85, %struct.iscsi_iface** %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  store %struct.iscsi_iface* %89, %struct.iscsi_iface** %6, align 8
  br label %102

90:                                               ; preds = %79
  %91 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %92 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %91, i32 0, i32 0
  %93 = call i32 @device_unregister(%struct.TYPE_4__* %92)
  store %struct.iscsi_iface* null, %struct.iscsi_iface** %6, align 8
  br label %102

94:                                               ; preds = %71
  %95 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %96 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @put_device(i32 %98)
  %100 = load %struct.iscsi_iface*, %struct.iscsi_iface** %12, align 8
  %101 = call i32 @kfree(%struct.iscsi_iface* %100)
  store %struct.iscsi_iface* null, %struct.iscsi_iface** %6, align 8
  br label %102

102:                                              ; preds = %94, %90, %88, %22
  %103 = load %struct.iscsi_iface*, %struct.iscsi_iface** %6, align 8
  ret %struct.iscsi_iface* %103
}

declare dso_local %struct.iscsi_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.iscsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
