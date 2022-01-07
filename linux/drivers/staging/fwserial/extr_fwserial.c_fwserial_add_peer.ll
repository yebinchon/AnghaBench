; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_add_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_serial = type { %struct.fwtty_peer*, i32 }
%struct.fwtty_peer = type { i32, i32, i64, i32, i32, %struct.fwtty_port*, %struct.fw_unit*, i32, %struct.fw_serial*, i32, i32, i32, i32, i32 }
%struct.fwtty_port = type { i32 }
%struct.fw_unit = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.fw_device = type { i32*, i32, i64, i32, i32 }
%struct.fw_csr_iterator = type { i32 }
%struct.virt_plug_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWPS_NOT_ATTACHED = common dso_local global i32 0, align 4
@CSR_OFFSET = common dso_local global i32 0, align 4
@CSR_DEPENDENT_INFO = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@FWPS_NO_MGMT_ADDR = common dso_local global i32 0, align 4
@fwserial_plug_timeout = common dso_local global i32 0, align 4
@fwserial_peer_workfn = common dso_local global i32 0, align 4
@fwserial_auto_connect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"peer added (guid:%016llx)\0A\00", align 1
@create_loop_dev = common dso_local global i64 0, align 8
@num_ttys = common dso_local global i32 0, align 4
@auto_connect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_serial*, %struct.fw_unit*)* @fwserial_add_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_add_peer(%struct.fw_serial* %0, %struct.fw_unit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_serial*, align 8
  %5 = alloca %struct.fw_unit*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca %struct.fwtty_peer*, align 8
  %9 = alloca %struct.fw_csr_iterator, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwtty_port*, align 8
  %14 = alloca %struct.virt_plug_params, align 4
  store %struct.fw_serial* %0, %struct.fw_serial** %4, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %5, align 8
  %15 = load %struct.fw_unit*, %struct.fw_unit** %5, align 8
  %16 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.fw_unit*, %struct.fw_unit** %5, align 8
  %18 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %17)
  store %struct.fw_device* %18, %struct.fw_device** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fwtty_peer* @kzalloc(i32 80, i32 %19)
  store %struct.fwtty_peer* %20, %struct.fwtty_peer** %8, align 8
  %21 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %22 = icmp ne %struct.fwtty_peer* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %185

26:                                               ; preds = %2
  %27 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %28 = load i32, i32* @FWPS_NOT_ATTACHED, align 4
  %29 = call i32 @peer_set_state(%struct.fwtty_peer* %27, i32 %28)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %32 = call i32 @dev_set_drvdata(%struct.device* %30, %struct.fwtty_peer* %31)
  %33 = load %struct.fw_unit*, %struct.fw_unit** %5, align 8
  %34 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %35 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %34, i32 0, i32 6
  store %struct.fw_unit* %33, %struct.fw_unit** %35, align 8
  %36 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %37 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 32
  %42 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %43 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  %48 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %49 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %51 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %54 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %56 = call i32 @device_max_receive(%struct.fw_device* %55)
  %57 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %58 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @link_speed_to_max_payload(i32 %59)
  %61 = call i32 @min(i32 %56, i32 %60)
  %62 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %63 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %65 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  %67 = call i32 (...) @smp_rmb()
  %68 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %69 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %72 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 8
  %73 = call i32 (...) @smp_wmb()
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %76 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.fw_unit*, %struct.fw_unit** %5, align 8
  %78 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %9, i32 %79)
  br label %81

81:                                               ; preds = %98, %26
  %82 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %9, i32* %10, i32* %11)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @CSR_OFFSET, align 4
  %87 = load i32, i32* @CSR_DEPENDENT_INFO, align 4
  %88 = or i32 %86, %87
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 4, %92
  %94 = sext i32 %93 to i64
  %95 = add i64 %91, %94
  %96 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %97 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %99

98:                                               ; preds = %84
  br label %81

