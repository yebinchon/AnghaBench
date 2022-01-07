; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_target_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_target_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvmet_fc_target_port = type { %struct.fcloop_tport* }
%struct.fcloop_tport = type { i32, %struct.fcloop_nport*, i32*, %struct.nvmet_fc_target_port* }
%struct.fcloop_nport = type { %struct.fcloop_tport*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.nvmet_fc_target_port*, i32* }
%struct.nvmet_fc_port_info = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@tgttemplate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fcloop_create_target_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_create_target_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvmet_fc_target_port*, align 8
  %11 = alloca %struct.fcloop_nport*, align 8
  %12 = alloca %struct.fcloop_tport*, align 8
  %13 = alloca %struct.nvmet_fc_port_info, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call %struct.fcloop_nport* @fcloop_alloc_nport(i8* %15, i64 %16, i32 0)
  store %struct.fcloop_nport* %17, %struct.fcloop_nport** %11, align 8
  %18 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %19 = icmp ne %struct.fcloop_nport* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %89

23:                                               ; preds = %4
  %24 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %25 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %13, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %29 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %13, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %33 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.nvmet_fc_port_info, %struct.nvmet_fc_port_info* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call i32 @nvmet_fc_register_targetport(%struct.nvmet_fc_port_info* %13, i32* @tgttemplate, i32* null, %struct.nvmet_fc_target_port** %10)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %41 = call i32 @fcloop_nport_put(%struct.fcloop_nport* %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %89

43:                                               ; preds = %23
  %44 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %10, align 8
  %45 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %44, i32 0, i32 0
  %46 = load %struct.fcloop_tport*, %struct.fcloop_tport** %45, align 8
  store %struct.fcloop_tport* %46, %struct.fcloop_tport** %12, align 8
  %47 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %10, align 8
  %48 = load %struct.fcloop_tport*, %struct.fcloop_tport** %12, align 8
  %49 = getelementptr inbounds %struct.fcloop_tport, %struct.fcloop_tport* %48, i32 0, i32 3
  store %struct.nvmet_fc_target_port* %47, %struct.nvmet_fc_target_port** %49, align 8
  %50 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %51 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %56 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  br label %61

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32* [ %59, %54 ], [ null, %60 ]
  %63 = load %struct.fcloop_tport*, %struct.fcloop_tport** %12, align 8
  %64 = getelementptr inbounds %struct.fcloop_tport, %struct.fcloop_tport* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %66 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %10, align 8
  %71 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %72 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store %struct.nvmet_fc_target_port* %70, %struct.nvmet_fc_target_port** %74, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %77 = load %struct.fcloop_tport*, %struct.fcloop_tport** %12, align 8
  %78 = getelementptr inbounds %struct.fcloop_tport, %struct.fcloop_tport* %77, i32 0, i32 1
  store %struct.fcloop_nport* %76, %struct.fcloop_nport** %78, align 8
  %79 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %80 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fcloop_tport*, %struct.fcloop_tport** %12, align 8
  %83 = getelementptr inbounds %struct.fcloop_tport, %struct.fcloop_tport* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fcloop_tport*, %struct.fcloop_tport** %12, align 8
  %85 = load %struct.fcloop_nport*, %struct.fcloop_nport** %11, align 8
  %86 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %85, i32 0, i32 0
  store %struct.fcloop_tport* %84, %struct.fcloop_tport** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %75, %39, %20
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.fcloop_nport* @fcloop_alloc_nport(i8*, i64, i32) #1

declare dso_local i32 @nvmet_fc_register_targetport(%struct.nvmet_fc_port_info*, i32*, i32*, %struct.nvmet_fc_target_port**) #1

declare dso_local i32 @fcloop_nport_put(%struct.fcloop_nport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
