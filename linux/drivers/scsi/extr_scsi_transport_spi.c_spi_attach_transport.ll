; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_attach_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_transport_template = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32* }
%struct.spi_function_template = type { i32 }
%struct.spi_internal = type { %struct.scsi_transport_template, %struct.spi_function_template* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spi_transport_class = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@target_attribute_group = common dso_local global i32 0, align 4
@spi_target_match = common dso_local global i32 0, align 4
@spi_host_class = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@host_attribute_group = common dso_local global i32 0, align 4
@spi_host_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @spi_attach_transport(%struct.spi_function_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.spi_function_template*, align 8
  %4 = alloca %struct.spi_internal*, align 8
  store %struct.spi_function_template* %0, %struct.spi_function_template** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.spi_internal* @kzalloc(i32 64, i32 %5)
  store %struct.spi_internal* %6, %struct.spi_internal** %4, align 8
  %7 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %8 = icmp ne %struct.spi_internal* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.scsi_transport_template* null, %struct.scsi_transport_template** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %16 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spi_transport_class, i32 0, i32 0), i32** %19, align 8
  %20 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %21 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32* @target_attribute_group, i32** %24, align 8
  %25 = load i32, i32* @spi_target_match, align 4
  %26 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %27 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  %31 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %32 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %32, i32 0, i32 3
  %34 = call i32 @transport_container_register(%struct.TYPE_6__* %33)
  %35 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %36 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %39 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spi_host_class, i32 0, i32 0), i32** %42, align 8
  %43 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %44 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32* @host_attribute_group, i32** %47, align 8
  %48 = load i32, i32* @spi_host_match, align 4
  %49 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %50 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %55 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %55, i32 0, i32 2
  %57 = call i32 @transport_container_register(%struct.TYPE_6__* %56)
  %58 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %59 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load %struct.spi_function_template*, %struct.spi_function_template** %3, align 8
  %62 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %63 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %62, i32 0, i32 1
  store %struct.spi_function_template* %61, %struct.spi_function_template** %63, align 8
  %64 = load %struct.spi_internal*, %struct.spi_internal** %4, align 8
  %65 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %64, i32 0, i32 0
  store %struct.scsi_transport_template* %65, %struct.scsi_transport_template** %2, align 8
  br label %66

66:                                               ; preds = %14, %13
  %67 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  ret %struct.scsi_transport_template* %67
}

declare dso_local %struct.spi_internal* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @transport_container_register(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
