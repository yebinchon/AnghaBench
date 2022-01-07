; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_gvp11_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_gvp11_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.gvp11_hostdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zorro_dev*)* @gvp11_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvp11_remove(%struct.zorro_dev* %0) #0 {
  %2 = alloca %struct.zorro_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.gvp11_hostdata*, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %2, align 8
  %5 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @zorro_get_drvdata(%struct.zorro_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.gvp11_hostdata* %8, %struct.gvp11_hostdata** %4, align 8
  %9 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %4, align 8
  %10 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @scsi_remove_host(%struct.Scsi_Host* %13)
  %15 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.Scsi_Host* %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = call i32 @scsi_host_put(%struct.Scsi_Host* %18)
  %20 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %21 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @release_mem_region(i32 %23, i32 256)
  ret void
}

declare dso_local %struct.Scsi_Host* @zorro_get_drvdata(%struct.zorro_dev*) #1

declare dso_local %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
