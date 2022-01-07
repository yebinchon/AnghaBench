; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_local_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_create_local_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvme_fc_port_info = type { i32, i32, i32, i32 }
%struct.fcloop_ctrl_options = type { i32, i32, %struct.nvme_fc_local_port*, i32, i32, i32, i32 }
%struct.nvme_fc_local_port = type { %struct.fcloop_lport_priv* }
%struct.fcloop_lport_priv = type { %struct.fcloop_lport* }
%struct.fcloop_lport = type { i32, i32, %struct.nvme_fc_local_port*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPORT_OPTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fctemplate = common dso_local global i32 0, align 4
@fcloop_lock = common dso_local global i32 0, align 4
@fcloop_lports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fcloop_create_local_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_create_local_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvme_fc_port_info, align 4
  %11 = alloca %struct.fcloop_ctrl_options*, align 8
  %12 = alloca %struct.nvme_fc_local_port*, align 8
  %13 = alloca %struct.fcloop_lport*, align 8
  %14 = alloca %struct.fcloop_lport_priv*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fcloop_lport* @kzalloc(i32 32, i32 %19)
  store %struct.fcloop_lport* %20, %struct.fcloop_lport** %13, align 8
  %21 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %22 = icmp ne %struct.fcloop_lport* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %115

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.fcloop_lport* @kzalloc(i32 32, i32 %27)
  %29 = bitcast %struct.fcloop_lport* %28 to %struct.fcloop_ctrl_options*
  store %struct.fcloop_ctrl_options* %29, %struct.fcloop_ctrl_options** %11, align 8
  %30 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %31 = icmp ne %struct.fcloop_ctrl_options* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %98

33:                                               ; preds = %26
  %34 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %35 = bitcast %struct.fcloop_ctrl_options* %34 to %struct.fcloop_lport*
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @fcloop_parse_options(%struct.fcloop_lport* %35, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %94

41:                                               ; preds = %33
  %42 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %43 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LPORT_OPTS, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @LPORT_OPTS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  br label %94

52:                                               ; preds = %41
  %53 = call i32 @memset(%struct.nvme_fc_port_info* %10, i32 0, i32 16)
  %54 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %55 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %10, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %59 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %63 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %67 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = call i32 @nvme_fc_register_localport(%struct.nvme_fc_port_info* %10, i32* @fctemplate, i32* null, %struct.nvme_fc_local_port** %12)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %52
  %74 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %12, align 8
  %75 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %74, i32 0, i32 0
  %76 = load %struct.fcloop_lport_priv*, %struct.fcloop_lport_priv** %75, align 8
  store %struct.fcloop_lport_priv* %76, %struct.fcloop_lport_priv** %14, align 8
  %77 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %78 = load %struct.fcloop_lport_priv*, %struct.fcloop_lport_priv** %14, align 8
  %79 = getelementptr inbounds %struct.fcloop_lport_priv, %struct.fcloop_lport_priv* %78, i32 0, i32 0
  store %struct.fcloop_lport* %77, %struct.fcloop_lport** %79, align 8
  %80 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %12, align 8
  %81 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %82 = getelementptr inbounds %struct.fcloop_lport, %struct.fcloop_lport* %81, i32 0, i32 2
  store %struct.nvme_fc_local_port* %80, %struct.nvme_fc_local_port** %82, align 8
  %83 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %84 = getelementptr inbounds %struct.fcloop_lport, %struct.fcloop_lport* %83, i32 0, i32 1
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @spin_lock_irqsave(i32* @fcloop_lock, i64 %86)
  %88 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %89 = getelementptr inbounds %struct.fcloop_lport, %struct.fcloop_lport* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail(i32* %89, i32* @fcloop_lports)
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* @fcloop_lock, i64 %91)
  br label %93

93:                                               ; preds = %73, %52
  br label %94

94:                                               ; preds = %93, %49, %40
  %95 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %11, align 8
  %96 = bitcast %struct.fcloop_ctrl_options* %95 to %struct.fcloop_lport*
  %97 = call i32 @kfree(%struct.fcloop_lport* %96)
  br label %98

98:                                               ; preds = %94, %32
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.fcloop_lport*, %struct.fcloop_lport** %13, align 8
  %103 = call i32 @kfree(%struct.fcloop_lport* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  br label %112

110:                                              ; preds = %104
  %111 = load i64, i64* %9, align 8
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i64 [ %109, %107 ], [ %111, %110 ]
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %23
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.fcloop_lport* @kzalloc(i32, i32) #1

declare dso_local i32 @fcloop_parse_options(%struct.fcloop_lport*, i8*) #1

declare dso_local i32 @memset(%struct.nvme_fc_port_info*, i32, i32) #1

declare dso_local i32 @nvme_fc_register_localport(%struct.nvme_fc_port_info*, i32*, i32*, %struct.nvme_fc_local_port**) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.fcloop_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
