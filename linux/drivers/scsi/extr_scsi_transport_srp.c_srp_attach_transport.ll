; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_attach_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_transport_template = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32** }
%struct.srp_function_template = type { i64, i64, i64 }
%struct.srp_internal = type { %struct.scsi_transport_template, %struct.srp_function_template*, %struct.TYPE_6__, i32**, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@srp_host_class = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@srp_host_match = common dso_local global i32 0, align 4
@srp_rport_class = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@srp_rport_match = common dso_local global i32 0, align 4
@dev_attr_port_id = common dso_local global i32 0, align 4
@dev_attr_roles = common dso_local global i32 0, align 4
@dev_attr_state = common dso_local global i32 0, align 4
@dev_attr_fast_io_fail_tmo = common dso_local global i32 0, align 4
@dev_attr_dev_loss_tmo = common dso_local global i32 0, align 4
@dev_attr_reconnect_delay = common dso_local global i32 0, align 4
@dev_attr_failed_reconnects = common dso_local global i32 0, align 4
@dev_attr_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @srp_attach_transport(%struct.srp_function_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.srp_function_template*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_internal*, align 8
  store %struct.srp_function_template* %0, %struct.srp_function_template** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.srp_internal* @kzalloc(i32 80, i32 %6)
  store %struct.srp_internal* %7, %struct.srp_internal** %5, align 8
  %8 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %9 = icmp ne %struct.srp_internal* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.scsi_transport_template* null, %struct.scsi_transport_template** %2, align 8
  br label %157

11:                                               ; preds = %1
  %12 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %13 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %13, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %16 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %15, i32 0, i32 4
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %20 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32** %18, i32*** %23, align 8
  %24 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %25 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @srp_host_class, i32 0, i32 0), i32** %28, align 8
  %29 = load i32, i32* @srp_host_match, align 4
  %30 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %31 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %36 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %35, i32 0, i32 4
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %40 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %40, i32 0, i32 1
  %42 = call i32 @transport_container_register(%struct.TYPE_6__* %41)
  %43 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %44 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %48 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32** %46, i32*** %50, align 8
  %51 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %52 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srp_rport_class, i32 0, i32 0), i32** %54, align 8
  %55 = load i32, i32* @srp_rport_match, align 4
  %56 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %57 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  store i32 0, i32* %4, align 4
  %60 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %61 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32*, i32** %62, i64 %65
  store i32* @dev_attr_port_id, i32** %66, align 8
  %67 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %68 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %67, i32 0, i32 3
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  store i32* @dev_attr_roles, i32** %73, align 8
  %74 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %75 = getelementptr inbounds %struct.srp_function_template, %struct.srp_function_template* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %11
  %79 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %80 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32*, i32** %81, i64 %84
  store i32* @dev_attr_state, i32** %85, align 8
  %86 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %87 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  store i32* @dev_attr_fast_io_fail_tmo, i32** %92, align 8
  %93 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %94 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  store i32* @dev_attr_dev_loss_tmo, i32** %99, align 8
  br label %100

100:                                              ; preds = %78, %11
  %101 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %102 = getelementptr inbounds %struct.srp_function_template, %struct.srp_function_template* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %107 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  store i32* @dev_attr_reconnect_delay, i32** %112, align 8
  %113 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %114 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %113, i32 0, i32 3
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32*, i32** %115, i64 %118
  store i32* @dev_attr_failed_reconnects, i32** %119, align 8
  br label %120

120:                                              ; preds = %105, %100
  %121 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %122 = getelementptr inbounds %struct.srp_function_template, %struct.srp_function_template* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %127 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %126, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32*, i32** %128, i64 %131
  store i32* @dev_attr_delete, i32** %132, align 8
  br label %133

133:                                              ; preds = %125, %120
  %134 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %135 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %134, i32 0, i32 3
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  store i32* null, i32** %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %143 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %142, i32 0, i32 3
  %144 = load i32**, i32*** %143, align 8
  %145 = call i32 @ARRAY_SIZE(i32** %144)
  %146 = icmp sgt i32 %141, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @BUG_ON(i32 %147)
  %149 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %150 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %149, i32 0, i32 2
  %151 = call i32 @transport_container_register(%struct.TYPE_6__* %150)
  %152 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %153 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %154 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %153, i32 0, i32 1
  store %struct.srp_function_template* %152, %struct.srp_function_template** %154, align 8
  %155 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %156 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %155, i32 0, i32 0
  store %struct.scsi_transport_template* %156, %struct.scsi_transport_template** %2, align 8
  br label %157

157:                                              ; preds = %133, %10
  %158 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  ret %struct.scsi_transport_template* %158
}

declare dso_local %struct.srp_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @transport_container_register(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
