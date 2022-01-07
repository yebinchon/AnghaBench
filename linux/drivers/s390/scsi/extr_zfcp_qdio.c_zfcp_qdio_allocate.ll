; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, i32 }
%struct.qdio_initialize = type { i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_qdio*)* @zfcp_qdio_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_qdio_allocate(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.qdio_initialize, align 4
  %5 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  %6 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %10 = call i32 @qdio_alloc_buffers(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %21 = call i32 @qdio_alloc_buffers(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %27 = call i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize* %4, %struct.zfcp_qdio* %26)
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 2
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = call i32 @qdio_allocate(%struct.qdio_initialize* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %49

36:                                               ; preds = %34
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %41 = call i32 @qdio_free_buffers(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %44 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %47 = call i32 @qdio_free_buffers(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %35, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @qdio_alloc_buffers(i32, i32) #1

declare dso_local i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize*, %struct.zfcp_qdio*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @qdio_allocate(%struct.qdio_initialize*) #1

declare dso_local i32 @qdio_free_buffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
