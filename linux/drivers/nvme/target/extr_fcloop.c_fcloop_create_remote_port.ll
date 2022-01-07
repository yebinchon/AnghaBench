; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_remote_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvme_fc_remote_port = type { %struct.fcloop_rport* }
%struct.fcloop_rport = type { %struct.TYPE_4__*, %struct.fcloop_nport*, i32*, %struct.nvme_fc_remote_port* }
%struct.TYPE_4__ = type { i32 }
%struct.fcloop_nport = type { %struct.fcloop_rport*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.nvme_fc_remote_port*, i32* }
%struct.nvme_fc_port_info = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fcloop_create_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_create_remote_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvme_fc_remote_port*, align 8
  %11 = alloca %struct.fcloop_nport*, align 8
  %12 = alloca %struct.fcloop_rport*, align 8
  %13 = alloca %struct.nvme_fc_port_info, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call %struct.fcloop_nport* @fcloop_alloc_nport(i8* %15, i64 %16, i32 1)
  store %struct.fcloop_nport* %17, %struct.fcloop_nport** %11, align 8
  %18 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %19 = icmp ne %struct.fcloop_nport* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %109

23:                                               ; preds = %4
  %24 = call i32 @memset(%struct.nvme_fc_port_info* %13, i32 0, i32 16)
  %25 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %26 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %13, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %30 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %13, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %34 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %13, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %38 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %13, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %42 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvme_fc_register_remoteport(i32 %45, %struct.nvme_fc_port_info* %13, %struct.nvme_fc_remote_port** %10)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %23
  %50 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %10, align 8
  %51 = icmp ne %struct.nvme_fc_remote_port* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49, %23
  %53 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %54 = call i32 @fcloop_nport_put(%struct.fcloop_nport* %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %109

56:                                               ; preds = %49
  %57 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %10, align 8
  %58 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %57, i32 0, i32 0
  %59 = load %struct.fcloop_rport*, %struct.fcloop_rport** %58, align 8
  store %struct.fcloop_rport* %59, %struct.fcloop_rport** %12, align 8
  %60 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %10, align 8
  %61 = load %struct.fcloop_rport*, %struct.fcloop_rport** %12, align 8
  %62 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %61, i32 0, i32 3
  store %struct.nvme_fc_remote_port* %60, %struct.nvme_fc_remote_port** %62, align 8
  %63 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %64 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %69 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  br label %74

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32* [ %72, %67 ], [ null, %73 ]
  %76 = load %struct.fcloop_rport*, %struct.fcloop_rport** %12, align 8
  %77 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %79 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %10, align 8
  %84 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %85 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store %struct.nvme_fc_remote_port* %83, %struct.nvme_fc_remote_port** %87, align 8
  %88 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %89 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %92 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %94, align 8
  br label %95

95:                                               ; preds = %82, %74
  %96 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %97 = load %struct.fcloop_rport*, %struct.fcloop_rport** %12, align 8
  %98 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %97, i32 0, i32 1
  store %struct.fcloop_nport* %96, %struct.fcloop_nport** %98, align 8
  %99 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %100 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.fcloop_rport*, %struct.fcloop_rport** %12, align 8
  %103 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %102, i32 0, i32 0
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.fcloop_rport*, %struct.fcloop_rport** %12, align 8
  %105 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %106 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %105, i32 0, i32 0
  store %struct.fcloop_rport* %104, %struct.fcloop_rport** %106, align 8
  %107 = load i64, i64* %9, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %95, %52, %20
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.fcloop_nport* @fcloop_alloc_nport(i8*, i64, i32) #1

declare dso_local i32 @memset(%struct.nvme_fc_port_info*, i32, i32) #1

declare dso_local i32 @nvme_fc_register_remoteport(i32, %struct.nvme_fc_port_info*, %struct.nvme_fc_remote_port**) #1

declare dso_local i32 @fcloop_nport_put(%struct.fcloop_nport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
