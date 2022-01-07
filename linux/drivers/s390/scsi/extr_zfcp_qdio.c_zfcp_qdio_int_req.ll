; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_qdio = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"qdireq1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @zfcp_qdio_int_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_int_req(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zfcp_qdio*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = inttoptr i64 %14 to %struct.zfcp_qdio*
  store %struct.zfcp_qdio* %15, %struct.zfcp_qdio** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %45

23:                                               ; preds = %6
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @zfcp_qdio_zero_sbals(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %31 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %34 = call i32 @zfcp_qdio_account(%struct.zfcp_qdio* %33)
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %40 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %39, i32 0, i32 1
  %41 = call i32 @atomic_add(i32 %38, i32* %40)
  %42 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %43 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %23, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio*, i8*, i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @zfcp_qdio_account(%struct.zfcp_qdio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
