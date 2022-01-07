; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_frame_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_frame_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"libfc: Could not allocate frame, reducing can_queue to %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_frame* (%struct.fc_lport*, i64)* @fc_fcp_frame_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_frame* @fc_fcp_frame_alloc(%struct.fc_lport* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_frame*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fc_frame*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %7, i64 %8)
  store %struct.fc_frame* %9, %struct.fc_frame** %6, align 8
  %10 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %11 = call i64 @likely(%struct.fc_frame* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  store %struct.fc_frame* %14, %struct.fc_frame** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (...) @get_cpu()
  %20 = call %struct.TYPE_4__* @per_cpu_ptr(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @put_cpu()
  %25 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %26 = call i32 @fc_fcp_can_queue_ramp_down(%struct.fc_lport* %25)
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @shost_printk(i32 %27, %struct.TYPE_3__* %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %35)
  store %struct.fc_frame* null, %struct.fc_frame** %3, align 8
  br label %37

37:                                               ; preds = %15, %13
  %38 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  ret %struct.fc_frame* %38
}

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i64) #1

declare dso_local i64 @likely(%struct.fc_frame*) #1

declare dso_local %struct.TYPE_4__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @fc_fcp_can_queue_ramp_down(%struct.fc_lport*) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
