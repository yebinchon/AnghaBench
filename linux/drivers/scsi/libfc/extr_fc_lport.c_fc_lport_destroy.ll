; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i32, i32)*, i32 (%struct.fc_lport.1*)*, i32 (%struct.fc_lport.2*)*, i32 }
%struct.fc_lport.0 = type opaque
%struct.fc_lport.1 = type opaque
%struct.fc_lport.2 = type opaque

@LPORT_ST_DISABLED = common dso_local global i32 0, align 4
@fc_frame_drop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_lport_destroy(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @LPORT_ST_DISABLED, align 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @fc_frame_drop, align 4
  %12 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %13 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32 (%struct.fc_lport.2*)*, i32 (%struct.fc_lport.2*)** %20, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %23 = bitcast %struct.fc_lport* %22 to %struct.fc_lport.2*
  %24 = call i32 %21(%struct.fc_lport.2* %23)
  %25 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.fc_lport.1*)*, i32 (%struct.fc_lport.1*)** %27, align 8
  %29 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %30 = bitcast %struct.fc_lport* %29 to %struct.fc_lport.1*
  %31 = call i32 %28(%struct.fc_lport.1* %30)
  %32 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.fc_lport.0*, i32, i32)*, i32 (%struct.fc_lport.0*, i32, i32)** %34, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %37 = bitcast %struct.fc_lport* %36 to %struct.fc_lport.0*
  %38 = call i32 %35(%struct.fc_lport.0* %37, i32 0, i32 0)
  %39 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 0
  %41 = call i32 @cancel_delayed_work_sync(i32* %40)
  %42 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %43 = call i32 @fc_fc4_del_lport(%struct.fc_lport* %42)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @fc_fc4_del_lport(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
