; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.bfad_vport_s = type { i32, %struct.completion*, %struct.TYPE_4__, i32 }
%struct.completion = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.bfad_im_port_s = type { i32, %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_vport_s = type { i32 }

@BFAD_PORT_DELETE = common dso_local global i32 0, align 4
@VPCERR_BAD_WWN = common dso_local global i32 0, align 4
@BFA_STATUS_PBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @bfad_im_vport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.bfad_vport_s*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_fcs_vport_s*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.completion, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  %13 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %14 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfad_vport_s*
  store %struct.bfad_vport_s* %16, %struct.bfad_vport_s** %4, align 8
  %17 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = bitcast %struct.TYPE_3__* %20 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %21, %struct.bfad_im_port_s** %5, align 8
  %22 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %22, i32 0, i32 1
  %24 = load %struct.bfad_s*, %struct.bfad_s** %23, align 8
  store %struct.bfad_s* %24, %struct.bfad_s** %6, align 8
  %25 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %33 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %34 = call i32 @bfad_scsi_host_free(%struct.bfad_s* %32, %struct.bfad_im_port_s* %33)
  %35 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %39 = call i32 @kfree(%struct.bfad_vport_s* %38)
  store i32 0, i32* %2, align 4
  br label %116

40:                                               ; preds = %1
  %41 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %45, align 8
  store %struct.Scsi_Host* %46, %struct.Scsi_Host** %8, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %48 = call i32 @fc_host_port_name(%struct.Scsi_Host* %47)
  %49 = call i32 @u64_to_wwn(i32 %48, i32* %9)
  %50 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %51 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %54, i32 0, i32 1
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32* %55, i32 0, i32 %56)
  store %struct.bfa_fcs_vport_s* %57, %struct.bfa_fcs_vport_s** %7, align 8
  %58 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %59 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %58, i32 0, i32 0
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %7, align 8
  %63 = icmp eq %struct.bfa_fcs_vport_s* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = load i32, i32* @VPCERR_BAD_WWN, align 4
  store i32 %65, i32* %2, align 4
  br label %116

66:                                               ; preds = %40
  %67 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %68 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %69 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  %73 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %74 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %73, i32 0, i32 1
  store %struct.completion* %12, %struct.completion** %74, align 8
  %75 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %76 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %75, i32 0, i32 1
  %77 = load %struct.completion*, %struct.completion** %76, align 8
  %78 = call i32 @init_completion(%struct.completion* %77)
  %79 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %80 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %79, i32 0, i32 0
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %83, i32 0, i32 3
  %85 = call i32 @bfa_fcs_vport_delete(i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %87 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %86, i32 0, i32 0
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @BFA_STATUS_PBC, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %66
  %94 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %97 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %102 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %101, i32 0, i32 1
  store %struct.completion* null, %struct.completion** %102, align 8
  store i32 -1, i32* %2, align 4
  br label %116

103:                                              ; preds = %66
  %104 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %105 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %104, i32 0, i32 1
  %106 = load %struct.completion*, %struct.completion** %105, align 8
  %107 = call i32 @wait_for_completion(%struct.completion* %106)
  %108 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %109 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %110 = call i32 @bfad_scsi_host_free(%struct.bfad_s* %108, %struct.bfad_im_port_s* %109)
  %111 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %112 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %111, i32 0, i32 0
  %113 = call i32 @list_del(i32* %112)
  %114 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %115 = call i32 @kfree(%struct.bfad_vport_s* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %103, %93, %64, %31
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @bfad_scsi_host_free(%struct.bfad_s*, %struct.bfad_im_port_s*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.bfad_vport_s*) #1

declare dso_local i32 @u64_to_wwn(i32, i32*) #1

declare dso_local i32 @fc_host_port_name(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @bfa_fcs_vport_delete(i32*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