99:                                               ; preds = %90, %81
  %100 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %101 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %106 = load i32, i32* @FWPS_NO_MGMT_ADDR, align 4
  %107 = call i32 @peer_set_state(%struct.fwtty_peer* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %110 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %109, i32 0, i32 4
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %113 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %112, i32 0, i32 5
  store %struct.fwtty_port* null, %struct.fwtty_port** %113, align 8
  %114 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %115 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %114, i32 0, i32 10
  %116 = load i32, i32* @fwserial_plug_timeout, align 4
  %117 = call i32 @timer_setup(i32* %115, i32 %116, i32 0)
  %118 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %119 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %118, i32 0, i32 9
  %120 = load i32, i32* @fwserial_peer_workfn, align 4
  %121 = call i32 @INIT_WORK(i32* %119, i32 %120)
  %122 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %123 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %122, i32 0, i32 3
  %124 = load i32, i32* @fwserial_auto_connect, align 4
  %125 = call i32 @INIT_DELAYED_WORK(i32* %123, i32 %124)
  %126 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %127 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %128 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %127, i32 0, i32 8
  store %struct.fw_serial* %126, %struct.fw_serial** %128, align 8
  %129 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %130 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %129, i32 0, i32 7
  %131 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %132 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %131, i32 0, i32 1
  %133 = call i32 @list_add_rcu(i32* %130, i32* %132)
  %134 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %135 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %134, i32 0, i32 6
  %136 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %137 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = call i32 @fwtty_info(%struct.fw_unit** %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %139)
  %141 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %142 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %176

145:                                              ; preds = %108
  %146 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %147 = load %struct.fw_serial*, %struct.fw_serial** %4, align 8
  %148 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %147, i32 0, i32 0
  store %struct.fwtty_peer* %146, %struct.fwtty_peer** %148, align 8
  %149 = load i64, i64* @create_loop_dev, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %145
  %152 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %153 = load i32, i32* @num_ttys, align 4
  %154 = call %struct.fwtty_port* @fwserial_claim_port(%struct.fwtty_peer* %152, i32 %153)
  store %struct.fwtty_port* %154, %struct.fwtty_port** %13, align 8
  %155 = load %struct.fwtty_port*, %struct.fwtty_port** %13, align 8
  %156 = call i32 @IS_ERR(%struct.fwtty_port* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %151
  %159 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %160 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %159, i32 0, i32 4
  %161 = call i32 @spin_lock_bh(i32* %160)
  %162 = load %struct.fwtty_port*, %struct.fwtty_port** %13, align 8
  %163 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %164 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %163, i32 0, i32 5
  store %struct.fwtty_port* %162, %struct.fwtty_port** %164, align 8
  %165 = load %struct.fwtty_port*, %struct.fwtty_port** %13, align 8
  %166 = call i32 @fill_plug_params(%struct.virt_plug_params* %14, %struct.fwtty_port* %165)
  %167 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %168 = call i32 @fwserial_virt_plug_complete(%struct.fwtty_peer* %167, %struct.virt_plug_params* %14)
  %169 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %170 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %169, i32 0, i32 4
  %171 = call i32 @spin_unlock_bh(i32* %170)
  %172 = load %struct.fwtty_port*, %struct.fwtty_port** %13, align 8
  %173 = call i32 @fwtty_write_port_status(%struct.fwtty_port* %172)
  br label %174

174:                                              ; preds = %158, %151
  br label %175

175:                                              ; preds = %174, %145
  br label %184

176:                                              ; preds = %108
  %177 = load i64, i64* @auto_connect, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.fwtty_peer*, %struct.fwtty_peer** %8, align 8
  %181 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %180, i32 0, i32 3
  %182 = call i32 @schedule_delayed_work(i32* %181, i32 1)
  br label %183

183:                                              ; preds = %179, %176
  br label %184

184:                                              ; preds = %183, %175
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %23
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local %struct.fwtty_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fwtty_peer*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @device_max_receive(%struct.fw_device*) #1

declare dso_local i32 @link_speed_to_max_payload(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @fwtty_info(%struct.fw_unit**, i8*, i64) #1

declare dso_local %struct.fwtty_port* @fwserial_claim_port(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @IS_ERR(%struct.fwtty_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fill_plug_params(%struct.virt_plug_params*, %struct.fwtty_port*) #1

declare dso_local i32 @fwserial_virt_plug_complete(%struct.fwtty_peer*, %struct.virt_plug_params*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
