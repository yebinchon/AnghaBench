; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32 }
%struct.zfcp_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_unit* @zfcp_unit_find(%struct.zfcp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %6, i32 0, i32 0
  %8 = call i32 @read_lock_irq(i32* %7)
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.zfcp_unit* @_zfcp_unit_find(%struct.zfcp_port* %9, i32 %10)
  store %struct.zfcp_unit* %11, %struct.zfcp_unit** %5, align 8
  %12 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %12, i32 0, i32 0
  %14 = call i32 @read_unlock_irq(i32* %13)
  %15 = load %struct.zfcp_unit*, %struct.zfcp_unit** %5, align 8
  ret %struct.zfcp_unit* %15
}

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local %struct.zfcp_unit* @_zfcp_unit_find(%struct.zfcp_port*, i32) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
