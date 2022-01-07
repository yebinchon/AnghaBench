; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, i32, %struct.zfcp_adapter* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_setup(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.zfcp_qdio* @kzalloc(i32 16, i32 %5)
  store %struct.zfcp_qdio* %6, %struct.zfcp_qdio** %4, align 8
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %8 = icmp ne %struct.zfcp_qdio* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 2
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %15, align 8
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %17 = call i64 @zfcp_qdio_allocate(%struct.zfcp_qdio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %21 = call i32 @kfree(%struct.zfcp_qdio* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %32 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %32, i32 0, i32 0
  store %struct.zfcp_qdio* %31, %struct.zfcp_qdio** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %24, %19, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.zfcp_qdio* @kzalloc(i32, i32) #1

declare dso_local i64 @zfcp_qdio_allocate(%struct.zfcp_qdio*) #1

declare dso_local i32 @kfree(%struct.zfcp_qdio*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
