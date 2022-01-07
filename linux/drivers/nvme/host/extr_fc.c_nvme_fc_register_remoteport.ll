; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_register_remoteport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_register_remoteport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_port_info = type { i32, i32, i32, i32 }
%struct.nvme_fc_remote_port = type { i32, i32, i32, i32, i32, i32, %struct.nvme_fc_rport*, i32* }
%struct.nvme_fc_rport = type { %struct.nvme_fc_remote_port, i32, %struct.nvme_fc_lport*, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvme_fc_lport = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FC_OBJSTATE_ONLINE = common dso_local global i32 0, align 4
@nvme_fc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_fc_register_remoteport(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_port_info* %1, %struct.nvme_fc_remote_port** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_port_info*, align 8
  %7 = alloca %struct.nvme_fc_remote_port**, align 8
  %8 = alloca %struct.nvme_fc_lport*, align 8
  %9 = alloca %struct.nvme_fc_rport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_port_info* %1, %struct.nvme_fc_port_info** %6, align 8
  store %struct.nvme_fc_remote_port** %2, %struct.nvme_fc_remote_port*** %7, align 8
  %13 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %5, align 8
  %14 = call %struct.nvme_fc_lport* @localport_to_lport(%struct.nvme_fc_local_port* %13)
  store %struct.nvme_fc_lport* %14, %struct.nvme_fc_lport** %8, align 8
  %15 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %16 = call i32 @nvme_fc_lport_get(%struct.nvme_fc_lport* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ESHUTDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  br label %167

21:                                               ; preds = %3
  %22 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %23 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %24 = call %struct.nvme_fc_rport* @nvme_fc_attach_to_suspended_rport(%struct.nvme_fc_lport* %22, %struct.nvme_fc_port_info* %23)
  store %struct.nvme_fc_rport* %24, %struct.nvme_fc_rport** %9, align 8
  %25 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %26 = call i64 @IS_ERR(%struct.nvme_fc_rport* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.nvme_fc_rport* %29)
  store i32 %30, i32* %11, align 4
  br label %164

31:                                               ; preds = %21
  %32 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %33 = icmp ne %struct.nvme_fc_rport* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %36 = call i32 @nvme_fc_lport_put(%struct.nvme_fc_lport* %35)
  %37 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %38 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %39 = call i32 @__nvme_fc_set_dev_loss_tmo(%struct.nvme_fc_rport* %37, %struct.nvme_fc_port_info* %38)
  %40 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %41 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %42 = call i32 @nvme_fc_signal_discovery_scan(%struct.nvme_fc_lport* %40, %struct.nvme_fc_rport* %41)
  %43 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %44 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %43, i32 0, i32 0
  %45 = load %struct.nvme_fc_remote_port**, %struct.nvme_fc_remote_port*** %7, align 8
  store %struct.nvme_fc_remote_port* %44, %struct.nvme_fc_remote_port** %45, align 8
  store i32 0, i32* %4, align 4
  br label %170

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %49 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 88, %52
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.nvme_fc_rport* @kmalloc(i64 %53, i32 %54)
  store %struct.nvme_fc_rport* %55, %struct.nvme_fc_rport** %9, align 8
  %56 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %57 = icmp ne %struct.nvme_fc_rport* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %164

61:                                               ; preds = %47
  %62 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %63 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %62, i32 0, i32 3
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @ida_simple_get(i32* %63, i32 0, i32 0, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %161

71:                                               ; preds = %61
  %72 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %73 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %72, i32 0, i32 1
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %76 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %75, i32 0, i32 9
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %79 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %78, i32 0, i32 8
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %82 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %81, i32 0, i32 7
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %85 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %84, i32 0, i32 6
  %86 = call i32 @kref_init(i32* %85)
  %87 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %88 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %87, i32 0, i32 5
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %91 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %90, i32 0, i32 4
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %94 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %93, i32 0, i32 2
  %95 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %96 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %96, i32 0, i32 7
  store i32* %94, i32** %97, align 8
  %98 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %99 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %102 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %104 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %105 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %104, i32 0, i32 2
  store %struct.nvme_fc_lport* %103, %struct.nvme_fc_lport** %105, align 8
  %106 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %107 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %106, i64 1
  %108 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %109 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %109, i32 0, i32 6
  store %struct.nvme_fc_rport* %107, %struct.nvme_fc_rport** %110, align 8
  %111 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %112 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %115 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  %117 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %118 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %121 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %124 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %127 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %130 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %133 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @FC_OBJSTATE_ONLINE, align 4
  %136 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %137 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %141 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %144 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %6, align 8
  %145 = call i32 @__nvme_fc_set_dev_loss_tmo(%struct.nvme_fc_rport* %143, %struct.nvme_fc_port_info* %144)
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @spin_lock_irqsave(i32* @nvme_fc_lock, i64 %146)
  %148 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %149 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %148, i32 0, i32 1
  %150 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %151 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %150, i32 0, i32 0
  %152 = call i32 @list_add_tail(i32* %149, i32* %151)
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* @nvme_fc_lock, i64 %153)
  %155 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %156 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %157 = call i32 @nvme_fc_signal_discovery_scan(%struct.nvme_fc_lport* %155, %struct.nvme_fc_rport* %156)
  %158 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %159 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %158, i32 0, i32 0
  %160 = load %struct.nvme_fc_remote_port**, %struct.nvme_fc_remote_port*** %7, align 8
  store %struct.nvme_fc_remote_port* %159, %struct.nvme_fc_remote_port** %160, align 8
  store i32 0, i32* %4, align 4
  br label %170

161:                                              ; preds = %68
  %162 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %9, align 8
  %163 = call i32 @kfree(%struct.nvme_fc_rport* %162)
  br label %164

164:                                              ; preds = %161, %58, %28
  %165 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %8, align 8
  %166 = call i32 @nvme_fc_lport_put(%struct.nvme_fc_lport* %165)
  br label %167

167:                                              ; preds = %164, %18
  %168 = load %struct.nvme_fc_remote_port**, %struct.nvme_fc_remote_port*** %7, align 8
  store %struct.nvme_fc_remote_port* null, %struct.nvme_fc_remote_port** %168, align 8
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %71, %34
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.nvme_fc_lport* @localport_to_lport(%struct.nvme_fc_local_port*) #1

declare dso_local i32 @nvme_fc_lport_get(%struct.nvme_fc_lport*) #1

declare dso_local %struct.nvme_fc_rport* @nvme_fc_attach_to_suspended_rport(%struct.nvme_fc_lport*, %struct.nvme_fc_port_info*) #1

declare dso_local i64 @IS_ERR(%struct.nvme_fc_rport*) #1

declare dso_local i32 @PTR_ERR(%struct.nvme_fc_rport*) #1

declare dso_local i32 @nvme_fc_lport_put(%struct.nvme_fc_lport*) #1

declare dso_local i32 @__nvme_fc_set_dev_loss_tmo(%struct.nvme_fc_rport*, %struct.nvme_fc_port_info*) #1

declare dso_local i32 @nvme_fc_signal_discovery_scan(%struct.nvme_fc_lport*, %struct.nvme_fc_rport*) #1

declare dso_local %struct.nvme_fc_rport* @kmalloc(i64, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.nvme_fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
